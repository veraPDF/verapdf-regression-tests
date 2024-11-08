<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- File: Quick-Reference-Guide-Graphic-Designer-acessible.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '6')">Failed check, Expected: 6</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '1.4.10' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '1.3.1' and @testNumber = '3' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '3') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            1.4.10-1, 1 check, or 
            1.3.1-3, 2 checks, or 
            4.1.2-5, 1 check, or 
            4.1.2-10, 1 check, or 
            1.3.1-4, 3 checks, or 
            1.4.3-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
