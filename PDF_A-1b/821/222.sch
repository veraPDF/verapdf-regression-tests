<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- Issue# 821 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/821 -->
    <!-- File: 222.pdf -->

    <sch:pattern name = "Checking the taskException">
        <sch:rule context="/report/jobs/job/taskException">
            <sch:assert test='contains(exceptionMessage, "Exception: Caught unexpected exception during parsing caused by exception: XRef loop")'>
                Failed check, Expected Error: Exception: Caught unexpected exception during parsing caused by exception: XRef loop
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the batchSummary">
        <sch:rule context="/report/batchSummary">
            <sch:assert test="(@totalJobs = '1' and @failedToParse = '0' and @encrypted = '0' and @outOfMemory = '0' and @veraExceptions = '1')">
                Failed check, Expected: totalJobs = '1' failedToParse = '0' encrypted = '0' outOfMemory = '0' veraExceptions = '1'
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., ".pdf doesn&apos;t appear to be a valid PDF.") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: 222.pdf doesn't appear to be a valid PDF.' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
