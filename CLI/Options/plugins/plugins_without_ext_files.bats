setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    load "$PROJECT_ROOT/tools/test_helper/html_helper.bash"
    _common_setup
    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $FILE_PATH/veraPDF_MF3.pdf $BATS_TEST_TMPDIR

    cd $BATS_TEST_TMPDIR

    LAST_BUILD=$(get_last_plugins_version "1.28rc")

}

@test '— fontSample-plugin(Font Sample) check' {
    plugin_version=$(get_plugin_version "fontSample-plugin")
    assert_equal $plugin_version $LAST_BUILD

    #Enabling "Font Sample" plugin, file plugins.xml, line № 25
    sed -i '25 c\  <plugin enabled="true">' ./config/plugins.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.pdf --extract font

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="Font Sample"'
    assert_output --partial '<fontName>DAAAAA+LiberationSans-Bold</fontName>'
    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.zip --extract font

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="Font Sample"'
}

@test '— fontType-plugin(Font Type Sample) check' {
    plugin_version=$(get_plugin_version "fontType-plugin")
    assert_equal $plugin_version $LAST_BUILD

    #Enabling "fontType-plugin" plugin, file plugins.xml, line № 31
    sed -i '31 c\  <plugin enabled="true">' ./config/plugins.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.pdf --extract font

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="Font Type Sample"'
    assert_output --partial '<fontTypeFromFile>TrueType</fontTypeFromFile>'
    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.zip --extract font

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="Font Type Sample"'
}

@test '— embeddedfileSample-plugin(Embedded File Sample) check' {
    plugin_version=$(get_plugin_version "fontType-plugin")
    assert_equal $plugin_version $LAST_BUILD

    #Enabling "Embedded File Sample" plugin, file plugins.xml, line № 37
    sed -i '37 c\  <plugin enabled="true">' ./config/plugins.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.pdf --extract embeddedFile

    [ "$status" -eq 0 ]
    assert_output --partial 'pluginFeatures name="Embedded File Sample"'
    assert_output --partial '<description>Invoice metadata conforming to ZUGFeRD standard (http://www.ferd-net.de/front_content.php?idcat=231&amp;lang=4)</description>'
    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.zip --extract embeddedFile

    [ "$status" -eq 0 ]
    assert_output --partial 'pluginFeatures name="Embedded File Sample"'
}

@test '— iccprofileSample-plugin(ICC Profile Sample) check' {
    plugin_version=$(get_plugin_version "iccprofileSample-plugin")
    assert_equal $plugin_version $LAST_BUILD

    #Enabling "iccprofileSample-plugin" plugin, file plugins.xml, line № 49
    sed -i '49 c\  <plugin enabled="true">' ./config/plugins.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.pdf --extract iccProfile

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="ICC Profile Sample"'
    assert_output --partial '<nValue>3</nValue>'
    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.zip --extract iccProfile

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="ICC Profile Sample"'
}

@test '— imageSample-plugin(Image Sample) check' {
    plugin_version=$(get_plugin_version "imageSample-plugin")
    assert_equal $plugin_version $LAST_BUILD

    #Enabling "imageSample-plugin" plugin, file plugins.xml, line № 55
    sed -i '55 c\  <plugin enabled="true">' ./config/plugins.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.pdf --extract imageXobject

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="Image Sample"'
    assert_output --partial '<width>1476</width>'
    assert_output --partial '<height>1476</height>'
    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.zip --extract imageXobject

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="Image Sample"'
}

@test '— metsMetadata-plugin(METS metadata extraction Sample) check' {
    plugin_verion=$(get_plugin_version "metsMetadata-plugin")
    assert_equal $plugin_verion $LAST_BUILD

    #Enabling "metsMetadata-plugin" plugin, file plugins.xml, line № 73
    sed -i '73 c\  <plugin enabled="true">' ./config/plugins.xml

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.pdf --extract metadata

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="METS metadata extraction Sample"'
    assert_output --regexp "veraPDF_METS_Plugin_out[0-9]*.xml"
    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'

    run $BATS_TEST_TMPDIR/verapdf $FILE_PATH/Mustang_505.zip --extract metadata

    [ "$status" -eq 0 ]
    assert_output --partial '<pluginFeatures name="METS metadata extraction Sample"'
}
