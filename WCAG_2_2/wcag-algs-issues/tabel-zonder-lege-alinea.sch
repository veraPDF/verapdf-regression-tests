<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 88 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/88 -->
    <!-- File: tabel-zonder-lege-alinea.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '5')">Failed check, Expected: 3</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '7.1' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = '7.1' and @testNumber = '2' and @failedChecks = '4') or 
            (@clause = '7.2' and @testNumber = '10' and @failedChecks = '4') or 
            (@clause = '7.1' and @testNumber = '7' and @failedChecks = '4') or 
            (@clause = '4.1.2' and @testNumber = '20' and @failedChecks = '1')">Failed rules, Expected: 
            7.1-1, 4 checks, or 
            7.1-2, 4 checks, or             
            7.2-10, 4 checks, or 
            7.1-7, 4 checks, or 
            4.1.2-20, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
