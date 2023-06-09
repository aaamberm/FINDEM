# FINDEM

## General

In this repository, you will find all analysis files that were used to
analyse the results of the FIND'EM trial conducted by Dutch blood bank
Sanquin. The trial was registered in the Dutch trial registry (NTR6738)
on September 29th, 2017
(<https://trialsearch.who.int/Trial2.aspx?TrialID=NTR6738>).

## Abstract

**Background** Blood donors are at increased risk for iron deficiency
and anemia. The current standard of Hb monitoring is insufficient to
ensure the maintenance of proper iron reserves and donor health, as Hb
levels do not fully reflect iron stores. Novel iron management
strategies such as iron supplementation and extended donation intervals
are warranted, including ferritin measurements to monitor iron
deficiency.

**Aims** To determine the effects of ferritin-guided donation intervals
for whole blood donors on Hb and ferritin levels, Hb deferral, iron
deficiency (ferritin \< 15 ng/mL), donor return, and iron
deficiency-related symptoms.

**Methods** Between November 2017 and November 2019, a ferritin-guided
donation interval policy was gradually implemented nationwide and
evaluated through a stepped-wedge cluster-randomized controlled trial by
Sanquin, the national blood service in the Netherlands. All blood
collection centers implemented the policy at one of six randomly
allocated time points. The new policy entails ferritin measurements in
all new donors and at every 5th whole blood donation in addition to Hb
monitoring. Subsequent donation intervals are extended to six months if
ferritin is 15 ≤ 30 ng/mL and to twelve months if ferritin is \<15
ng/mL. The primary outcomes are ferritin and Hb levels, iron deficiency,
Hb deferral (females \<12.5 g/dL, males \<13.5 g/dL), and donor return.
These were assessed in all donations during four pre-defined measurement
weeks before, during and after the implementation period. Secondary
outcomes are iron deficiency-related symptoms, specifically restless
legs syndrome (RLS), fatigue, pica, cognitive functioning, and warm
glow, and were assessed during the 2nd and 3rd measurement week using
questionnaires.

**Results**  We measured 36,099 donors, median age 43 years and 52% female, making 37,621 donations during the study period. Analyses suggest ferritin-guided donation intervals increased log-transformed ferritin levels at all time points in the trial, up to 0.24 log10 ng/mL as compared to baseline (95% CI 0.22 – 0.27, p <0.001). Hb increased as well, up to 0.37 g/dL (95% CI 0.31 – 0.43, p <0.001). Decreased odds of 85% (95% CI OR 0.10 – 0.21, p <0.001) for iron deficiency and 77% (95% CI OR 0.11 – 0.41, p <0.001) for Hb deferral were reported compared to baseline. Odds of donor return decreased over the course of the trial, as low as 40% (95% CI OR 0.51 – 0.71, p <0.001). We found no evidence for improved self-reported iron deficiency-related symptoms after implementation of the new policy.

**Conclusions** Ferritin-guided donation intervals are associated with
significantly higher overall Hb and ferritin levels, as well as lower
prevalence of iron deficiency and Hb deferrals in whole blood donors. No
improvements in iron deficiency-related symptoms were found, warranting
further research into health effects of iron deficiency in donors.
However, reporting of RLS increased, which may be due to increased
awareness. Our observations suggest ferritin-guided donation intervals
are beneficial for Hb levels and iron stores, but additional efforts are
required to retain donors.

## How to read?

For each part of the analyses, a Quarto and HTML file are available.
- FINDEM [QMD](FINDEM.qmd) & [HTML](FINDEM.html) files contain the analysis and results of the primary outcomes.
- FINDEM_questionnaire [QMD](FINDEM_questionnaire.qmd) & [HTML](FINDEM_questionnaire.html) files contain the analysis and results of the secondary, questionnaire-based, outcomes.
- FINDEM_tables_figures [QMD](FINDEM_tables_figures.qmd) & [HTML](FINDEM_tables_figures.html) files contain the scripts for creating the tables and figures in the manuscript or supplemental materials.

The Quarto (.qmd) files can be read and run using Rstudio, the HTML files can be downloaded to be viewed in a browser. 

## Study protocol

The published protocol of the FIND'EM study can be found here:
<https://pubmed.ncbi.nlm.nih.gov/32998766/>
