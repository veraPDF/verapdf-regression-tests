<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- File: PDFUA-Ref-2-05_BookChapter-german.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '4')">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '49') or 
            (@clause = '2.4.9' and @testNumber = '1' and @failedChecks = '23') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '22') or 
            (@clause = '4.1.2' and @testNumber = '20' and @failedChecks = '1')">Failed rules, Expected: 
            1.3.1-4, 49 checks, or 
            2.4.9-1, 23 checks, or 
            1.3.1-2, 22 checks, or 
            4.1.2-20, 1 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
