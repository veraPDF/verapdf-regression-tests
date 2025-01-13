<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: transitionaltag_part_test.pdf -->

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
            (@clause = 'Table 5. StructTreeRoot-Document' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.2-1, 1 check, or 
            StructTreeRoot-Document-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAnnot' or
            (@clause = 'Table 5. Form-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Annot' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Annot' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. BibEntry-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Art' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Art' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Artifact-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Artifact-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Ruby-Artifact' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Artifact' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Warichu-Artifact' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Aside-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Aside-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. BibEntry-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Aside' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Aside' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Aside' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-BibEntry' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-BibEntry' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. BlockQuote-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Code-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-BlockQuote' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-BlockQuote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-BlockQuote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Code-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Caption' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. LI-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Caption' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Caption' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Code' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Code' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Em-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Div' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Div' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Div' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Em-Div-1, 2 checks, or 
            H-Div-1, 2 checks, or 
            Hn-Div-1, 12 checks, or 
            L-Div-1, 2 checks, or 
            Lbl-Div-1, 2 checks, or 
            P-Div-1, 2 checks, or 
            Quote-Div-1, 2 checks, or 
            RB-Div-1, 2 checks, or 
            RP-Div-1, 2 checks, or 
            RT-Div-1, 2 checks, or 
            Reference-Div-1, 2 checks, or 
            Ruby-Div-1, 2 checks, or 
            Span-Div-1, 2 checks, or 
            Strong-Div-1, 2 checks, or 
            StructTreeRoot-Div-1, 7 checks, or 
            Sub-Div-1, 2 checks, or 
            TBody-Div-1, 2 checks, or 
            TFoot-Div-1, 2 checks, or 
            THead-Div-1, 2 checks, or 
            TOC-Div-1, 2 checks, or 
            TR-Div-1, 2 checks, or 
            Table-Div-1, 2 checks, or 
            WP-Div-1, 2 checks, or 
            WT-Div-1, 2 checks, or 
            Warichu-Div-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDocument' or
            (@clause = 'Table 5. Annot-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Em-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Document' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sub-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Document' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Em-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-DocumentFragment' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-DocumentFragment' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-DocumentFragment' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Em' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Em' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. L-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-FENote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-FENote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Code-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Figure-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. L-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Figure' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Figure' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Form-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Form' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Form' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Formula-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. L-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Formula' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Formula' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Art' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. H-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Sect' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Hn-H' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-H' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-H' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Code-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Em-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. FENote-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Form-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. H-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Hn-Art' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = 'Table 5. Hn-Hn' and @testNumber = '1' and @failedChecks = '72') or 
            (@clause = 'Table 5. Hn-Sect' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = 'Table 5. L-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. LI-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Lbl-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Note-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. P-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Quote-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. RB-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. RP-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. RT-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Reference-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Ruby-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Span-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Strong-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. StructTreeRoot-Hn' and @testNumber = '1' and @failedChecks = '42') or 
            (@clause = 'Table 5. Sub-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TBody-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TFoot-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. THead-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TOC-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TOCI-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TR-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Table-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Title-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. WP-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. WT-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Warichu-Hn' and @testNumber = '1' and @failedChecks = '12')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Index' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Index' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Index' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-L' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. LI-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-L' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-L' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-LBody' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. LBody-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. LBody-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-LBody' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-LBody' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-LI' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-LI' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-LI' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Code-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Lbl' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Lbl' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Form-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Link' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Link' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. StructTreeRoot-NonStruct' and @testNumber = '1' and @failedChecks = '7')">Failed rules, Expected: 
            StructTreeRoot-NonStruct-1, 7 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENote' or
            (@clause = '8.2.5.14' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Table 5. L-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Note' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Note' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Code-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-P' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-P' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-P' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Em-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. H-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Hn-Part' and @testNumber = '1' and @failedChecks = '24') or 
            (@clause = 'Table 5. L-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. LI-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Lbl-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. P-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Quote-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. RB-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. RP-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. RT-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Reference-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Ruby-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Span-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Strong-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. StructTreeRoot-Part' and @testNumber = '1' and @failedChecks = '13') or 
            (@clause = 'Table 5. Sub-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TBody-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TD-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TFoot-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TH-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. THead-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TOC-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TOCI-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TR-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Table-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. WP-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. WT-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Warichu-Part' and @testNumber = '1' and @failedChecks = '4')">Failed rules, Expected: 
            Em-Part-1, 4 checks, or 
            H-Part-1, 4 checks, or 
            Hn-Part-1, 24 checks, or 
            L-Part-1, 4 checks, or 
            LI-Part-1, 4 checks, or 
            Lbl-Part-1, 4 checks, or 
            P-Part-1, 4 checks, or 
            Quote-Part-1, 4 checks, or 
            RB-Part-1, 4 checks, or 
            RP-Part-1, 4 checks, or 
            RT-Part-1, 4 checks, or 
            Reference-Part-1, 4 checks, or 
            Ruby-Part-1, 4 checks, or 
            Span-Part-1, 4 checks, or 
            Strong-Part-1, 4 checks, or 
            StructTreeRoot-Part-1, 13 checks, or 
            Sub-Part-1, 4 checks, or 
            TBody-Part-1, 4 checks, or 
            TD-Part-1, 4 checks, or 
            TFoot-Part-1, 4 checks, or 
            TH-Part-1, 4 checks, or 
            THead-Part-1, 4 checks, or 
            TOC-Part-1, 4 checks, or 
            TOCI-Part-1, 4 checks, or 
            TR-Part-1, 4 checks, or 
            Table-Part-1, 4 checks, or 
            WP-Part-1, 4 checks, or 
            WT-Part-1, 4 checks, or 
            Warichu-Part-1, 4 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPrivate' or
            (@clause = 'Table 5. Annot-Private' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Private' and @testNumber = '1' and @failedChecks = '7')">Failed rules, Expected: 
            Annot-Private-1, 2 checks, or 
            StructTreeRoot-Private-1, 7 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEQuote' or
            (@clause = 'Table 5. Art-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Quote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Quote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-RB' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-RB' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-RB' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-RP' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-RP' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-RP' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-RT' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-RT' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-RT' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Reference' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Reference' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Ruby' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Ruby' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Span-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Sect' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Sect' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Span' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Span' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Strong' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Strong' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Sub' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Sub' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TBody' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TBody' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TBody' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TD' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TD' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TD-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TD' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TFoot' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TFoot' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TFoot' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TH' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TH' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TH-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TH' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-THead' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-THead' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-THead' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TOC' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TOC' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TR-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TOC' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TOCI' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TOCI' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TOCI' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TR' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TR' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TR' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. BibEntry-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Table' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Table' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Table-TFoot' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Table-THead' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Table-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Table' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Aside-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Title' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Title' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Title-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Title' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-WP' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-WP' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-WP' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Annot-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-WT' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-WT' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-WT' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
            (@clause = 'Table 5. Art-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Warichu' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Warichu' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
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
