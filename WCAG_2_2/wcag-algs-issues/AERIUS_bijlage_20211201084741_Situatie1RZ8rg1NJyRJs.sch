<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 129 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/129 -->
    <!-- File: AERIUS_bijlage_20211201084741_Situatie1RZ8rg1NJyRJs.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '12')">Failed check, Expected: 12</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '1.4.8' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '5759') or 
            (@clause = '7.1' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '2.4.9' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = '7.2' and @testNumber = '30' and @failedChecks = '280') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '11' and @failedChecks = '1') or
            (@clause = '7.21.7' and @testNumber = '2' and @failedChecks = '2') or 
            (@clause = '7.18.5' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '6') or 
            (@clause = '7.18.3' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '7.2' and @testNumber = '34' and @failedChecks = '3146')">Failed rules, Expected: 
            1.4.8-1, 1 check, or 
            7.1-3, 5759 checks, or 
            7.1-8, 1 check, or 
            2.4.9-1, 6 checks, or 
            7.2-30, 280 checks, or 
            7.1-10, 1 check, or 
            7.1-11, 1 check, or
            7.21.7-2, 2 checks, or 
            7.18.5-1, 6 checks, or 
            7.18.1-2, 6 checks, or 
            7.18.3-1, 2 checks, or 
            7.2-34, 3146 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
