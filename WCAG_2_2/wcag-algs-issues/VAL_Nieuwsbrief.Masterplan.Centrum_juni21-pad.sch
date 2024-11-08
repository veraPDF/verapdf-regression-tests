<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 120 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/120 -->
    <!-- File: VAL_Nieuwsbrief.Masterplan.Centrum_juni21-pad.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '5')">Failed check, Expected: 5</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '4.1.2' and @testNumber = '15' and @failedChecks = '5') or
            (@clause = '4.1.2' and @testNumber = '16' and @failedChecks = '13') or 
            (@clause = '4.1.2' and @testNumber = '19' and @failedChecks = '5') or 
            (@clause = '4.1.2' and @testNumber = '5' and @failedChecks = '6') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            4.1.2-15, 5 checks, or
            4.1.2-16, 13 checks, or 
            4.1.2-19, 5 checks, or 
            4.1.2-5, 6 checks, or 
            1.4.3-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
