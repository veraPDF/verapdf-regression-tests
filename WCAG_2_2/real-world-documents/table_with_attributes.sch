<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    
    <!-- File: table_with_attributes.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '7')">Failed check, Expected: 7</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '19') or 
            (@clause = '4.1.2' and @testNumber = '15' and @failedChecks = '1') or 
            (@clause = '7.21.4.1' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '39' and @failedChecks = '5') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '3') or 
            (@clause = '4.1.2' and @testNumber = '43' and @failedChecks = '1') or 
            (@clause = '7.5' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            1.3.1-2, 19 checks, or 
            4.1.2-15, 1 check, or 
            7.21.4.1-1, 2 checks, or 
            4.1.2-39, 5 checks, or 
            1.4.3-1, 3 checks, or 
            4.1.2-43, 1 check, or 
            7.5-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
