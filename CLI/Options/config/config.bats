#!/usr/bin/env bats
FILES_TO_CHECK=(
    "TestList.pdf"
    "TestList.zip")

PLUGIN_FILES_TO_CHECK=(
    "Mustang_505.pdf"
    "Mustang_505.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    load "$PROJECT_ROOT/tools/test_helper/html_helper.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR

    cd $BATS_TEST_TMPDIR
    VERAPDF_FOLDER=1.28rc
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
    assert [ ${#PLUGIN_FILES_TO_CHECK[@]} != 0 ]
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. app.xml check" {

    for file in "${FILES_TO_CHECK[@]}"; do
        config_app_xml_check $file
    done
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. features.xml check" {

    for file in "${FILES_TO_CHECK[@]}"; do
        config_app_features_check $file
    done
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. fixer.xml check" {

    for file in "${FILES_TO_CHECK[@]}"; do
        config_app_fixer_check $file
    done

}

@test "--config, Sets settings from the config files, if no cli parameters are specified. plugins.xml check" {

    for file in "${PLUGIN_FILES_TO_CHECK[@]}"; do
        config_app_plugins_check $file
    done
}

@test "--config, Sets settings from the config files, if no cli parameters are specified. validator.xml check" {

    for file in "${FILES_TO_CHECK[@]}"; do
        config_app_validator_check $file
    done
}

config_app_xml_check() {
    echo "Running: $1" >&3
    cp -r $BATS_TEST_DIRNAME/config_app/app* $BATS_TEST_TMPDIR/config/

    # update app.xml with a path to a policy file
    sed -i "5 c\    <policyFile>$BATS_TEST_DIRNAME/TestList.sch</policyFile>" $BATS_TEST_TMPDIR/config/app.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/$1 --config
    assert_output --partial '<policyReport passedChecks="0" failedChecks="0" xmlns:vera="http://www.verapdf.org/MachineReadableReport">'
    [ "$status" -eq 0 ]
}

config_app_features_check() {
    echo "Running: $1" >&3
    cp -r $BATS_TEST_DIRNAME/config_features/app* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_features/features* $BATS_TEST_TMPDIR/config/

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/$1 --config

    assert_output --partial '<informationDict>'
    assert_output --partial '<entry key="Author">Tassadar</entry>'
    assert_output --partial '<entry key="Creator">Microsoft Office Word</entry>'
    assert_output --partial '<entry key="Producer">Aspose.Words for .NET 17.4.0.0</entry>'
    assert_output --partial '<entry key="CreationDate">2017-04-08T10:44:00.000Z</entry>'
    assert_output --partial '<entry key="ModDate">2017-04-08T10:54:00.000Z</entry>'
    assert_output --partial '</informationDict>'
    [ "$status" -eq 0 ]
}

config_app_plugins_check() {
    echo "Running: $1" >&3
    local LAST_BUILD=$(get_last_plugins_version $VERAPDF_FOLDER)
    plugin_version=$(get_plugin_version "fontSample-plugin")
    assert_equal $LAST_BUILD $plugin_version

    cp -r $BATS_TEST_DIRNAME/config_plugins/app* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_plugins/features* $BATS_TEST_TMPDIR/config/

    #Enabling "Font Sample" plugin, file plugins.xml, line № 25
    sed -i '25 c\  <plugin enabled="true">' ./config/plugins.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/$1 --config
    assert_output --partial '<pluginFeatures name="Font Sample"'
    assert_output --partial '<fontName>DAAAAA+LiberationSans-Bold</fontName>'
    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'
    [ "$status" -eq 0 ]
}

config_app_validator_check() {
    echo "Running: $1" >&3
    cp -r $BATS_TEST_DIRNAME/config_validator/app* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_validator/validator* $BATS_TEST_TMPDIR/config/

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/$1 --config
    assert_output --partial 'profileName="PDF/UA-1 validation profile"'
    [ "$status" -eq 1 ]
}

config_app_fixer_check() {
    echo "Running: $1" >&3

    cp -r $BATS_TEST_DIRNAME/config_fixer/app* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_fixer/validator* $BATS_TEST_TMPDIR/config/
    cp -r $BATS_TEST_DIRNAME/config_fixer/fixer* $BATS_TEST_TMPDIR/config/
    cp -r $FILE_PATH/TestList.zip $BATS_TEST_TMPDIR/

    run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/TestList.zip --config --savefolder $BATS_TEST_TMPDIR

    [ "$status" -eq 1 ]
    assert_output --partial "<fix>Set property 'part' value to '2' in Identification schema</fix>"
    assert_output --partial '<fix>Set new modification date to metadata</fix>'
    assert_output --partial '<fix>Set new modification date to info dictionary</fix>'
    assert_output --partial '<fix>Metadata stream filtered with FlateDecode</fix>'

    FILE=$BATS_TEST_TMPDIR/veraFixMd_to_check_TestList.pdf
    assert [ -f "$FILE" ] # Check if File exists
}
