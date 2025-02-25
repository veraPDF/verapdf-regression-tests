<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1414 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1414 -->
    <!-- File: ua1pdfa2u.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="((@isCompliant = 'false' and contains(@profileName,'PDF/A-2U')) or 
            (@isCompliant = 'true' and contains(@profileName,'PDF/UA-1')))">Failed check, 
            Expected: PDF/A-2U, isCompliant=false or PDF/UA-1, isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '1' or @failedRules = '0')">Failed check, Expected: 1 or 0</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2.4.3' and @testNumber = '2' and @failedChecks = '16')">Failed rules, Expected: 
            6.2.4.3-2, 16 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
