<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: transitionaltag_div_test.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '1630')">Failed check, Expected: 1630</sch:assert>	
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'CosDocument' or
            (@clause = '8.11.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.11.2-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDDocument' or
            (@clause = '8.4.4' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.4.4-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDFont' or
            (@clause = '8.4.5.5.1' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.4.5.5.1-1, 114 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDStructElem' or
            (@clause = '8.2.5.27' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.2.5.27-1, 114 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDStructTreeRoot' or
            (@clause = '8.2.5.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'StructTreeRoot-Document' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.2-1, 1 check, or 
            StructTreeRoot-Document-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAnnot' or
            (@clause = 'Form-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Annot' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Annot' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Form-Annot-1, 2 checks, or 
            L-Annot-1, 2 checks, or 
            LI-Annot-1, 2 checks, or 
            Ruby-Annot-1, 2 checks, or 
            StructTreeRoot-Annot-1, 7 checks, or 
            TBody-Annot-1, 2 checks, or 
            TFoot-Annot-1, 2 checks, or 
            THead-Annot-1, 2 checks, or 
            TOC-Annot-1, 2 checks, or 
            TOCI-Annot-1, 2 checks, or 
            TR-Annot-1, 2 checks, or 
            Table-Annot-1, 2 checks, or 
            Warichu-Annot-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEArt' or
            (@clause = 'Art-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'BibEntry-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Art' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Art' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Art-Art-1, 2 checks, or 
            Art-H-1, 1 check, or 
            BibEntry-Art-1, 2 checks, or 
            Code-Art-1, 2 checks, or 
            Em-Art-1, 2 checks, or 
            Form-Art-1, 2 checks, or 
            Formula-Art-1, 2 checks, or 
            Index-Art-1, 2 checks, or 
            L-Art-1, 2 checks, or 
            LI-Art-1, 2 checks, or 
            Lbl-Art-1, 2 checks, or 
            P-Art-1, 2 checks, or 
            Quote-Art-1, 2 checks, or 
            RB-Art-1, 2 checks, or 
            RP-Art-1, 2 checks, or 
            RT-Art-1, 2 checks, or 
            Reference-Art-1, 2 checks, or 
            Ruby-Art-1, 2 checks, or 
            Span-Art-1, 2 checks, or 
            Strong-Art-1, 2 checks, or 
            StructTreeRoot-Art-1, 7 checks, or 
            Sub-Art-1, 2 checks, or 
            TBody-Art-1, 2 checks, or 
            TFoot-Art-1, 2 checks, or 
            THead-Art-1, 2 checks, or 
            TOC-Art-1, 2 checks, or 
            TOCI-Art-1, 2 checks, or 
            TR-Art-1, 2 checks, or 
            Table-Art-1, 2 checks, or 
            Title-Art-1, 2 checks, or 
            WP-Art-1, 2 checks, or 
            WT-Art-1, 2 checks, or 
            Warichu-Art-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEArtifact' or
            (@clause = 'Artifact-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Artifact-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Ruby-Artifact' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Artifact' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Warichu-Artifact' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Artifact-Caption-1, 1 check, or 
            Artifact-H-1, 1 check, or 
            Ruby-Artifact-1, 2 checks, or 
            StructTreeRoot-Artifact-1, 7 checks, or 
            Warichu-Artifact-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAside' or
            (@clause = 'Aside-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Aside-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'BibEntry-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-Aside' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Aside' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Aside' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Aside-Aside-1, 2 checks, or 
            Aside-Caption-1, 1 check, or 
            Aside-H-1, 1 check, or 
            BibEntry-Aside-1, 2 checks, or 
            BlockQuote-Aside-1, 2 checks, or 
            Code-Aside-1, 2 checks, or 
            Em-Aside-1, 2 checks, or 
            Form-Aside-1, 2 checks, or 
            H-Aside-1, 2 checks, or 
            Hn-Aside-1, 12 checks, or 
            Index-Aside-1, 2 checks, or 
            L-Aside-1, 2 checks, or 
            LI-Aside-1, 2 checks, or 
            Lbl-Aside-1, 2 checks, or 
            P-Aside-1, 2 checks, or 
            Quote-Aside-1, 2 checks, or 
            RB-Aside-1, 2 checks, or 
            RP-Aside-1, 2 checks, or 
            RT-Aside-1, 2 checks, or 
            Reference-Aside-1, 2 checks, or 
            Ruby-Aside-1, 2 checks, or 
            Span-Aside-1, 2 checks, or 
            Strong-Aside-1, 2 checks, or 
            StructTreeRoot-Aside-1, 7 checks, or 
            Sub-Aside-1, 2 checks, or 
            TBody-Aside-1, 2 checks, or 
            TD-Aside-1, 2 checks, or 
            TFoot-Aside-1, 2 checks, or 
            TH-Aside-1, 2 checks, or 
            THead-Aside-1, 2 checks, or 
            TOC-Aside-1, 2 checks, or 
            TOCI-Aside-1, 2 checks, or 
            TR-Aside-1, 2 checks, or 
            Table-Aside-1, 2 checks, or 
            WP-Aside-1, 2 checks, or 
            WT-Aside-1, 2 checks, or 
            Warichu-Aside-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEBibEntry' or
            (@clause = 'Art-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-BibEntry' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-BibEntry' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Art-BibEntry-1, 2 checks, or 
            Aside-BibEntry-1, 2 checks, or 
            BibEntry-BibEntry-1, 2 checks, or 
            BlockQuote-BibEntry-1, 2 checks, or 
            Document-BibEntry-1, 2 checks, or 
            DocumentFragment-BibEntry-1, 2 checks, or 
            FENote-BibEntry-1, 2 checks, or 
            Index-BibEntry-1, 2 checks, or 
            L-BibEntry-1, 2 checks, or 
            LI-BibEntry-1, 2 checks, or 
            RB-BibEntry-1, 2 checks, or 
            RP-BibEntry-1, 2 checks, or 
            RT-BibEntry-1, 2 checks, or 
            Ruby-BibEntry-1, 2 checks, or 
            Sect-BibEntry-1, 2 checks, or 
            StructTreeRoot-BibEntry-1, 7 checks, or 
            TBody-BibEntry-1, 2 checks, or 
            TFoot-BibEntry-1, 2 checks, or 
            THead-BibEntry-1, 2 checks, or 
            TOC-BibEntry-1, 2 checks, or 
            TOCI-BibEntry-1, 2 checks, or 
            TR-BibEntry-1, 2 checks, or 
            Table-BibEntry-1, 2 checks, or 
            WP-BibEntry-1, 2 checks, or 
            WT-BibEntry-1, 2 checks, or 
            Warichu-BibEntry-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEBlockQuote' or
            (@clause = 'BibEntry-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'BlockQuote-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Code-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-BlockQuote' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-BlockQuote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-BlockQuote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-BlockQuote-1, 2 checks, or 
            BlockQuote-Caption-1, 1 check, or 
            BlockQuote-H-1, 1 check, or 
            Code-BlockQuote-1, 2 checks, or 
            Em-BlockQuote-1, 2 checks, or 
            Form-BlockQuote-1, 2 checks, or 
            H-BlockQuote-1, 2 checks, or 
            Hn-BlockQuote-1, 12 checks, or 
            Index-BlockQuote-1, 2 checks, or 
            L-BlockQuote-1, 2 checks, or 
            LI-BlockQuote-1, 2 checks, or 
            Lbl-BlockQuote-1, 2 checks, or 
            P-BlockQuote-1, 2 checks, or 
            Quote-BlockQuote-1, 2 checks, or 
            RB-BlockQuote-1, 2 checks, or 
            RP-BlockQuote-1, 2 checks, or 
            RT-BlockQuote-1, 2 checks, or 
            Reference-BlockQuote-1, 2 checks, or 
            Ruby-BlockQuote-1, 2 checks, or 
            Span-BlockQuote-1, 2 checks, or 
            Strong-BlockQuote-1, 2 checks, or 
            StructTreeRoot-BlockQuote-1, 7 checks, or 
            Sub-BlockQuote-1, 2 checks, or 
            TBody-BlockQuote-1, 2 checks, or 
            TD-BlockQuote-1, 2 checks, or 
            TFoot-BlockQuote-1, 2 checks, or 
            TH-BlockQuote-1, 2 checks, or 
            THead-BlockQuote-1, 2 checks, or 
            TOC-BlockQuote-1, 2 checks, or 
            TOCI-BlockQuote-1, 2 checks, or 
            TR-BlockQuote-1, 2 checks, or 
            Table-BlockQuote-1, 2 checks, or 
            Title-BlockQuote-1, 2 checks, or 
            WP-BlockQuote-1, 2 checks, or 
            WT-BlockQuote-1, 2 checks, or 
            Warichu-BlockQuote-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SECaption' or
            (@clause = 'BibEntry-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Code-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-Caption' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'LI-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Caption' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Caption' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-Caption-1, 2 checks, or 
            Caption-Caption-1, 2 checks, or 
            Caption-H-1, 1 check, or 
            Code-Caption-1, 2 checks, or 
            Document-Caption-1, 2 checks, or 
            DocumentFragment-Caption-1, 2 checks, or 
            Em-Caption-1, 2 checks, or 
            H-Caption-1, 2 checks, or 
            Hn-Caption-1, 12 checks, or 
            LI-Caption-1, 2 checks, or 
            Lbl-Caption-1, 2 checks, or 
            P-Caption-1, 2 checks, or 
            Quote-Caption-1, 2 checks, or 
            RB-Caption-1, 2 checks, or 
            RP-Caption-1, 2 checks, or 
            RT-Caption-1, 2 checks, or 
            Reference-Caption-1, 2 checks, or 
            Ruby-Caption-1, 2 checks, or 
            Span-Caption-1, 2 checks, or 
            Strong-Caption-1, 2 checks, or 
            StructTreeRoot-Caption-1, 7 checks, or 
            Sub-Caption-1, 2 checks, or 
            TBody-Caption-1, 2 checks, or 
            TD-Caption-1, 2 checks, or 
            TFoot-Caption-1, 2 checks, or 
            TH-Caption-1, 2 checks, or 
            THead-Caption-1, 2 checks, or 
            TOCI-Caption-1, 2 checks, or 
            TR-Caption-1, 2 checks, or 
            WP-Caption-1, 2 checks, or 
            WT-Caption-1, 2 checks, or 
            Warichu-Caption-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SECode' or
            (@clause = 'BibEntry-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Code' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Code' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-Code-1, 2 checks, or 
            Code-Code-1, 2 checks, or 
            Index-Code-1, 2 checks, or 
            L-Code-1, 2 checks, or 
            LI-Code-1, 2 checks, or 
            RB-Code-1, 2 checks, or 
            RP-Code-1, 2 checks, or 
            RT-Code-1, 2 checks, or 
            Reference-Code-1, 2 checks, or 
            Ruby-Code-1, 2 checks, or 
            StructTreeRoot-Code-1, 7 checks, or 
            TBody-Code-1, 2 checks, or 
            TFoot-Code-1, 2 checks, or 
            THead-Code-1, 2 checks, or 
            TOC-Code-1, 2 checks, or 
            TOCI-Code-1, 2 checks, or 
            TR-Code-1, 2 checks, or 
            Table-Code-1, 2 checks, or 
            WP-Code-1, 2 checks, or 
            WT-Code-1, 2 checks, or 
            Warichu-Code-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDiv' or
            (@clause = 'Em-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'H-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Hn-Div' and @testNumber = '1' and @failedChecks = '24') or 
            (@clause = 'L-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Lbl-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'P-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Quote-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'RB-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'RP-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'RT-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Reference-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Ruby-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Span-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Strong-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'StructTreeRoot-Div' and @testNumber = '1' and @failedChecks = '13') or 
            (@clause = 'Sub-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'TBody-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'TFoot-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'THead-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'TOC-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'TR-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'WP-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'WT-Div' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Warichu-Div' and @testNumber = '1' and @failedChecks = '4')">Failed rules, Expected: 
            Em-Div-1, 4 checks, or 
            H-Div-1, 4 checks, or 
            Hn-Div-1, 24 checks, or 
            L-Div-1, 4 checks, or 
            Lbl-Div-1, 4 checks, or 
            P-Div-1, 4 checks, or 
            Quote-Div-1, 4 checks, or 
            RB-Div-1, 4 checks, or 
            RP-Div-1, 4 checks, or 
            RT-Div-1, 4 checks, or 
            Reference-Div-1, 4 checks, or 
            Ruby-Div-1, 4 checks, or 
            Span-Div-1, 4 checks, or 
            Strong-Div-1, 4 checks, or 
            StructTreeRoot-Div-1, 13 checks, or 
            Sub-Div-1, 4 checks, or 
            TBody-Div-1, 4 checks, or 
            TFoot-Div-1, 4 checks, or 
            THead-Div-1, 4 checks, or 
            TOC-Div-1, 4 checks, or 
            TR-Div-1, 4 checks, or 
            Table-Div-1, 4 checks, or 
            WP-Div-1, 4 checks, or 
            WT-Div-1, 4 checks, or 
            Warichu-Div-1, 4 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDocument' or
            (@clause = 'Annot-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Em-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-Document' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sub-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Document' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-Document-1, 2 checks, or 
            Art-Document-1, 2 checks, or 
            BibEntry-Document-1, 2 checks, or 
            Caption-Document-1, 2 checks, or 
            Code-Document-1, 2 checks, or 
            Document-H-1, 1 check, or 
            Em-Document-1, 2 checks, or 
            FENote-Document-1, 2 checks, or 
            Figure-Document-1, 2 checks, or 
            Form-Document-1, 2 checks, or 
            Formula-Document-1, 2 checks, or 
            H-Document-1, 2 checks, or 
            Hn-Document-1, 12 checks, or 
            Index-Document-1, 2 checks, or 
            L-Document-1, 2 checks, or 
            LBody-Document-1, 2 checks, or 
            LI-Document-1, 2 checks, or 
            Lbl-Document-1, 2 checks, or 
            Link-Document-1, 2 checks, or 
            Note-Document-1, 2 checks, or 
            P-Document-1, 2 checks, or 
            Quote-Document-1, 2 checks, or 
            RB-Document-1, 2 checks, or 
            RP-Document-1, 2 checks, or 
            RT-Document-1, 2 checks, or 
            Reference-Document-1, 2 checks, or 
            Ruby-Document-1, 2 checks, or 
            Sect-Document-1, 2 checks, or 
            Span-Document-1, 2 checks, or 
            Strong-Document-1, 2 checks, or 
            Sub-Document-1, 2 checks, or 
            TBody-Document-1, 2 checks, or 
            TD-Document-1, 2 checks, or 
            TFoot-Document-1, 2 checks, or 
            TH-Document-1, 2 checks, or 
            THead-Document-1, 2 checks, or 
            TOC-Document-1, 2 checks, or 
            TOCI-Document-1, 2 checks, or 
            TR-Document-1, 2 checks, or 
            Table-Document-1, 2 checks, or 
            Title-Document-1, 2 checks, or 
            WP-Document-1, 2 checks, or 
            WT-Document-1, 2 checks, or 
            Warichu-Document-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDocumentFragment' or
            (@clause = 'BibEntry-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Em-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-DocumentFragment' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-DocumentFragment' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-DocumentFragment' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-DocumentFragment-1, 2 checks, or 
            DocumentFragment-H-1, 1 check, or 
            Em-DocumentFragment-1, 2 checks, or 
            Figure-DocumentFragment-1, 2 checks, or 
            Form-DocumentFragment-1, 2 checks, or 
            Formula-DocumentFragment-1, 2 checks, or 
            H-DocumentFragment-1, 2 checks, or 
            Hn-DocumentFragment-1, 12 checks, or 
            Index-DocumentFragment-1, 2 checks, or 
            L-DocumentFragment-1, 2 checks, or 
            LBody-DocumentFragment-1, 2 checks, or 
            LI-DocumentFragment-1, 2 checks, or 
            Lbl-DocumentFragment-1, 2 checks, or 
            P-DocumentFragment-1, 2 checks, or 
            Quote-DocumentFragment-1, 2 checks, or 
            RB-DocumentFragment-1, 2 checks, or 
            RP-DocumentFragment-1, 2 checks, or 
            RT-DocumentFragment-1, 2 checks, or 
            Reference-DocumentFragment-1, 2 checks, or 
            Ruby-DocumentFragment-1, 2 checks, or 
            Span-DocumentFragment-1, 2 checks, or 
            Strong-DocumentFragment-1, 2 checks, or 
            StructTreeRoot-DocumentFragment-1, 7 checks, or 
            Sub-DocumentFragment-1, 2 checks, or 
            TBody-DocumentFragment-1, 2 checks, or 
            TD-DocumentFragment-1, 2 checks, or 
            TFoot-DocumentFragment-1, 2 checks, or 
            TH-DocumentFragment-1, 2 checks, or 
            THead-DocumentFragment-1, 2 checks, or 
            TOC-DocumentFragment-1, 2 checks, or 
            TOCI-DocumentFragment-1, 2 checks, or 
            TR-DocumentFragment-1, 2 checks, or 
            Table-DocumentFragment-1, 2 checks, or 
            Title-DocumentFragment-1, 2 checks, or 
            WP-DocumentFragment-1, 2 checks, or 
            WT-DocumentFragment-1, 2 checks, or 
            Warichu-DocumentFragment-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEEm' or
            (@clause = 'Art-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Em' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Em' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Art-Em-1, 2 checks, or 
            Aside-Em-1, 2 checks, or 
            BlockQuote-Em-1, 2 checks, or 
            Document-Em-1, 2 checks, or 
            DocumentFragment-Em-1, 2 checks, or 
            Form-Em-1, 2 checks, or 
            Index-Em-1, 2 checks, or 
            L-Em-1, 2 checks, or 
            LI-Em-1, 2 checks, or 
            Ruby-Em-1, 2 checks, or 
            Sect-Em-1, 2 checks, or 
            StructTreeRoot-Em-1, 7 checks, or 
            TBody-Em-1, 2 checks, or 
            TFoot-Em-1, 2 checks, or 
            THead-Em-1, 2 checks, or 
            TOC-Em-1, 2 checks, or 
            TOCI-Em-1, 2 checks, or 
            TR-Em-1, 2 checks, or 
            Table-Em-1, 2 checks, or 
            Warichu-Em-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFENote' or
            (@clause = 'L-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-FENote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-FENote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            L-FENote-1, 2 checks, or 
            LI-FENote-1, 2 checks, or 
            RB-FENote-1, 2 checks, or 
            RP-FENote-1, 2 checks, or 
            RT-FENote-1, 2 checks, or 
            Ruby-FENote-1, 2 checks, or 
            StructTreeRoot-FENote-1, 7 checks, or 
            TBody-FENote-1, 2 checks, or 
            TFoot-FENote-1, 2 checks, or 
            THead-FENote-1, 2 checks, or 
            TOC-FENote-1, 2 checks, or 
            TOCI-FENote-1, 2 checks, or 
            TR-FENote-1, 2 checks, or 
            Table-FENote-1, 2 checks, or 
            WP-FENote-1, 2 checks, or 
            WT-FENote-1, 2 checks, or 
            Warichu-FENote-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFigure' or
            (@clause = '8.2.5.28.2' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Code-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Figure-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'L-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Figure' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Figure' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.28.2-1, 115 checks, or 
            Code-Figure-1, 2 checks, or 
            Figure-Caption-1, 1 check, or 
            Figure-H-1, 1 check, or 
            L-Figure-1, 2 checks, or 
            LI-Figure-1, 2 checks, or 
            RB-Figure-1, 2 checks, or 
            RP-Figure-1, 2 checks, or 
            RT-Figure-1, 2 checks, or 
            Ruby-Figure-1, 2 checks, or 
            StructTreeRoot-Figure-1, 7 checks, or 
            TBody-Figure-1, 2 checks, or 
            TFoot-Figure-1, 2 checks, or 
            THead-Figure-1, 2 checks, or 
            TOC-Figure-1, 2 checks, or 
            TOCI-Figure-1, 2 checks, or 
            TR-Figure-1, 2 checks, or 
            Table-Figure-1, 2 checks, or 
            WP-Figure-1, 2 checks, or 
            WT-Figure-1, 2 checks, or 
            Warichu-Figure-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEForm' or
            (@clause = 'BibEntry-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Form-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Form' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Form' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-Form-1, 2 checks, or 
            Code-Form-1, 2 checks, or 
            Form-Caption-1, 1 check, or 
            Form-Form-1, 2 checks, or 
            Index-Form-1, 2 checks, or 
            L-Form-1, 2 checks, or 
            LI-Form-1, 2 checks, or 
            Reference-Form-1, 2 checks, or 
            Ruby-Form-1, 2 checks, or 
            StructTreeRoot-Form-1, 7 checks, or 
            TBody-Form-1, 2 checks, or 
            TFoot-Form-1, 2 checks, or 
            THead-Form-1, 2 checks, or 
            TOC-Form-1, 2 checks, or 
            TOCI-Form-1, 2 checks, or 
            TR-Form-1, 2 checks, or 
            Table-Form-1, 2 checks, or 
            Warichu-Form-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFormula' or
            (@clause = 'BibEntry-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Formula-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'L-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Formula' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Formula' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-Formula-1, 2 checks, or 
            Code-Formula-1, 2 checks, or 
            Formula-Caption-1, 1 check, or 
            Formula-H-1, 1 check, or 
            L-Formula-1, 2 checks, or 
            LI-Formula-1, 2 checks, or 
            RB-Formula-1, 2 checks, or 
            RP-Formula-1, 2 checks, or 
            RT-Formula-1, 2 checks, or 
            Reference-Formula-1, 2 checks, or 
            Ruby-Formula-1, 2 checks, or 
            StructTreeRoot-Formula-1, 7 checks, or 
            TBody-Formula-1, 2 checks, or 
            TFoot-Formula-1, 2 checks, or 
            THead-Formula-1, 2 checks, or 
            TOC-Formula-1, 2 checks, or 
            TOCI-Formula-1, 2 checks, or 
            TR-Formula-1, 2 checks, or 
            Table-Formula-1, 2 checks, or 
            WP-Formula-1, 2 checks, or 
            WT-Formula-1, 2 checks, or 
            Warichu-Formula-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEH' or
            (@clause = '8.2.5.12' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'BibEntry-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Art' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'H-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Sect' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Hn-H' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'L-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-H' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-H' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.12-1, 115 checks, or 
            BibEntry-H-1, 2 checks, or 
            Code-H-1, 2 checks, or 
            Em-H-1, 2 checks, or 
            FENote-H-1, 2 checks, or 
            Form-H-1, 2 checks, or 
            H-Art-1, 1 check, or 
            H-H-1, 2 checks, or 
            H-Sect-1, 1 check, or 
            Hn-H-1, 12 checks, or 
            L-H-1, 2 checks, or 
            LI-H-1, 2 checks, or 
            Lbl-H-1, 2 checks, or 
            Note-H-1, 2 checks, or 
            P-H-1, 2 checks, or 
            Quote-H-1, 2 checks, or 
            RB-H-1, 2 checks, or 
            RP-H-1, 2 checks, or 
            RT-H-1, 2 checks, or 
            Reference-H-1, 2 checks, or 
            Ruby-H-1, 2 checks, or 
            Span-H-1, 2 checks, or 
            Strong-H-1, 2 checks, or 
            StructTreeRoot-H-1, 7 checks, or 
            Sub-H-1, 2 checks, or 
            TBody-H-1, 2 checks, or 
            TFoot-H-1, 2 checks, or 
            THead-H-1, 2 checks, or 
            TOC-H-1, 2 checks, or 
            TOCI-H-1, 2 checks, or 
            TR-H-1, 2 checks, or 
            Table-H-1, 2 checks, or 
            Title-H-1, 2 checks, or 
            WP-H-1, 2 checks, or 
            WT-H-1, 2 checks, or 
            Warichu-H-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEHn' or
            (@clause = 'BibEntry-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Code-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Em-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'FENote-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Form-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'H-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Hn-Art' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = 'Hn-Hn' and @testNumber = '1' and @failedChecks = '72') or 
            (@clause = 'Hn-Sect' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = 'L-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'LI-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Lbl-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Note-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'P-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Quote-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'RB-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'RP-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'RT-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Reference-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Ruby-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Span-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Strong-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'StructTreeRoot-Hn' and @testNumber = '1' and @failedChecks = '42') or 
            (@clause = 'Sub-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'TBody-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'TFoot-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'THead-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'TOC-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'TOCI-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'TR-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Title-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'WP-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'WT-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Warichu-Hn' and @testNumber = '1' and @failedChecks = '12')">Failed rules, Expected: 
            BibEntry-Hn-1, 12 checks, or 
            Code-Hn-1, 12 checks, or 
            Em-Hn-1, 12 checks, or 
            FENote-Hn-1, 12 checks, or 
            Form-Hn-1, 12 checks, or 
            H-Hn-1, 12 checks, or 
            Hn-Art-1, 6 checks, or 
            Hn-Hn-1, 72 checks, or 
            Hn-Sect-1, 6 checks, or 
            L-Hn-1, 12 checks, or 
            LI-Hn-1, 12 checks, or 
            Lbl-Hn-1, 12 checks, or 
            Note-Hn-1, 12 checks, or 
            P-Hn-1, 12 checks, or 
            Quote-Hn-1, 12 checks, or 
            RB-Hn-1, 12 checks, or 
            RP-Hn-1, 12 checks, or 
            RT-Hn-1, 12 checks, or 
            Reference-Hn-1, 12 checks, or 
            Ruby-Hn-1, 12 checks, or 
            Span-Hn-1, 12 checks, or 
            Strong-Hn-1, 12 checks, or 
            StructTreeRoot-Hn-1, 42 checks, or 
            Sub-Hn-1, 12 checks, or 
            TBody-Hn-1, 12 checks, or 
            TFoot-Hn-1, 12 checks, or 
            THead-Hn-1, 12 checks, or 
            TOC-Hn-1, 12 checks, or 
            TOCI-Hn-1, 12 checks, or 
            TR-Hn-1, 12 checks, or 
            Table-Hn-1, 12 checks, or 
            Title-Hn-1, 12 checks, or 
            WP-Hn-1, 12 checks, or 
            WT-Hn-1, 12 checks, or 
            Warichu-Hn-1, 12 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEIndex' or
            (@clause = 'Annot-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-Index' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Index' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Index' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-Index-1, 2 checks, or 
            BibEntry-Index-1, 2 checks, or 
            Code-Index-1, 2 checks, or 
            Em-Index-1, 2 checks, or 
            FENote-Index-1, 2 checks, or 
            Form-Index-1, 2 checks, or 
            H-Index-1, 2 checks, or 
            Hn-Index-1, 12 checks, or 
            Index-Index-1, 2 checks, or 
            L-Index-1, 2 checks, or 
            LI-Index-1, 2 checks, or 
            Lbl-Index-1, 2 checks, or 
            Link-Index-1, 2 checks, or 
            P-Index-1, 2 checks, or 
            Quote-Index-1, 2 checks, or 
            RB-Index-1, 2 checks, or 
            RP-Index-1, 2 checks, or 
            RT-Index-1, 2 checks, or 
            Reference-Index-1, 2 checks, or 
            Ruby-Index-1, 2 checks, or 
            Span-Index-1, 2 checks, or 
            Strong-Index-1, 2 checks, or 
            StructTreeRoot-Index-1, 7 checks, or 
            Sub-Index-1, 2 checks, or 
            TBody-Index-1, 2 checks, or 
            TFoot-Index-1, 2 checks, or 
            THead-Index-1, 2 checks, or 
            TOC-Index-1, 2 checks, or 
            TOCI-Index-1, 2 checks, or 
            TR-Index-1, 2 checks, or 
            Table-Index-1, 2 checks, or 
            Title-Index-1, 2 checks, or 
            WP-Index-1, 2 checks, or 
            WT-Index-1, 2 checks, or 
            Warichu-Index-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEL' or
            (@clause = 'BibEntry-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-L' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'L-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'LI-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-L' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-L' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-L-1, 2 checks, or 
            Code-L-1, 2 checks, or 
            Em-L-1, 2 checks, or 
            H-L-1, 2 checks, or 
            Hn-L-1, 12 checks, or 
            L-Caption-1, 1 check, or 
            LI-L-1, 2 checks, or 
            Lbl-L-1, 2 checks, or 
            Quote-L-1, 2 checks, or 
            RB-L-1, 2 checks, or 
            RP-L-1, 2 checks, or 
            RT-L-1, 2 checks, or 
            Reference-L-1, 2 checks, or 
            Ruby-L-1, 2 checks, or 
            Span-L-1, 2 checks, or 
            Strong-L-1, 2 checks, or 
            StructTreeRoot-L-1, 7 checks, or 
            TBody-L-1, 2 checks, or 
            TFoot-L-1, 2 checks, or 
            THead-L-1, 2 checks, or 
            TOC-L-1, 2 checks, or 
            TOCI-L-1, 2 checks, or 
            TR-L-1, 2 checks, or 
            Table-L-1, 2 checks, or 
            WP-L-1, 2 checks, or 
            WT-L-1, 2 checks, or 
            Warichu-L-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELBody' or
            (@clause = 'Annot-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-LBody' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'LBody-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'LBody-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-LBody' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-LBody' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-LBody-1, 2 checks, or 
            Art-LBody-1, 2 checks, or 
            Aside-LBody-1, 2 checks, or 
            BibEntry-LBody-1, 2 checks, or 
            BlockQuote-LBody-1, 2 checks, or 
            Caption-LBody-1, 2 checks, or 
            Code-LBody-1, 2 checks, or 
            Document-LBody-1, 2 checks, or 
            DocumentFragment-LBody-1, 2 checks, or 
            Em-LBody-1, 2 checks, or 
            FENote-LBody-1, 2 checks, or 
            Figure-LBody-1, 2 checks, or 
            Form-LBody-1, 2 checks, or 
            Formula-LBody-1, 2 checks, or 
            H-LBody-1, 2 checks, or 
            Hn-LBody-1, 12 checks, or 
            Index-LBody-1, 2 checks, or 
            L-LBody-1, 2 checks, or 
            LBody-Caption-1, 1 check, or 
            LBody-H-1, 1 check, or 
            LBody-LBody-1, 2 checks, or 
            Lbl-LBody-1, 2 checks, or 
            Link-LBody-1, 2 checks, or 
            Note-LBody-1, 2 checks, or 
            P-LBody-1, 2 checks, or 
            Quote-LBody-1, 2 checks, or 
            RB-LBody-1, 2 checks, or 
            RP-LBody-1, 2 checks, or 
            RT-LBody-1, 2 checks, or 
            Reference-LBody-1, 2 checks, or 
            Ruby-LBody-1, 2 checks, or 
            Sect-LBody-1, 2 checks, or 
            Span-LBody-1, 2 checks, or 
            Strong-LBody-1, 2 checks, or 
            StructTreeRoot-LBody-1, 7 checks, or 
            Sub-LBody-1, 2 checks, or 
            TBody-LBody-1, 2 checks, or 
            TD-LBody-1, 2 checks, or 
            TFoot-LBody-1, 2 checks, or 
            TH-LBody-1, 2 checks, or 
            THead-LBody-1, 2 checks, or 
            TOC-LBody-1, 2 checks, or 
            TOCI-LBody-1, 2 checks, or 
            TR-LBody-1, 2 checks, or 
            Table-LBody-1, 2 checks, or 
            Title-LBody-1, 2 checks, or 
            WP-LBody-1, 2 checks, or 
            WT-LBody-1, 2 checks, or 
            Warichu-LBody-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELI' or
            (@clause = 'Annot-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-LI' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-LI' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-LI' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-LI-1, 2 checks, or 
            Art-LI-1, 2 checks, or 
            Aside-LI-1, 2 checks, or 
            BibEntry-LI-1, 2 checks, or 
            BlockQuote-LI-1, 2 checks, or 
            Caption-LI-1, 2 checks, or 
            Code-LI-1, 2 checks, or 
            Document-LI-1, 2 checks, or 
            DocumentFragment-LI-1, 2 checks, or 
            Em-LI-1, 2 checks, or 
            FENote-LI-1, 2 checks, or 
            Figure-LI-1, 2 checks, or 
            Form-LI-1, 2 checks, or 
            Formula-LI-1, 2 checks, or 
            H-LI-1, 2 checks, or 
            Hn-LI-1, 12 checks, or 
            Index-LI-1, 2 checks, or 
            LBody-LI-1, 2 checks, or 
            LI-LI-1, 2 checks, or 
            Lbl-LI-1, 2 checks, or 
            Link-LI-1, 2 checks, or 
            Note-LI-1, 2 checks, or 
            P-LI-1, 2 checks, or 
            Quote-LI-1, 2 checks, or 
            RB-LI-1, 2 checks, or 
            RP-LI-1, 2 checks, or 
            RT-LI-1, 2 checks, or 
            Reference-LI-1, 2 checks, or 
            Ruby-LI-1, 2 checks, or 
            Sect-LI-1, 2 checks, or 
            Span-LI-1, 2 checks, or 
            Strong-LI-1, 2 checks, or 
            StructTreeRoot-LI-1, 7 checks, or 
            Sub-LI-1, 2 checks, or 
            TBody-LI-1, 2 checks, or 
            TD-LI-1, 2 checks, or 
            TFoot-LI-1, 2 checks, or 
            TH-LI-1, 2 checks, or 
            THead-LI-1, 2 checks, or 
            TOC-LI-1, 2 checks, or 
            TOCI-LI-1, 2 checks, or 
            TR-LI-1, 2 checks, or 
            Table-LI-1, 2 checks, or 
            Title-LI-1, 2 checks, or 
            WP-LI-1, 2 checks, or 
            WT-LI-1, 2 checks, or 
            Warichu-LI-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELbl' or
            (@clause = 'Code-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Lbl' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Lbl' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Code-Lbl-1, 2 checks, or 
            Document-Lbl-1, 2 checks, or 
            DocumentFragment-Lbl-1, 2 checks, or 
            Index-Lbl-1, 2 checks, or 
            L-Lbl-1, 2 checks, or 
            LBody-Lbl-1, 2 checks, or 
            Lbl-Lbl-1, 2 checks, or 
            RB-Lbl-1, 2 checks, or 
            RP-Lbl-1, 2 checks, or 
            RT-Lbl-1, 2 checks, or 
            Ruby-Lbl-1, 2 checks, or 
            StructTreeRoot-Lbl-1, 7 checks, or 
            TBody-Lbl-1, 2 checks, or 
            TFoot-Lbl-1, 2 checks, or 
            THead-Lbl-1, 2 checks, or 
            TOC-Lbl-1, 2 checks, or 
            TR-Lbl-1, 2 checks, or 
            Table-Lbl-1, 2 checks, or 
            WP-Lbl-1, 2 checks, or 
            WT-Lbl-1, 2 checks, or 
            Warichu-Lbl-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELink' or
            (@clause = 'Form-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Link' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Link' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Form-Link-1, 2 checks, or 
            Index-Link-1, 2 checks, or 
            L-Link-1, 2 checks, or 
            LI-Link-1, 2 checks, or 
            Link-Link-1, 2 checks, or 
            Ruby-Link-1, 2 checks, or 
            StructTreeRoot-Link-1, 7 checks, or 
            TBody-Link-1, 2 checks, or 
            TFoot-Link-1, 2 checks, or 
            THead-Link-1, 2 checks, or 
            TOC-Link-1, 2 checks, or 
            TOCI-Link-1, 2 checks, or 
            TR-Link-1, 2 checks, or 
            Table-Link-1, 2 checks, or 
            Warichu-Link-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENonStruct' or
            (@clause = 'StructTreeRoot-NonStruct' and @testNumber = '1' and @failedChecks = '7')">Failed rules, Expected: 
            StructTreeRoot-NonStruct-1, 7 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENote' or
            (@clause = '8.2.5.14' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'L-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Note' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Note' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.14-1, 115 checks, or 
            L-Note-1, 2 checks, or 
            LI-Note-1, 2 checks, or 
            RB-Note-1, 2 checks, or 
            RP-Note-1, 2 checks, or 
            RT-Note-1, 2 checks, or 
            Ruby-Note-1, 2 checks, or 
            StructTreeRoot-Note-1, 7 checks, or 
            TBody-Note-1, 2 checks, or 
            TFoot-Note-1, 2 checks, or 
            THead-Note-1, 2 checks, or 
            TOC-Note-1, 2 checks, or 
            TOCI-Note-1, 2 checks, or 
            TR-Note-1, 2 checks, or 
            Table-Note-1, 2 checks, or 
            WP-Note-1, 2 checks, or 
            WT-Note-1, 2 checks, or 
            Warichu-Note-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEP' or
            (@clause = 'Code-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-P' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'L-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-P' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-P' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Code-P-1, 2 checks, or 
            Em-P-1, 2 checks, or 
            Form-P-1, 2 checks, or 
            H-P-1, 2 checks, or 
            Hn-P-1, 12 checks, or 
            L-P-1, 2 checks, or 
            LI-P-1, 2 checks, or 
            Lbl-P-1, 2 checks, or 
            P-P-1, 2 checks, or 
            Quote-P-1, 2 checks, or 
            RB-P-1, 2 checks, or 
            RP-P-1, 2 checks, or 
            RT-P-1, 2 checks, or 
            Reference-P-1, 2 checks, or 
            Ruby-P-1, 2 checks, or 
            Span-P-1, 2 checks, or 
            Strong-P-1, 2 checks, or 
            StructTreeRoot-P-1, 7 checks, or 
            Sub-P-1, 2 checks, or 
            TBody-P-1, 2 checks, or 
            TFoot-P-1, 2 checks, or 
            THead-P-1, 2 checks, or 
            TOC-P-1, 2 checks, or 
            TR-P-1, 2 checks, or 
            Table-P-1, 2 checks, or 
            WP-P-1, 2 checks, or 
            WT-P-1, 2 checks, or 
            Warichu-P-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPart' or
            (@clause = 'Em-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-Part' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'L-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Part' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Part' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Em-Part-1, 2 checks, or 
            H-Part-1, 2 checks, or 
            Hn-Part-1, 12 checks, or 
            L-Part-1, 2 checks, or 
            LI-Part-1, 2 checks, or 
            Lbl-Part-1, 2 checks, or 
            P-Part-1, 2 checks, or 
            Quote-Part-1, 2 checks, or 
            RB-Part-1, 2 checks, or 
            RP-Part-1, 2 checks, or 
            RT-Part-1, 2 checks, or 
            Reference-Part-1, 2 checks, or 
            Ruby-Part-1, 2 checks, or 
            Span-Part-1, 2 checks, or 
            Strong-Part-1, 2 checks, or 
            StructTreeRoot-Part-1, 7 checks, or 
            Sub-Part-1, 2 checks, or 
            TBody-Part-1, 2 checks, or 
            TD-Part-1, 2 checks, or 
            TFoot-Part-1, 2 checks, or 
            TH-Part-1, 2 checks, or 
            THead-Part-1, 2 checks, or 
            TOC-Part-1, 2 checks, or 
            TOCI-Part-1, 2 checks, or 
            TR-Part-1, 2 checks, or 
            Table-Part-1, 2 checks, or 
            WP-Part-1, 2 checks, or 
            WT-Part-1, 2 checks, or 
            Warichu-Part-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPrivate' or
            (@clause = 'Annot-Private' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Private' and @testNumber = '1' and @failedChecks = '7')">Failed rules, Expected: 
            Annot-Private-1, 2 checks, or 
            StructTreeRoot-Private-1, 7 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEQuote' or
            (@clause = 'Art-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Quote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Quote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Art-Quote-1, 2 checks, or 
            Aside-Quote-1, 2 checks, or 
            BibEntry-Quote-1, 2 checks, or 
            BlockQuote-Quote-1, 2 checks, or 
            Code-Quote-1, 2 checks, or 
            Document-Quote-1, 2 checks, or 
            DocumentFragment-Quote-1, 2 checks, or 
            Form-Quote-1, 2 checks, or 
            Index-Quote-1, 2 checks, or 
            L-Quote-1, 2 checks, or 
            LI-Quote-1, 2 checks, or 
            Reference-Quote-1, 2 checks, or 
            Ruby-Quote-1, 2 checks, or 
            Sect-Quote-1, 2 checks, or 
            StructTreeRoot-Quote-1, 7 checks, or 
            TBody-Quote-1, 2 checks, or 
            TFoot-Quote-1, 2 checks, or 
            THead-Quote-1, 2 checks, or 
            TOC-Quote-1, 2 checks, or 
            TOCI-Quote-1, 2 checks, or 
            TR-Quote-1, 2 checks, or 
            Table-Quote-1, 2 checks, or 
            Warichu-Quote-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERB' or
            (@clause = 'Annot-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-RB' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-RB' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-RB' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-RB-1, 2 checks, or 
            Art-RB-1, 2 checks, or 
            Aside-RB-1, 2 checks, or 
            BibEntry-RB-1, 2 checks, or 
            BlockQuote-RB-1, 2 checks, or 
            Caption-RB-1, 2 checks, or 
            Code-RB-1, 2 checks, or 
            Document-RB-1, 2 checks, or 
            DocumentFragment-RB-1, 2 checks, or 
            Em-RB-1, 2 checks, or 
            FENote-RB-1, 2 checks, or 
            Figure-RB-1, 2 checks, or 
            Form-RB-1, 2 checks, or 
            Formula-RB-1, 2 checks, or 
            H-RB-1, 2 checks, or 
            Hn-RB-1, 12 checks, or 
            Index-RB-1, 2 checks, or 
            L-RB-1, 2 checks, or 
            LBody-RB-1, 2 checks, or 
            LI-RB-1, 2 checks, or 
            Lbl-RB-1, 2 checks, or 
            Link-RB-1, 2 checks, or 
            Note-RB-1, 2 checks, or 
            P-RB-1, 2 checks, or 
            Quote-RB-1, 2 checks, or 
            RB-RB-1, 2 checks, or 
            RP-RB-1, 2 checks, or 
            RT-RB-1, 2 checks, or 
            Reference-RB-1, 2 checks, or 
            Sect-RB-1, 2 checks, or 
            Span-RB-1, 2 checks, or 
            Strong-RB-1, 2 checks, or 
            StructTreeRoot-RB-1, 7 checks, or 
            Sub-RB-1, 2 checks, or 
            TBody-RB-1, 2 checks, or 
            TD-RB-1, 2 checks, or 
            TFoot-RB-1, 2 checks, or 
            TH-RB-1, 2 checks, or 
            THead-RB-1, 2 checks, or 
            TOC-RB-1, 2 checks, or 
            TOCI-RB-1, 2 checks, or 
            TR-RB-1, 2 checks, or 
            Table-RB-1, 2 checks, or 
            Title-RB-1, 2 checks, or 
            WP-RB-1, 2 checks, or 
            WT-RB-1, 2 checks, or 
            Warichu-RB-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERP' or
            (@clause = 'Annot-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-RP' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-RP' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-RP' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-RP-1, 2 checks, or 
            Art-RP-1, 2 checks, or 
            Aside-RP-1, 2 checks, or 
            BibEntry-RP-1, 2 checks, or 
            BlockQuote-RP-1, 2 checks, or 
            Caption-RP-1, 2 checks, or 
            Code-RP-1, 2 checks, or 
            Document-RP-1, 2 checks, or 
            DocumentFragment-RP-1, 2 checks, or 
            Em-RP-1, 2 checks, or 
            FENote-RP-1, 2 checks, or 
            Figure-RP-1, 2 checks, or 
            Form-RP-1, 2 checks, or 
            Formula-RP-1, 2 checks, or 
            H-RP-1, 2 checks, or 
            Hn-RP-1, 12 checks, or 
            Index-RP-1, 2 checks, or 
            L-RP-1, 2 checks, or 
            LBody-RP-1, 2 checks, or 
            LI-RP-1, 2 checks, or 
            Lbl-RP-1, 2 checks, or 
            Link-RP-1, 2 checks, or 
            Note-RP-1, 2 checks, or 
            P-RP-1, 2 checks, or 
            Quote-RP-1, 2 checks, or 
            RB-RP-1, 2 checks, or 
            RP-RP-1, 2 checks, or 
            RT-RP-1, 2 checks, or 
            Reference-RP-1, 2 checks, or 
            Sect-RP-1, 2 checks, or 
            Span-RP-1, 2 checks, or 
            Strong-RP-1, 2 checks, or 
            StructTreeRoot-RP-1, 7 checks, or 
            Sub-RP-1, 2 checks, or 
            TBody-RP-1, 2 checks, or 
            TD-RP-1, 2 checks, or 
            TFoot-RP-1, 2 checks, or 
            TH-RP-1, 2 checks, or 
            THead-RP-1, 2 checks, or 
            TOC-RP-1, 2 checks, or 
            TOCI-RP-1, 2 checks, or 
            TR-RP-1, 2 checks, or 
            Table-RP-1, 2 checks, or 
            Title-RP-1, 2 checks, or 
            WP-RP-1, 2 checks, or 
            WT-RP-1, 2 checks, or 
            Warichu-RP-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERT' or
            (@clause = 'Annot-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-RT' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-RT' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-RT' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-RT-1, 2 checks, or 
            Art-RT-1, 2 checks, or 
            Aside-RT-1, 2 checks, or 
            BibEntry-RT-1, 2 checks, or 
            BlockQuote-RT-1, 2 checks, or 
            Caption-RT-1, 2 checks, or 
            Code-RT-1, 2 checks, or 
            Document-RT-1, 2 checks, or 
            DocumentFragment-RT-1, 2 checks, or 
            Em-RT-1, 2 checks, or 
            FENote-RT-1, 2 checks, or 
            Figure-RT-1, 2 checks, or 
            Form-RT-1, 2 checks, or 
            Formula-RT-1, 2 checks, or 
            H-RT-1, 2 checks, or 
            Hn-RT-1, 12 checks, or 
            Index-RT-1, 2 checks, or 
            L-RT-1, 2 checks, or 
            LBody-RT-1, 2 checks, or 
            LI-RT-1, 2 checks, or 
            Lbl-RT-1, 2 checks, or 
            Link-RT-1, 2 checks, or 
            Note-RT-1, 2 checks, or 
            P-RT-1, 2 checks, or 
            Quote-RT-1, 2 checks, or 
            RB-RT-1, 2 checks, or 
            RP-RT-1, 2 checks, or 
            RT-RT-1, 2 checks, or 
            Reference-RT-1, 2 checks, or 
            Sect-RT-1, 2 checks, or 
            Span-RT-1, 2 checks, or 
            Strong-RT-1, 2 checks, or 
            StructTreeRoot-RT-1, 7 checks, or 
            Sub-RT-1, 2 checks, or 
            TBody-RT-1, 2 checks, or 
            TD-RT-1, 2 checks, or 
            TFoot-RT-1, 2 checks, or 
            TH-RT-1, 2 checks, or 
            THead-RT-1, 2 checks, or 
            TOC-RT-1, 2 checks, or 
            TOCI-RT-1, 2 checks, or 
            TR-RT-1, 2 checks, or 
            Table-RT-1, 2 checks, or 
            Title-RT-1, 2 checks, or 
            WP-RT-1, 2 checks, or 
            WT-RT-1, 2 checks, or 
            Warichu-RT-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEReference' or
            (@clause = 'Art-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Reference' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Reference' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Art-Reference-1, 2 checks, or 
            Document-Reference-1, 2 checks, or 
            DocumentFragment-Reference-1, 2 checks, or 
            L-Reference-1, 2 checks, or 
            LI-Reference-1, 2 checks, or 
            Reference-Reference-1, 2 checks, or 
            Ruby-Reference-1, 2 checks, or 
            Sect-Reference-1, 2 checks, or 
            StructTreeRoot-Reference-1, 7 checks, or 
            TBody-Reference-1, 2 checks, or 
            TFoot-Reference-1, 2 checks, or 
            THead-Reference-1, 2 checks, or 
            TOC-Reference-1, 2 checks, or 
            TR-Reference-1, 2 checks, or 
            Table-Reference-1, 2 checks, or 
            Warichu-Reference-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERuby' or
            (@clause = '8.2.5.23' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Art-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Ruby' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Ruby' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.23-1, 115 checks, or 
            Art-Ruby-1, 2 checks, or 
            Aside-Ruby-1, 2 checks, or 
            BibEntry-Ruby-1, 2 checks, or 
            BlockQuote-Ruby-1, 2 checks, or 
            Code-Ruby-1, 2 checks, or 
            Document-Ruby-1, 2 checks, or 
            DocumentFragment-Ruby-1, 2 checks, or 
            Form-Ruby-1, 2 checks, or 
            Index-Ruby-1, 2 checks, or 
            L-Ruby-1, 2 checks, or 
            LI-Ruby-1, 2 checks, or 
            RB-Ruby-1, 2 checks, or 
            RP-Ruby-1, 2 checks, or 
            RT-Ruby-1, 2 checks, or 
            Reference-Ruby-1, 2 checks, or 
            Ruby-Ruby-1, 2 checks, or 
            Sect-Ruby-1, 2 checks, or 
            StructTreeRoot-Ruby-1, 7 checks, or 
            TBody-Ruby-1, 2 checks, or 
            TFoot-Ruby-1, 2 checks, or 
            THead-Ruby-1, 2 checks, or 
            TOC-Ruby-1, 2 checks, or 
            TOCI-Ruby-1, 2 checks, or 
            TR-Ruby-1, 2 checks, or 
            Table-Ruby-1, 2 checks, or 
            WP-Ruby-1, 2 checks, or 
            WT-Ruby-1, 2 checks, or 
            Warichu-Ruby-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESect' or
            (@clause = 'BibEntry-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Span-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Sect' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Sect' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-Sect-1, 2 checks, or 
            Code-Sect-1, 2 checks, or 
            Em-Sect-1, 2 checks, or 
            Form-Sect-1, 2 checks, or 
            Formula-Sect-1, 2 checks, or 
            L-Sect-1, 2 checks, or 
            LI-Sect-1, 2 checks, or 
            Lbl-Sect-1, 2 checks, or 
            P-Sect-1, 2 checks, or 
            Quote-Sect-1, 2 checks, or 
            RB-Sect-1, 2 checks, or 
            RP-Sect-1, 2 checks, or 
            RT-Sect-1, 2 checks, or 
            Reference-Sect-1, 2 checks, or 
            Ruby-Sect-1, 2 checks, or 
            Sect-H-1, 1 check, or 
            Span-Sect-1, 2 checks, or 
            Strong-Sect-1, 2 checks, or 
            StructTreeRoot-Sect-1, 7 checks, or 
            Sub-Sect-1, 2 checks, or 
            TBody-Sect-1, 2 checks, or 
            TFoot-Sect-1, 2 checks, or 
            THead-Sect-1, 2 checks, or 
            TOC-Sect-1, 2 checks, or 
            TOCI-Sect-1, 2 checks, or 
            TR-Sect-1, 2 checks, or 
            Table-Sect-1, 2 checks, or 
            Title-Sect-1, 2 checks, or 
            WP-Sect-1, 2 checks, or 
            WT-Sect-1, 2 checks, or 
            Warichu-Sect-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESimpleContentItem' or
            (@clause = '8.2.2' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.2.2-1, 114 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESpan' or
            (@clause = 'Art-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Span' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Span' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Art-Span-1, 2 checks, or 
            Aside-Span-1, 2 checks, or 
            BlockQuote-Span-1, 2 checks, or 
            Document-Span-1, 2 checks, or 
            DocumentFragment-Span-1, 2 checks, or 
            Form-Span-1, 2 checks, or 
            Index-Span-1, 2 checks, or 
            L-Span-1, 2 checks, or 
            LI-Span-1, 2 checks, or 
            Ruby-Span-1, 2 checks, or 
            Sect-Span-1, 2 checks, or 
            StructTreeRoot-Span-1, 7 checks, or 
            TBody-Span-1, 2 checks, or 
            TFoot-Span-1, 2 checks, or 
            THead-Span-1, 2 checks, or 
            TOC-Span-1, 2 checks, or 
            TOCI-Span-1, 2 checks, or 
            TR-Span-1, 2 checks, or 
            Table-Span-1, 2 checks, or 
            Warichu-Span-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEStrong' or
            (@clause = 'Art-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Strong' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Strong' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Art-Strong-1, 2 checks, or 
            Aside-Strong-1, 2 checks, or 
            BlockQuote-Strong-1, 2 checks, or 
            Document-Strong-1, 2 checks, or 
            DocumentFragment-Strong-1, 2 checks, or 
            Form-Strong-1, 2 checks, or 
            Index-Strong-1, 2 checks, or 
            L-Strong-1, 2 checks, or 
            LI-Strong-1, 2 checks, or 
            Ruby-Strong-1, 2 checks, or 
            Sect-Strong-1, 2 checks, or 
            StructTreeRoot-Strong-1, 7 checks, or 
            TBody-Strong-1, 2 checks, or 
            TFoot-Strong-1, 2 checks, or 
            THead-Strong-1, 2 checks, or 
            TOC-Strong-1, 2 checks, or 
            TOCI-Strong-1, 2 checks, or 
            TR-Strong-1, 2 checks, or 
            Table-Strong-1, 2 checks, or 
            Warichu-Strong-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESub' or
            (@clause = 'Art-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Sub' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Sub' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Art-Sub-1, 2 checks, or 
            Aside-Sub-1, 2 checks, or 
            BibEntry-Sub-1, 2 checks, or 
            BlockQuote-Sub-1, 2 checks, or 
            Document-Sub-1, 2 checks, or 
            DocumentFragment-Sub-1, 2 checks, or 
            Form-Sub-1, 2 checks, or 
            Index-Sub-1, 2 checks, or 
            L-Sub-1, 2 checks, or 
            LI-Sub-1, 2 checks, or 
            Reference-Sub-1, 2 checks, or 
            Ruby-Sub-1, 2 checks, or 
            Sect-Sub-1, 2 checks, or 
            StructTreeRoot-Sub-1, 7 checks, or 
            Sub-Sub-1, 2 checks, or 
            TBody-Sub-1, 2 checks, or 
            TD-Sub-1, 2 checks, or 
            TFoot-Sub-1, 2 checks, or 
            TH-Sub-1, 2 checks, or 
            THead-Sub-1, 2 checks, or 
            TOC-Sub-1, 2 checks, or 
            TOCI-Sub-1, 2 checks, or 
            TR-Sub-1, 2 checks, or 
            Table-Sub-1, 2 checks, or 
            Title-Sub-1, 2 checks, or 
            Warichu-Sub-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETBody' or
            (@clause = 'Annot-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-TBody' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-TBody' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-TBody' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-TBody-1, 2 checks, or 
            Art-TBody-1, 2 checks, or 
            Aside-TBody-1, 2 checks, or 
            BibEntry-TBody-1, 2 checks, or 
            BlockQuote-TBody-1, 2 checks, or 
            Caption-TBody-1, 2 checks, or 
            Code-TBody-1, 2 checks, or 
            Document-TBody-1, 2 checks, or 
            DocumentFragment-TBody-1, 2 checks, or 
            Em-TBody-1, 2 checks, or 
            FENote-TBody-1, 2 checks, or 
            Figure-TBody-1, 2 checks, or 
            Form-TBody-1, 2 checks, or 
            Formula-TBody-1, 2 checks, or 
            H-TBody-1, 2 checks, or 
            Hn-TBody-1, 12 checks, or 
            Index-TBody-1, 2 checks, or 
            L-TBody-1, 2 checks, or 
            LBody-TBody-1, 2 checks, or 
            LI-TBody-1, 2 checks, or 
            Lbl-TBody-1, 2 checks, or 
            Link-TBody-1, 2 checks, or 
            Note-TBody-1, 2 checks, or 
            P-TBody-1, 2 checks, or 
            Quote-TBody-1, 2 checks, or 
            RB-TBody-1, 2 checks, or 
            RP-TBody-1, 2 checks, or 
            RT-TBody-1, 2 checks, or 
            Reference-TBody-1, 2 checks, or 
            Ruby-TBody-1, 2 checks, or 
            Sect-TBody-1, 2 checks, or 
            Span-TBody-1, 2 checks, or 
            Strong-TBody-1, 2 checks, or 
            StructTreeRoot-TBody-1, 7 checks, or 
            Sub-TBody-1, 2 checks, or 
            TBody-TBody-1, 2 checks, or 
            TD-TBody-1, 2 checks, or 
            TFoot-TBody-1, 2 checks, or 
            TH-TBody-1, 2 checks, or 
            THead-TBody-1, 2 checks, or 
            TOC-TBody-1, 2 checks, or 
            TOCI-TBody-1, 2 checks, or 
            TR-TBody-1, 2 checks, or 
            Title-TBody-1, 2 checks, or 
            WP-TBody-1, 2 checks, or 
            WT-TBody-1, 2 checks, or 
            Warichu-TBody-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETD' or
            (@clause = 'Annot-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-TD' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-TD' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'TD-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-TD' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-TD-1, 2 checks, or 
            Art-TD-1, 2 checks, or 
            Aside-TD-1, 2 checks, or 
            BibEntry-TD-1, 2 checks, or 
            BlockQuote-TD-1, 2 checks, or 
            Caption-TD-1, 2 checks, or 
            Code-TD-1, 2 checks, or 
            Document-TD-1, 2 checks, or 
            DocumentFragment-TD-1, 2 checks, or 
            Em-TD-1, 2 checks, or 
            FENote-TD-1, 2 checks, or 
            Figure-TD-1, 2 checks, or 
            Form-TD-1, 2 checks, or 
            Formula-TD-1, 2 checks, or 
            H-TD-1, 2 checks, or 
            Hn-TD-1, 12 checks, or 
            Index-TD-1, 2 checks, or 
            L-TD-1, 2 checks, or 
            LBody-TD-1, 2 checks, or 
            LI-TD-1, 2 checks, or 
            Lbl-TD-1, 2 checks, or 
            Link-TD-1, 2 checks, or 
            Note-TD-1, 2 checks, or 
            P-TD-1, 2 checks, or 
            Quote-TD-1, 2 checks, or 
            RB-TD-1, 2 checks, or 
            RP-TD-1, 2 checks, or 
            RT-TD-1, 2 checks, or 
            Reference-TD-1, 2 checks, or 
            Ruby-TD-1, 2 checks, or 
            Sect-TD-1, 2 checks, or 
            Span-TD-1, 2 checks, or 
            Strong-TD-1, 2 checks, or 
            StructTreeRoot-TD-1, 7 checks, or 
            Sub-TD-1, 2 checks, or 
            TBody-TD-1, 2 checks, or 
            TD-H-1, 1 check, or 
            TD-TD-1, 2 checks, or 
            TFoot-TD-1, 2 checks, or 
            TH-TD-1, 2 checks, or 
            THead-TD-1, 2 checks, or 
            TOC-TD-1, 2 checks, or 
            TOCI-TD-1, 2 checks, or 
            Table-TD-1, 2 checks, or 
            Title-TD-1, 2 checks, or 
            WP-TD-1, 2 checks, or 
            WT-TD-1, 2 checks, or 
            Warichu-TD-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETFoot' or
            (@clause = 'Annot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-TFoot' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-TFoot' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-TFoot' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-TFoot-1, 2 checks, or 
            Art-TFoot-1, 2 checks, or 
            Aside-TFoot-1, 2 checks, or 
            BibEntry-TFoot-1, 2 checks, or 
            BlockQuote-TFoot-1, 2 checks, or 
            Caption-TFoot-1, 2 checks, or 
            Code-TFoot-1, 2 checks, or 
            Document-TFoot-1, 2 checks, or 
            DocumentFragment-TFoot-1, 2 checks, or 
            Em-TFoot-1, 2 checks, or 
            FENote-TFoot-1, 2 checks, or 
            Figure-TFoot-1, 2 checks, or 
            Form-TFoot-1, 2 checks, or 
            Formula-TFoot-1, 2 checks, or 
            H-TFoot-1, 2 checks, or 
            Hn-TFoot-1, 12 checks, or 
            Index-TFoot-1, 2 checks, or 
            L-TFoot-1, 2 checks, or 
            LBody-TFoot-1, 2 checks, or 
            LI-TFoot-1, 2 checks, or 
            Lbl-TFoot-1, 2 checks, or 
            Link-TFoot-1, 2 checks, or 
            Note-TFoot-1, 2 checks, or 
            P-TFoot-1, 2 checks, or 
            Quote-TFoot-1, 2 checks, or 
            RB-TFoot-1, 2 checks, or 
            RP-TFoot-1, 2 checks, or 
            RT-TFoot-1, 2 checks, or 
            Reference-TFoot-1, 2 checks, or 
            Ruby-TFoot-1, 2 checks, or 
            Sect-TFoot-1, 2 checks, or 
            Span-TFoot-1, 2 checks, or 
            Strong-TFoot-1, 2 checks, or 
            StructTreeRoot-TFoot-1, 7 checks, or 
            Sub-TFoot-1, 2 checks, or 
            TBody-TFoot-1, 2 checks, or 
            TD-TFoot-1, 2 checks, or 
            TFoot-TFoot-1, 2 checks, or 
            TH-TFoot-1, 2 checks, or 
            THead-TFoot-1, 2 checks, or 
            TOC-TFoot-1, 2 checks, or 
            TOCI-TFoot-1, 2 checks, or 
            TR-TFoot-1, 2 checks, or 
            Title-TFoot-1, 2 checks, or 
            WP-TFoot-1, 2 checks, or 
            WT-TFoot-1, 2 checks, or 
            Warichu-TFoot-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETH' or
            (@clause = 'Annot-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-TH' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-TH' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'TH-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-TH' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-TH-1, 2 checks, or 
            Art-TH-1, 2 checks, or 
            Aside-TH-1, 2 checks, or 
            BibEntry-TH-1, 2 checks, or 
            BlockQuote-TH-1, 2 checks, or 
            Caption-TH-1, 2 checks, or 
            Code-TH-1, 2 checks, or 
            Document-TH-1, 2 checks, or 
            DocumentFragment-TH-1, 2 checks, or 
            Em-TH-1, 2 checks, or 
            FENote-TH-1, 2 checks, or 
            Figure-TH-1, 2 checks, or 
            Form-TH-1, 2 checks, or 
            Formula-TH-1, 2 checks, or 
            H-TH-1, 2 checks, or 
            Hn-TH-1, 12 checks, or 
            Index-TH-1, 2 checks, or 
            L-TH-1, 2 checks, or 
            LBody-TH-1, 2 checks, or 
            LI-TH-1, 2 checks, or 
            Lbl-TH-1, 2 checks, or 
            Link-TH-1, 2 checks, or 
            Note-TH-1, 2 checks, or 
            P-TH-1, 2 checks, or 
            Quote-TH-1, 2 checks, or 
            RB-TH-1, 2 checks, or 
            RP-TH-1, 2 checks, or 
            RT-TH-1, 2 checks, or 
            Reference-TH-1, 2 checks, or 
            Ruby-TH-1, 2 checks, or 
            Sect-TH-1, 2 checks, or 
            Span-TH-1, 2 checks, or 
            Strong-TH-1, 2 checks, or 
            StructTreeRoot-TH-1, 7 checks, or 
            Sub-TH-1, 2 checks, or 
            TBody-TH-1, 2 checks, or 
            TD-TH-1, 2 checks, or 
            TFoot-TH-1, 2 checks, or 
            TH-H-1, 1 check, or 
            TH-TH-1, 2 checks, or 
            THead-TH-1, 2 checks, or 
            TOC-TH-1, 2 checks, or 
            TOCI-TH-1, 2 checks, or 
            Table-TH-1, 2 checks, or 
            Title-TH-1, 2 checks, or 
            WP-TH-1, 2 checks, or 
            WT-TH-1, 2 checks, or 
            Warichu-TH-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETHead' or
            (@clause = 'Annot-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-THead' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-THead' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-THead' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-THead-1, 2 checks, or 
            Art-THead-1, 2 checks, or 
            Aside-THead-1, 2 checks, or 
            BibEntry-THead-1, 2 checks, or 
            BlockQuote-THead-1, 2 checks, or 
            Caption-THead-1, 2 checks, or 
            Code-THead-1, 2 checks, or 
            Document-THead-1, 2 checks, or 
            DocumentFragment-THead-1, 2 checks, or 
            Em-THead-1, 2 checks, or 
            FENote-THead-1, 2 checks, or 
            Figure-THead-1, 2 checks, or 
            Form-THead-1, 2 checks, or 
            Formula-THead-1, 2 checks, or 
            H-THead-1, 2 checks, or 
            Hn-THead-1, 12 checks, or 
            Index-THead-1, 2 checks, or 
            L-THead-1, 2 checks, or 
            LBody-THead-1, 2 checks, or 
            LI-THead-1, 2 checks, or 
            Lbl-THead-1, 2 checks, or 
            Link-THead-1, 2 checks, or 
            Note-THead-1, 2 checks, or 
            P-THead-1, 2 checks, or 
            Quote-THead-1, 2 checks, or 
            RB-THead-1, 2 checks, or 
            RP-THead-1, 2 checks, or 
            RT-THead-1, 2 checks, or 
            Reference-THead-1, 2 checks, or 
            Ruby-THead-1, 2 checks, or 
            Sect-THead-1, 2 checks, or 
            Span-THead-1, 2 checks, or 
            Strong-THead-1, 2 checks, or 
            StructTreeRoot-THead-1, 7 checks, or 
            Sub-THead-1, 2 checks, or 
            TBody-THead-1, 2 checks, or 
            TD-THead-1, 2 checks, or 
            TFoot-THead-1, 2 checks, or 
            TH-THead-1, 2 checks, or 
            THead-THead-1, 2 checks, or 
            TOC-THead-1, 2 checks, or 
            TOCI-THead-1, 2 checks, or 
            TR-THead-1, 2 checks, or 
            Title-THead-1, 2 checks, or 
            WP-THead-1, 2 checks, or 
            WT-THead-1, 2 checks, or 
            Warichu-THead-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETOC' or
            (@clause = 'Annot-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-TOC' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-TOC' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'TR-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-TOC' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-TOC-1, 2 checks, or 
            BibEntry-TOC-1, 2 checks, or 
            Caption-TOC-1, 2 checks, or 
            Code-TOC-1, 2 checks, or 
            Em-TOC-1, 2 checks, or 
            FENote-TOC-1, 2 checks, or 
            Figure-TOC-1, 2 checks, or 
            Form-TOC-1, 2 checks, or 
            Formula-TOC-1, 2 checks, or 
            H-TOC-1, 2 checks, or 
            Hn-TOC-1, 12 checks, or 
            Index-TOC-1, 2 checks, or 
            L-TOC-1, 2 checks, or 
            LBody-TOC-1, 2 checks, or 
            LI-TOC-1, 2 checks, or 
            Lbl-TOC-1, 2 checks, or 
            Link-TOC-1, 2 checks, or 
            Note-TOC-1, 2 checks, or 
            P-TOC-1, 2 checks, or 
            Quote-TOC-1, 2 checks, or 
            RB-TOC-1, 2 checks, or 
            RP-TOC-1, 2 checks, or 
            RT-TOC-1, 2 checks, or 
            Reference-TOC-1, 2 checks, or 
            Ruby-TOC-1, 2 checks, or 
            Span-TOC-1, 2 checks, or 
            Strong-TOC-1, 2 checks, or 
            StructTreeRoot-TOC-1, 7 checks, or 
            Sub-TOC-1, 2 checks, or 
            TBody-TOC-1, 2 checks, or 
            TD-TOC-1, 2 checks, or 
            TFoot-TOC-1, 2 checks, or 
            TH-TOC-1, 2 checks, or 
            THead-TOC-1, 2 checks, or 
            TOC-Caption-1, 1 check, or 
            TR-TOC-1, 2 checks, or 
            Table-TOC-1, 2 checks, or 
            Title-TOC-1, 2 checks, or 
            WP-TOC-1, 2 checks, or 
            WT-TOC-1, 2 checks, or 
            Warichu-TOC-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETOCI' or
            (@clause = '8.2.5.8' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Annot-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-TOCI' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-TOCI' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-TOCI' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.8-1, 115 checks, or 
            Annot-TOCI-1, 2 checks, or 
            Art-TOCI-1, 2 checks, or 
            Aside-TOCI-1, 2 checks, or 
            BibEntry-TOCI-1, 2 checks, or 
            BlockQuote-TOCI-1, 2 checks, or 
            Caption-TOCI-1, 2 checks, or 
            Code-TOCI-1, 2 checks, or 
            Document-TOCI-1, 2 checks, or 
            DocumentFragment-TOCI-1, 2 checks, or 
            Em-TOCI-1, 2 checks, or 
            FENote-TOCI-1, 2 checks, or 
            Figure-TOCI-1, 2 checks, or 
            Form-TOCI-1, 2 checks, or 
            Formula-TOCI-1, 2 checks, or 
            H-TOCI-1, 2 checks, or 
            Hn-TOCI-1, 12 checks, or 
            Index-TOCI-1, 2 checks, or 
            L-TOCI-1, 2 checks, or 
            LBody-TOCI-1, 2 checks, or 
            LI-TOCI-1, 2 checks, or 
            Lbl-TOCI-1, 2 checks, or 
            Link-TOCI-1, 2 checks, or 
            Note-TOCI-1, 2 checks, or 
            P-TOCI-1, 2 checks, or 
            Quote-TOCI-1, 2 checks, or 
            RB-TOCI-1, 2 checks, or 
            RP-TOCI-1, 2 checks, or 
            RT-TOCI-1, 2 checks, or 
            Reference-TOCI-1, 2 checks, or 
            Ruby-TOCI-1, 2 checks, or 
            Sect-TOCI-1, 2 checks, or 
            Span-TOCI-1, 2 checks, or 
            Strong-TOCI-1, 2 checks, or 
            StructTreeRoot-TOCI-1, 7 checks, or 
            Sub-TOCI-1, 2 checks, or 
            TBody-TOCI-1, 2 checks, or 
            TD-TOCI-1, 2 checks, or 
            TFoot-TOCI-1, 2 checks, or 
            TH-TOCI-1, 2 checks, or 
            THead-TOCI-1, 2 checks, or 
            TOCI-TOCI-1, 2 checks, or 
            TR-TOCI-1, 2 checks, or 
            Table-TOCI-1, 2 checks, or 
            Title-TOCI-1, 2 checks, or 
            WP-TOCI-1, 2 checks, or 
            WT-TOCI-1, 2 checks, or 
            Warichu-TOCI-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETR' or
            (@clause = 'Annot-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-TR' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-TR' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-TR' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-TR-1, 2 checks, or 
            Art-TR-1, 2 checks, or 
            Aside-TR-1, 2 checks, or 
            BibEntry-TR-1, 2 checks, or 
            BlockQuote-TR-1, 2 checks, or 
            Caption-TR-1, 2 checks, or 
            Code-TR-1, 2 checks, or 
            Document-TR-1, 2 checks, or 
            DocumentFragment-TR-1, 2 checks, or 
            Em-TR-1, 2 checks, or 
            FENote-TR-1, 2 checks, or 
            Figure-TR-1, 2 checks, or 
            Form-TR-1, 2 checks, or 
            Formula-TR-1, 2 checks, or 
            H-TR-1, 2 checks, or 
            Hn-TR-1, 12 checks, or 
            Index-TR-1, 2 checks, or 
            L-TR-1, 2 checks, or 
            LBody-TR-1, 2 checks, or 
            LI-TR-1, 2 checks, or 
            Lbl-TR-1, 2 checks, or 
            Link-TR-1, 2 checks, or 
            Note-TR-1, 2 checks, or 
            P-TR-1, 2 checks, or 
            Quote-TR-1, 2 checks, or 
            RB-TR-1, 2 checks, or 
            RP-TR-1, 2 checks, or 
            RT-TR-1, 2 checks, or 
            Reference-TR-1, 2 checks, or 
            Ruby-TR-1, 2 checks, or 
            Sect-TR-1, 2 checks, or 
            Span-TR-1, 2 checks, or 
            Strong-TR-1, 2 checks, or 
            StructTreeRoot-TR-1, 7 checks, or 
            Sub-TR-1, 2 checks, or 
            TD-TR-1, 2 checks, or 
            TH-TR-1, 2 checks, or 
            TOC-TR-1, 2 checks, or 
            TOCI-TR-1, 2 checks, or 
            TR-TR-1, 2 checks, or 
            Title-TR-1, 2 checks, or 
            WP-TR-1, 2 checks, or 
            WT-TR-1, 2 checks, or 
            Warichu-TR-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETable' or
            (@clause = 'BibEntry-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-Table' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'L-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Table' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table-TFoot' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table-THead' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Table' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            BibEntry-Table-1, 2 checks, or 
            Code-Table-1, 2 checks, or 
            Em-Table-1, 2 checks, or 
            H-Table-1, 2 checks, or 
            Hn-Table-1, 12 checks, or 
            L-Table-1, 2 checks, or 
            LI-Table-1, 2 checks, or 
            Lbl-Table-1, 2 checks, or 
            Quote-Table-1, 2 checks, or 
            RB-Table-1, 2 checks, or 
            RP-Table-1, 2 checks, or 
            RT-Table-1, 2 checks, or 
            Reference-Table-1, 2 checks, or 
            Ruby-Table-1, 2 checks, or 
            Span-Table-1, 2 checks, or 
            Strong-Table-1, 2 checks, or 
            StructTreeRoot-Table-1, 7 checks, or 
            Sub-Table-1, 2 checks, or 
            TBody-Table-1, 2 checks, or 
            TFoot-Table-1, 2 checks, or 
            THead-Table-1, 2 checks, or 
            TOC-Table-1, 2 checks, or 
            TOCI-Table-1, 2 checks, or 
            TR-Table-1, 2 checks, or 
            Table-Caption-1, 1 check, or 
            Table-TFoot-1, 1 check, or 
            Table-THead-1, 1 check, or 
            Table-Table-1, 2 checks, or 
            WP-Table-1, 2 checks, or 
            WT-Table-1, 2 checks, or 
            Warichu-Table-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETitle' or
            (@clause = 'Aside-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-Title' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Title' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Title-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Title' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Aside-Title-1, 2 checks, or 
            BibEntry-Title-1, 2 checks, or 
            BlockQuote-Title-1, 2 checks, or 
            Caption-Title-1, 2 checks, or 
            Code-Title-1, 2 checks, or 
            Em-Title-1, 2 checks, or 
            FENote-Title-1, 2 checks, or 
            Figure-Title-1, 2 checks, or 
            Form-Title-1, 2 checks, or 
            Formula-Title-1, 2 checks, or 
            H-Title-1, 2 checks, or 
            Hn-Title-1, 12 checks, or 
            Index-Title-1, 2 checks, or 
            L-Title-1, 2 checks, or 
            LBody-Title-1, 2 checks, or 
            LI-Title-1, 2 checks, or 
            Lbl-Title-1, 2 checks, or 
            Note-Title-1, 2 checks, or 
            P-Title-1, 2 checks, or 
            Quote-Title-1, 2 checks, or 
            RB-Title-1, 2 checks, or 
            RP-Title-1, 2 checks, or 
            RT-Title-1, 2 checks, or 
            Reference-Title-1, 2 checks, or 
            Ruby-Title-1, 2 checks, or 
            Span-Title-1, 2 checks, or 
            Strong-Title-1, 2 checks, or 
            StructTreeRoot-Title-1, 7 checks, or 
            Sub-Title-1, 2 checks, or 
            TBody-Title-1, 2 checks, or 
            TD-Title-1, 2 checks, or 
            TFoot-Title-1, 2 checks, or 
            TH-Title-1, 2 checks, or 
            THead-Title-1, 2 checks, or 
            TOC-Title-1, 2 checks, or 
            TOCI-Title-1, 2 checks, or 
            TR-Title-1, 2 checks, or 
            Table-Title-1, 2 checks, or 
            Title-Caption-1, 1 check, or 
            Title-Title-1, 2 checks, or 
            WP-Title-1, 2 checks, or 
            WT-Title-1, 2 checks, or 
            Warichu-Title-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWP' or
            (@clause = 'Annot-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-WP' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-WP' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-WP' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-WP-1, 2 checks, or 
            Art-WP-1, 2 checks, or 
            Aside-WP-1, 2 checks, or 
            BibEntry-WP-1, 2 checks, or 
            BlockQuote-WP-1, 2 checks, or 
            Caption-WP-1, 2 checks, or 
            Code-WP-1, 2 checks, or 
            Document-WP-1, 2 checks, or 
            DocumentFragment-WP-1, 2 checks, or 
            Em-WP-1, 2 checks, or 
            FENote-WP-1, 2 checks, or 
            Figure-WP-1, 2 checks, or 
            Form-WP-1, 2 checks, or 
            Formula-WP-1, 2 checks, or 
            H-WP-1, 2 checks, or 
            Hn-WP-1, 12 checks, or 
            Index-WP-1, 2 checks, or 
            L-WP-1, 2 checks, or 
            LBody-WP-1, 2 checks, or 
            LI-WP-1, 2 checks, or 
            Lbl-WP-1, 2 checks, or 
            Link-WP-1, 2 checks, or 
            Note-WP-1, 2 checks, or 
            P-WP-1, 2 checks, or 
            Quote-WP-1, 2 checks, or 
            RB-WP-1, 2 checks, or 
            RP-WP-1, 2 checks, or 
            RT-WP-1, 2 checks, or 
            Reference-WP-1, 2 checks, or 
            Ruby-WP-1, 2 checks, or 
            Sect-WP-1, 2 checks, or 
            Span-WP-1, 2 checks, or 
            Strong-WP-1, 2 checks, or 
            StructTreeRoot-WP-1, 7 checks, or 
            Sub-WP-1, 2 checks, or 
            TBody-WP-1, 2 checks, or 
            TD-WP-1, 2 checks, or 
            TFoot-WP-1, 2 checks, or 
            TH-WP-1, 2 checks, or 
            THead-WP-1, 2 checks, or 
            TOC-WP-1, 2 checks, or 
            TOCI-WP-1, 2 checks, or 
            TR-WP-1, 2 checks, or 
            Table-WP-1, 2 checks, or 
            Title-WP-1, 2 checks, or 
            WP-WP-1, 2 checks, or 
            WT-WP-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWT' or
            (@clause = 'Annot-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-WT' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-WT' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Sub-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-WT' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-WT-1, 2 checks, or 
            Art-WT-1, 2 checks, or 
            Aside-WT-1, 2 checks, or 
            BibEntry-WT-1, 2 checks, or 
            BlockQuote-WT-1, 2 checks, or 
            Caption-WT-1, 2 checks, or 
            Code-WT-1, 2 checks, or 
            Document-WT-1, 2 checks, or 
            DocumentFragment-WT-1, 2 checks, or 
            Em-WT-1, 2 checks, or 
            FENote-WT-1, 2 checks, or 
            Figure-WT-1, 2 checks, or 
            Form-WT-1, 2 checks, or 
            Formula-WT-1, 2 checks, or 
            H-WT-1, 2 checks, or 
            Hn-WT-1, 12 checks, or 
            Index-WT-1, 2 checks, or 
            L-WT-1, 2 checks, or 
            LBody-WT-1, 2 checks, or 
            LI-WT-1, 2 checks, or 
            Lbl-WT-1, 2 checks, or 
            Link-WT-1, 2 checks, or 
            Note-WT-1, 2 checks, or 
            P-WT-1, 2 checks, or 
            Quote-WT-1, 2 checks, or 
            RB-WT-1, 2 checks, or 
            RP-WT-1, 2 checks, or 
            RT-WT-1, 2 checks, or 
            Reference-WT-1, 2 checks, or 
            Ruby-WT-1, 2 checks, or 
            Sect-WT-1, 2 checks, or 
            Span-WT-1, 2 checks, or 
            Strong-WT-1, 2 checks, or 
            StructTreeRoot-WT-1, 7 checks, or 
            Sub-WT-1, 2 checks, or 
            TBody-WT-1, 2 checks, or 
            TD-WT-1, 2 checks, or 
            TFoot-WT-1, 2 checks, or 
            TH-WT-1, 2 checks, or 
            THead-WT-1, 2 checks, or 
            TOC-WT-1, 2 checks, or 
            TOCI-WT-1, 2 checks, or 
            TR-WT-1, 2 checks, or 
            Table-WT-1, 2 checks, or 
            Title-WT-1, 2 checks, or 
            WP-WT-1, 2 checks, or 
            WT-WT-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWarichu' or
            (@clause = '8.2.5.24' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Art-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Index-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Warichu' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'TBody-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Warichu' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.24-1, 115 checks, or 
            Art-Warichu-1, 2 checks, or 
            Aside-Warichu-1, 2 checks, or 
            BibEntry-Warichu-1, 2 checks, or 
            BlockQuote-Warichu-1, 2 checks, or 
            Code-Warichu-1, 2 checks, or 
            Document-Warichu-1, 2 checks, or 
            DocumentFragment-Warichu-1, 2 checks, or 
            Form-Warichu-1, 2 checks, or 
            Index-Warichu-1, 2 checks, or 
            L-Warichu-1, 2 checks, or 
            LI-Warichu-1, 2 checks, or 
            RB-Warichu-1, 2 checks, or 
            RP-Warichu-1, 2 checks, or 
            RT-Warichu-1, 2 checks, or 
            Reference-Warichu-1, 2 checks, or 
            Ruby-Warichu-1, 2 checks, or 
            Sect-Warichu-1, 2 checks, or 
            StructTreeRoot-Warichu-1, 7 checks, or 
            TBody-Warichu-1, 2 checks, or 
            TFoot-Warichu-1, 2 checks, or 
            THead-Warichu-1, 2 checks, or 
            TOC-Warichu-1, 2 checks, or 
            TOCI-Warichu-1, 2 checks, or 
            TR-Warichu-1, 2 checks, or 
            Table-Warichu-1, 2 checks, or 
            WP-Warichu-1, 2 checks, or 
            WT-Warichu-1, 2 checks, or 
            Warichu-Warichu-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>


    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
