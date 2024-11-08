<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    
    <!-- File: PDF_ADA_Standards.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '8')">Failed check, Expected: 8</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '20' and @failedChecks = '5') or 
            (@clause = '4.1.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '9' and @failedChecks = '1') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '12') or 
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '3') or 
            (@clause = '7.21.4.1' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '13')">Failed rules, Expected: 
            7.1-10, 1 check, or 
            4.1.2-20, 5 checks, or 
            4.1.2-1, 1 check, or 
            7.1-9, 1 check, or 
            1.3.1-2, 12 checks, or
            7.18.1-2, 3 checks, or 
            7.21.4.1-1, 4 checks, or 
            1.3.1-4, 13 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
