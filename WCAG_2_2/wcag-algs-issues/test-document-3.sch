<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issues# 89, 109 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/109 -->
	 <!--https://github.com/veraPDF/veraPDF-wcag-algs/issues/89 -->
    <!-- File: test-document-3.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '13')">Failed check, Expected: 13</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '4') or 
            (@clause = '4.1.2' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '4.1.2' and @testNumber = '9' and @failedChecks = '5') or
            (@clause = '4.1.2' and @testNumber = '10' and @failedChecks = '1') or
            (@clause = '4.1.2' and @testNumber = '52' and @failedChecks = '2') or
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '12') or 
            (@clause = '7.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '22' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '21' and @failedChecks = '5') or 
            (@clause = '4.1.2' and @testNumber = '23' and @failedChecks = '1') or 
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '19') or 
            (@clause = '7.18.3' and @testNumber = '1' and @failedChecks = '8') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1')">Failed rules, Expected: 
            1.3.1-2, 4 checks, or 
            4.1.2-1, 1 check, or
            4.1.2-9, 5 checks, or
            4.1.2-10, 1 check, or
            4.1.2-52, 2 checks, or
            1.3.1-4, 12 checks, or 
            7.3-1, 1 check, or 
            4.1.2-22, 1 check, or 
            4.1.2-21, 5 checks, or 
            4.1.2-23, 1 check, or 
            7.18.1-2, 19 checks, or 
            7.18.3-1, 8 checks, or 
            7.1-10, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
