<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

   
    <!-- File: Pexip_Infinity_CUCM_Deployment_Guide_v28.a.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '10')">Failed check, Expected: 10</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '4.1.2' and @testNumber = '28' and @failedChecks = '8') or 
            (@clause = '4.1.2' and @testNumber = '10' and @failedChecks = '11') or
            (@clause = '4.1.2' and @testNumber = '35' and @failedChecks = '4') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '2') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '116') or 
            (@clause = '4.1.2' and @testNumber = '22' and @failedChecks = '11') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '21') or 
            (@clause = '7.2' and @testNumber = '20' and @failedChecks = '15') or 
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '11') or 
            (@clause = '1.3.1' and @testNumber = '3' and @failedChecks = '1')">Failed rules, Expected: 
            4.1.2-28, 8 checks, or 
            4.1.2-10, 11 checks, or
            4.1.2-35, 4 checks, or 
            1.3.1-2, 2 checks, or 
            1.3.1-4, 116 checks, or 
            4.1.2-22, 11 checks, or 
            1.4.3-1, 21 checks, or 
            7.18.1-2, 11 checks, or 
            7.2-20, 15 checks, or 
            1.3.1-3, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
