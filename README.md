# FINDEM

## General

In this repository, you will find all analysis files that were used to analyse the results of the FIND'EM trial conducted by Dutch blood bank Sanquin. The trial was registered in the Dutch trial registry (NTR6738) on September 29th, 2017 (<https://trialsearch.who.int/Trial2.aspx?TrialID=NTR6738>).

## Abstract

**Background** Blood donors are at increased risk for iron deficiency and anemia. The current standard of Hb monitoring is insufficient to ensure the maintenance of proper iron reserves and donor health, as Hb levels do not fully reflect iron stores. Novel iron management strategies such as iron supplementation and extended donation intervals are warranted, including ferritin measurements to monitor iron deficiency.

**Aims** To determine the effects of ferritin-guided donation intervals for whole blood donors on Hb and ferritin levels, Hb deferral, iron deficiency (ferritin \< 15 ng/mL), donor return, and iron deficiency-related symptoms.

**Methods** Between November 2017 and November 2019, a ferritin-guided donation interval policy was gradually implemented nationwide and evaluated through a stepped-wedge cluster-randomized controlled trial by Sanquin, the national blood service in the Netherlands. All blood collection centers implemented the policy at one of six randomly allocated time points. The new policy entails ferritin measurements in all new donors and at every 5th whole blood donation in addition to Hb monitoring. Subsequent donation intervals are extended to six months if ferritin is 15 ≤ 30 ng/mL and to twelve months if ferritin is \<15 ng/mL. The primary outcomes are ferritin and Hb levels, iron deficiency, Hb deferral (females \<12.5 g/dL, males \<13.5 g/dL), and donor return. These were assessed in all donations during four pre-defined measurement weeks before, during and after the implementation period. Secondary outcomes are iron deficiency-related symptoms, specifically restless legs syndrome (RLS), fatigue, pica, cognitive functioning, and warm glow, and were assessed during the 2nd and 3rd measurement week using questionnaires.

**Results**  Between Sept 11, 2017, and Nov 27, 2020, 412 888 whole-blood donors visited a donation centre, and we did measurements on samples from 37 621 donations from 36 099 donors, median age 43 years and 52% women. Over 38 months, ferritin-guided donation intervals increased mean ferritin concentrations (by 0.18 log10 ng/mL [95% CI 0.15–0.22; p<0.0001] in male donors, 0.10 log10 ng/mL [0.06–0.15; p<0.0001] in premenopausal female donors, and 0.17 log10 ng/mL [0.12–0.21; p<0.0001] in postmenopausal female donors) and mean haemoglobin concentrations (by 0.30 g/dL [95% CI 0.22–0.38; p<0.0001] in male donors, 0.12 g/dL [0.03–0.20; p<0.0074] in premenopausal female donors, and 0.16 g/dL [0.05–0.27; p<0.0044] in postmenopausal female donors). Iron deficiency decreased by 36–38 month (odds ratio [OR] 0.24 [95% CI 0.18–0.31; p<0.0001] for male donors, 0.49 [0.37–0.64; p<0.0001] for premenopausal female donors, and 0.24 [0.15–0.37; p<0.0001] for postmenopausal female donors). At 36–38 months, haemoglobin based deferral decreased significantly in male donors (OR at 36–38 months 0.21 [95% CI 0.10–0.40, p<0.0001]) but not significantly in premenopausal or postmenopausal female donors (0.81 [0.54–1.20; p=0.29] and 0.50 [95% CI 0.25–0.98; p=0.051], respectively).

**Conclusions** Ferritin-guided donation intervals were significantly associated with increasing overall Hb and ferritin levels, thereby decreasing the prevalence of iron deficiency and Hb deferrals in whole blood donors. Ferritin-guided donation intervals seem beneficial for Hb levels and iron maintenance, but additional efforts are required to retain donors and to remedy self-reported iron deficiency-related symptoms.

## How to read?

For each part of the analyses, a Quarto and HTML file are available.
- FINDEM [QMD](FINDEM.qmd) & [HTML](FINDEM.html) files contain the analysis and results of the primary outcomes.
- FINDEM_questionnaire [QMD](FINDEM_questionnaire.qmd) & [HTML](FINDEM_questionnaire.html) files contain the analysis and results of the secondary, questionnaire-based, outcomes.
- FINDEM_tables_figures [QMD](FINDEM_tables_figures.qmd) & [HTML](FINDEM_tables_figures.html) files contain the scripts for creating the tables and figures in the manuscript.
- Supplementary_material [QMD](Supplementary_materials.qmd) & [HTML](Supplementary_materials.html) files contain the scripts for creating the tables and figures in supplementary materials.


The Quarto (.qmd) files can be read and run using Rstudio, the HTML files can be downloaded to be viewed in a browser. 

## Study protocol

The published protocol of the FIND'EM study can be found here: <https://pubmed.ncbi.nlm.nih.gov/32998766/>
