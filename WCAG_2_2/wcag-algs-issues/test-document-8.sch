<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 79 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/79 -->
    <!-- File: test-document-8.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '19')">Failed check, Expected: 19</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '4.1.2' and @testNumber = '21' and @failedChecks = '15') or
            (@clause = '4.1.2' and @testNumber = '10' and @failedChecks = '9') or
            (@clause = '7.21.4.2' and @testNumber = '1' and @failedChecks = '22') or
            (@clause = '4.1.1' and @testNumber = '2' and @failedChecks = '2') or
            (@clause = '1.3.1' and @testNumber = '3' and @failedChecks = '4') or
            (@clause = '1.4.10' and @testNumber = '1' and @failedChecks = '11') or
            (@clause = '7.9' and @testNumber = '1' and @failedChecks = '7') or
            (@clause = '4.1.1' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '7.10' and @testNumber = '2' and @failedChecks = '1') or
            (@clause = '1.4.4' and @testNumber = '1' and @failedChecks = '2') or
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '155') or
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '1746') or
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '6') or
            (@clause = '4.1.2' and @testNumber = '1' and @failedChecks = '3') or
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '16') or
            (@clause = '7.21.4.2' and @testNumber = '2' and @failedChecks = '1') or
            (@clause = '4.1.2' and @testNumber = '48' and @failedChecks = '24') or
            (@clause = '7.21.3.2' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '7.10' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected:
            4.1.2-21, 15 checks, or
            4.1.2-10, 9 checks, or
            7.21.4.2-1, 22 checks, or
            4.1.1-2, 2 checks, or
            1.3.1-3, 4 checks, or
            1.4.10-1, 11 checks, or
            7.9-1, 7 checks, or
            4.1.1-1, 1 check, or
            7.10-2, 1 check, or
            1.4.4-1, 2 check, or
            4.1.2-41, 1 check, or
            1.3.1-4, 155 checks, or
            7.1-3, 1746 checks, or
            4.1.2-44, 1 check, or
            1.3.1-2, 6 checks, or
            4.1.2-1, 3 checks, or
            7.21.4.2-2, 1 check, or
            7.18.1-2, 16 checks, or
            4.1.2-48, 24 checks, or
            7.21.3.2-1, 1 check, or
            7.10-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '162'">Failed check, Expected: 162</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Duplicate MCID") and @level = "WARNING") or 
            (contains(., "Nested MCID") and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Content stream contains duplicate MCID', or 
            'WARNING: Content stream contains nested MCID'</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
