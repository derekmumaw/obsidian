[moc:: [[MOC SPArtifact]]]

# Introduction
## Implants
Implantable hardware plays an important role in the management of several orthopedic disease processes, both benign—as with hip replacements—and malignant—as with pathologic fractures and stabilization following extensive oncologic resections. Pathologic fractures are a frequent and dreaded complication of osseous metastatic disease with a prevalence of 28%[^@saadPathologicFracturesCorrelate2007] and an annual incidence of 5%[^@hernandezIncidenceBoneMetastases2018]. Of these, 56% undergo implant based fixation, either prophylactically or therapeutically[^@perezManagementPathologicFractures1972]. 87% of those patients undergo post-stabilization radiation therapy to enhance local control[^@wolanczykRadiotherapyBisphosphonatesSurgical2016]. With 1,950,000 new cancer diagnoses per year, this would suggest that nearly 50,000 patients per year require post-stabilization radiation therapy. As the rate of cancer diagnoses continues to rise, so too would we expect the need for post-operative radiation therapy. Post-operative radiation is also frequently required following extensive oncologic resections for sarcomas, many of which require stabilization with implants. This need is rising as well: the age-standardized incidence of bone sarcomas has been increasing by 1.2% per year[^@amadeoIncidenceTimeTrends2020].


Historically, metal-based implants have been used, owing to their excellent rigidity and strength as well as low reactivity. Unfortunately, this also necessarily creates significant imaging artifacts due to the high Z of these materials.

{_consider dropping below/integrating briefly above_}
Recently, carbon fiber spinal fixation hardware—with dramatically lower Z, approximating that of the surrounding tissue—have been developed in an attempt to address this issue; however, uptake has been slow. A survey[^@zavrasAttitudesTrendsUse2022] of surgeons in the North American Spine Society determined that these newer carbon fiber implants have a relatively low utilization with use in only 27% of anterior approaches and 15% of posterior approaches. As nearly three-quarters of these cases go on to receive postoperative radiotherapy, radiation treatment planning remains frequently complicated by the presence of artifact[^@khanCarbonFiberreinforcedPEEK2023].

## Implications for Radiotherapy
The presence of large metal implants affects radiotherapy in two ways: 1) by inducing artifacts in the planning CT imaging which affects _in silico_ radiation modeling, and 2) by attenuating the beam directly _in vivo_. Thus, any attempt to improve radiation dose delivery in proximity to metal implants must address one or both of these processes.

Furthermore, these 2 processes have different implications when considering proton therapy. In photon therapy, changes in material (and thus electron density) lead to increased attenuation and backscatter. In contrast, for proton therapy, changes in material (and thus relative stopping power) instead affect proton range. This suggests that dose distributions for protons are typically much more sensitive to changes in material: modelling predicts 5-10 times more sensitive.  Muller et al.[^@mullerDosimetricImpactStabilizing2020] calculated a 10-20% increase in dose heterogeneity (standard deviation) with a 6% change in stopping power of protons while the same 6% change in electron density caused less than 2% of increase in dose heterogeneity with photons. These errors, when propagated through the treatment planning system can cause severe under- or overdosing.

### Photon Therapy
As photon radiation tends to interact in a more predictable manner with the implants _in vivo_, _in silico_ imaging artifacts drive the dose-distribution abnormalities. This is largely due to the high Z-dependence of the photoelectric effect (which dominates at CT energies) while the Compton effect (which dominates at treatment energies) is relatively Z-independent. Much of the effort to address the imaging artifacts, then, focuses on the optimal artifact reduction algorithms—which typically perform quite well. For example, Akdeniz et al.[^@akdenizEffectsMetalImplants2019] shows dose alterations up to 6% out of the artifact plane and alterations up to 22% in-plane when conventional reconstruction algorithms were used for planning. With use of O-MAR algorithms, these were both reduced to 1%. Material composition is important: stainless steel results in much greater differences between reconstruction algorithm dose-distributions than does titanium [^@liDosimetricImpactCT2023].

Regardless of the implant material, with proper artifact reduction algorithms and an experienced team, high-quality volumetric modulated arc therapy (VMAT) plans are possible even in very challenging settings. Consider prostate treatment with bilateral hip prostheses: Cousins et al.[^@cousinsProstateRadiotherapySetting2021] showed that the presence of these implants resulted in only a minimal, 2.5% volume increase at high-dose levels (V80-95%) and a modest, 9% volume increase at intermediate-dose levels (V50%).

### Proton Therapy
Proton therapy, given the aforementioned sensitivity, provides a greater challenge and so it is even more important to account for imaging artifacts during treatment planning. Newhauser et al. [^@newhauserCanMegavoltageComputed2008] estimated that metal implants caused a 5-12 mm range error with uncorrected CT imaging. One technique is to use MVCT which would nearly eliminate streak artifacts. In the prior investigation, this improved range errors to < 3 mm and in Zhao et al.[^@zhaoDosePerturbationCaused2020], dose perturbation caused by metallic ports improved from ±100% with kVCT to only ±10% with MVCT. As the treatment planning system depends upon proper mapping of hounsfield units to relative stopping power, metal artifact reduction algorithms, while greatly reducing artifacts over the image as a whole, can actually _cause_ an artifact at the surface of the implant which can influence the resultant dose distribution. Jia et al.[^@jiaDosePerturbationEffect2015] showed an _in vitro_ 10% dose enhancement at the distal edge of a metal implant but the treatment planning system using OMAR imaging predicted a 10-17% relative dose _reduction_.

As photons typically are delivered via arc techniques, the exact orientation of the artifact and the relative position of the implant itself are less critical than in proton therapy where treatment is limited to only a few beam angles. Verburg et al.[^@verburgDosimetricAccuracyProton2013] demonstrated that artifact orientation dramatically affects the calculated dose distribution: perpendicularly-oriented artifacts produced a negligible impact while artifacts oriented perpendicularly within the beam produced range shifts of up to 10 mm.

Beyond artifact effects, the metal implants themselves result in significant dose perturbation. Lin et al.[^@limMicroscopicGoldParticleBased2009] reported a 5-9% dose reduction distal to gold fiducial markers; Newhauser et al.[^@newhauserMonteCarloSimulations2007] showed maximal dose reductions of 85% for gold, 35% for stainless steel, and 15% for titanium markers when oriented in parallel to the beam at the beam edge; and Giebeler et al.[^@giebelerDosePerturbationsImplanted2009] demonstrated distal dose reductions of 9-85% dependent upon helical gold marker size and orientation.

## Clinical Implications
More than simply an academic or dosimetric concern, this range and dose uncertainty translates directly into clinical outcomes. For patients with extracranial chordomas and sarcomas, multiple series have demonstrated significant absolute reductions in local control from 31%–70% when in close proximity to large metallic implants[^@rutzExtracranialChordomaOutcome2007][^@staabSpotScanningBasedProtonTherapy2011][^@delaneyPHASEIISTUDY2009][^@murrayPrognosticFactorsSpinal2020][^@sniderLongTermOutcomesPrognostic2018].
These local failures were found to translate to significant absolute reductions in overall survival of 14% in Snider et al.[^@sniderLongTermOutcomesPrognostic2018] and 18% in Murray et al.[^@murrayPrognosticFactorsSpinal2020].

## Opportunity for SPArc
Spot-scanned Proton Arc therapy (SPArc) is a new implementation of proton therapy where pencil-beam scanned protons are delivered continuously as the gantry moves through an arc, rather than stopping at pre-specified locations as in intensity modulated proton therapy (IMPT). This is analogous to the difference between VMAT and step-and-shoot intensity modulated radiation therapy (IMRT). Both proton and photon arc techniques are capable of greater high-dose conformality with reduced treatment times at the expense of increased volumes of low-dose irradiation of non-target tissue.

With IMPT's exquisite sensitivity to material-type and highly-directional response to imaging artifacts, tumors in close proximity to metal-implants have proven challenging to treat with protons thus far. This often necessitates treatment with VMAT which—while generating more predictable dose-distributions in these areas—sacrifices much of the low-dose advantage of IMPT. By spreading out the beam entry and increasing the degrees of freedom, SPArc has the potential to mitigate many of these issues with IMPT and improve dose-distributions in the presence of large metal implants while maintaining a low-dose advantage over VMAT. Herein, we compare SPArc to IMPT in this setting, expecting SPArc to generate plans with better coverage, greater homogeneity, and superior robustness. To our knowledge, this represents the first analysis of rotational protons in the setting of metal implants.

# Methods

## Patient Selection
A manual retrospective review of all patients undergoing simulation with O-MAR in the past 2 years was performed. From this list, cases were selected if they met our inclusion criteria of 1) having large metal implants circumscribing or within the target volume and 2) treated with curative intent. The inclusion criteria were designed to identify cases where traditional IMPT techniques may be advantageous but the presence of metal artifacts likely would create unsatisfactory dose-distributions. To facilitate analysis and ease interpretation, this list was further reduced to only those cases with a single dose-level.  This yielded 5 patients, all with spinal sites of disease with a mean volume of 135.3 cc (range: 30–280.5) which were treated to a median dose of 50.4 CGE (range: 45–54). Further details extracted from the electronic medical record are presented in Table 1. This study is approved by the Institutional Review Boards (IRB) 2017-455.

| Number | location | Histology    | Dose (CGE)/Frac. | CTV Volume (cc) | Implant Material         |
| ------ | -------- | ------------ | ---------------- | --------------- | ------------------------ |
| 1      | C-Spine  | Chordoma     | 50.4/28          | 72.4            | Titanium                 |
| 2      | T-Spine  | Meningioma   | 54/30            | 244.0           | Titanium                 |
| 3      | C-Spine  | Melanocytoma | 54/30            | 49.8            | Titanium                 |
| 4      | L-Spine  | Plasmacytoma | 45/25            | 280.5           | Titanium                 |
| 5      | T-Spine  | Hemangioma   | 45/25            | 30.0            | Cobalt Chromium/Platinum |

_Table 1. Patient characteristics_

## Treatment Planning
For each patient, RayStation 6.0 (RaySearch Laboratory, Stockholm, Sweden) was used to generate both 4-field IMPT and single-arc SPArc plans using the target volume, organs at risk (OAR), and planning goals from the original treatment. Specifically, IMPT plans were generated using an IBA ProteusONE® physics beam model (3.5 mm 1-sigma at isocenter) with four fields. SPArc plans with 2.5 degree sampling frequency through a single arc were generated using an in-house script implemented in RayStation. A Monte-Carlo algorithm was used with 0.3 cm^3 grid size. Robust optimization was performed using 3.5% range uncertainty and 3–5 mm setup uncertainty dependent upon immobilization technique and image-guidance setup accuracy.

## Dose-Volume Histogram Analysis
Following this, a total of 26 perturbation scenarios (using the aforementioned range and setup uncertainties) were generated for each treatment technique for each patient. Dose-volume histograms (DVH), normalized to both prescription dose and volume, were extracted for each dose perturbation.

Quality of the nominal plan was assessed on the basis of target coverage and hotspot magnitude using several conventional volume and dose parameters (V90%, V95%, V99%, V105%, V110%; D2%, D5%, D90%, D95%, and D98%). Wilcoxon Signed Rank was used to compare the two techniques at each of these metrics. The nominal DVHs from each patient were used to calculate a mean DVH for each technique. A volume-difference plot was generated by subtracting the volume at each dose level for each nominal SPArc-IMPT pair as well as for the mean DVH pair. At each dose level, significance of the difference was calculated via Wilcoxon Signed Rank.

The difference DVH allows for the calculation of a novel metric: integral target dose. Integral dose is generally used to measure the total dose delivered to the whole patient, usually as a means for comparing target conformity and/or secondary malignancy risk of two different treatment techniques. It is typically calculated by multiplying the mean dose to the whole body (Gy = J/Kg) by the volume (liters, presumed equivalent to kg); dimensional analysis then leaves us with units of joules (J). This concept could be extended to the target volume where a greater integral dose indicates greater energy delivered to the target. There is certainly conceptual overlap with conventional DVH parameters, though it has an advantage: it is a single measure that describes a range of DVH parameters, thereby increasing sensitivity. At equivalent minimum doses e.g. D95%, it should allow for facile comparison of target doses between techniques. In this case, the integral target dose difference between SPArc and IMPT was calculated.

## Homogeneity and Robustness Analysis
Nominal plan target volume homogeneity was assessed via the simple descriptive measures of standard deviation (SD), interquartile range (IQR), and range width as well as a calculated metric: homogeneity index (HI = D2% - D98%) as per Wu[^@wuSimultaneousIntegratedBoost2003]. Levene—a non-parametric test comparing the variances of samples—was used to assign a level of significance to the homogeneity of the nominal plan.

There are no widely-accepted measures of robustness and so we made use of two methods. First, we again used Levene, but on a perturbation-to-perturbation basis for each patient. The mean Levene statistic was then calculated for each technique. A more common method[^@yockRobustnessAnalysisExternal2019][^@eDevelopmentRobustnessEvaluation2021][^@liuRobustnessQuantificationMethods2016] involves calculating DVH band-widths or DVH confidence interval band-widths from the dose perturbations. Here, we calculated the mean widths between the 95% confidence interval bands of all dose perturbations per patient; these were then subjected to a paired t-test. For all analyses, α=0.05.

# Results
## Nominal Plan Dosimetry
Table 2 arrays the mean DVH metrics of the nominal plans for both SPArc and IMPT as well as their associated levels of significance. Compared to IMPT, target coverage with SPArc was significantly greater at all measured points from V90% to V99% with correspondingly greater target dose from D90% to D99%. Hotspot volume was significantly reduced at V105% with strong trends towards hotspot volume reduction at V110% and dose reduction at D2% and D5%. In all plans, all OAR constraints were met.

|       % | V90% | V95% | V99% | V105% | V110% | D90% | D95% | D99% | D2%   | D5%   |
| ------: | ---- | ---- | ---- | ----- | ----- | ---- | ---- | ---- | ----- | ----- |
|   SPArc | 99.6 | 99.0 | 93.6 | 1.0   | 0.0   | 99.4 | 98.7 | 97.0 | 104.4 | 103.8 |
|    IMPT | 95.5 | 89.9 | 70.6 | 8.0   | 0.5   | 95.0 | 90.8 | 84.3 | 107.7 | 105.9 |
| p-value | 0.03 | 0.03 | 0.03 | 0.03  | 0.05  | 0.03 | 0.03 | 0.03 | 0.06  | 0.06  |
_Table 2. selected dose-volume metrics and Wilcoxon Signed Rank test p-value._

Figure 1 plots the DVH for both SPArc (top) and IMPT (bottom) for each perturbation for each patient (with the nominal plan emphasized) and the mean of all nominal plans in thick black.  Examining the intervening mean DVH-difference curve allows for more nuanced comparisons of the volume advantage of SPArc. We see the aforementioned V90-99% advantage of SPArc clearly reiterated as a steady rise in the volume difference, reaching significance from V84.7% to V100.1%. In the region below the prescription dose level, SPArc increases coverage by a mean of 8.5% up to a maximum of 24.9%. Above the prescription dose level, beginning at V102.3%, SPArc reduced hotspot volumes relative to IMPT, gaining significance from V104.6% to V107.5%. In this range, SPArc reduced hotspot volumes by a mean of 4.6% up to a maximum of 8.0%.

![[img_Abstract_fig1.png#invert]]

_Figure 1: Prescription-normalized dose volume histograms of nominal plans (colored thick lines), perturbed plans (colored thin lines), and mean nominal plan (black line). The intervening volume difference plot shows the percentage volume difference (SPArc – IMPT) at each dose level with the red segments indicating significance (p<0.05)._ 

Using the difference DVH we can calculate an integral target dose difference of 13.7% prescription Joules in favor of SPArc. Of this, we find 14.4% more Joules delivered below the prescription dose (consistent with greater target coverage) and 0.7% fewer Joules delivered above the prescription dose (consistent with reduced hotspots).

## Homogeneity
SPArc generates more homogenous plans than IMPT as measured by standard deviation (2.3 vs. 6.2%), interquartile range (1.9 vs. 4.1%), range width (22.7 vs. 56.2%), Wu's Homogeneity Index (mean: 0.07 vs. 0.21, p=0.03), and by nominal plan Levene (statistic: 65, p<1x10-14). This is depicted in Figure 2 with mirrored gaussian kernel density estimations for SPArc (leftwards) and IMPT (rightwards) where the y-axis width of the distribution represents the range of maximum voxel doses in the target volume: narrow spikes suggest more homogenous doses (large volumes at similar doses) while wider, more gradual spreads represent more heterogeneity. Boxplots are provided for more conventional comparison metrics and show us consistent medians both across plans and between techniques. The leftwards SPArc plots show a tighter distribution for every patient than do the rightwards IMPT plots, indicating greater homogeneity.

![[img_Abstract_fig2.png#invert]]

_Figure 2: Gaussian Kernel Density Estimation mirror plots comparing the distribution of voxel doses for each patient for SPArc (left) and IMPT (right) plans; narrow distributions indicate greater homogeneity. Thin lines indicate individual perturbation distributions, thick black lines indicate the mean distribution, and the red lines indicate the nominal plan distribution. Inlaid boxplots follow the mean distribution._  

## Robustness

SPArc also shows greater greater robustness as measured by perturbation-to-perturbation Levene (mean statistic: 1.1 vs. 1.6) and a strong trend towards a reduced mean DVH 95% CI width (mean: 1.82% vs. 2.52%, p=0.052). Figure 3 depicts this, again via a mirror plot. In this case, the upper half represents SPArc while the lower half represents IMPT with color pairs representing individual patients and the black lines their means. Confidence intervals are more narrow at every dose level with SPArc except for at a small area in immediate proximity to the prescription dose (largely due to the steepness of the dose gradient there).

![[img_Abstract_fig3.png#invert]]

_Figure 3. A mirror plot of 95% confidence interval (CI) width by volume. The top half depicts SPArc plans while the bottom half depicts IMPT. Each color pair represents individual patients and the black line represents their mean. Values closer to 0 represent less perturbation-to-perturbation variation._

# Discussion
## Surface-level Interpretation
The physical properties of protons allow for better dose distributions than photons under many conditions with modest reductions in entry dose proximal to the target and massive reductions in exit dose distal to the target. Thus, it has become an import modality in pediatrics and retreatment where limiting dose outside of the target is of upmost importance. There are, however, some scenarios where proton therapy may perform worse: namely, in the presence of large metal implants which cause significant imaging artifact and dose perturbation. These effects disproportionately degrade proton dose-distributions due to their limited beam numbers and exquisite range-sensitivity while photon arc plans remain comparatively unaffected[^@mullerDosimetricImpactStabilizing2020]. So, in these cases, photon plans are often required to ensure acceptable homogeneity, even though they sacrifice the low-dose advantage of proton plans.

SPArc may mitigate the shortcomings of existing static IMPT techniques in this regard. By providing a continuous space of beam-entry, thereby increasing the degrees of freedom of the optimizer, SPArc should be capable of significantly greater homogeneity around complex metal implants. With greater homogeneity comes superior target coverage through elimination of cold spots as well as better hotspot management. Finally, we would expect these plans to have greater robustness with less sensitivity to range and setup uncertainty, again, given the multiple directions from which dose is delivered.

This is what we see in our analysis.

## More Nuanced Interpretation of the Results
### DVH Superiority
DVH analysis shows significantly greater target coverage with SPArc as measured by DVH point values, the DVH dose-difference curve, and integral target dose. Of these, the intervening dose-difference curve in Figure 1 shows this the most clearly with a slow, steady increase, peaking at 24.9%. In cases without the complication of metal implants, the advantage of SPArc over IMPT is typically in generating greater dose conformity and limiting moderate doses outside the target volume; in general, target coverage is no different between the techniques. In the cases here, however, target coverage by IMPT is degraded by the metal implants, generating cold spots. SPArc effectively "fills in" those cold spots, delivering, on average, 14.4% more Joules to the target below the prescription dose. Conversely—though to a lesser degree—SPArc was able to reduce hotspot doses, again evidenced in the DVH point values, dose-difference curve, and the integral target dose, the last of which shows a 0.7% reduction in Joules delivered above the prescription dose level.

### Greater Homogeneity
Increased homogeneity is the proposed mechanism by which target coverage was improved and so we provided several, more direct measures of this. More simplistic measures of dispersion—standard deviation, interquartile range, and range width—are all substantially reduced (each by a factor of over 2) with use of SPArc. A more complex measure, Wu's Homogeneity Index, is reduced by a factor of 3 in favor of SPArc with a paired t-test showing significance. More complex still, Levene's test of variances of the nominal plans showed SPArc to produce more homogeneous plans with a very high level of significance. As with the DVH analysis, this is most clearly demonstrated graphically. Figure 2 shows the density of maximal voxel doses for SPArc and IMPT plans for each patient. In every comparison, SPArc generates much tighter, narrower distributions indicating a greater homogeneity.

### Greater Robustness
SPArc plans also demonstrated greater robustness, as determined by comparing the range of perturbation dose distributions generated. Using Levene to compare the groups of perturbations for SPArc and IMPT gives us mean statistics of 1.1 and 1.6, respectively. This statistic is essentially the ratio of between-group variability and within-group variability. As the mean doses are are all comparable (and so the between-group variability should be minimal), the difference in statistic value will be driven by the within-group variability. Applying this to the SPArc and IMPT statistics suggests a nearly 50% greater within-group variation with IMPT. The more common metric involving confidence interval band-width was consistent with this as well with mean 95% confidence intervals of 1.82% and 2.52% respectively, though it did not quite reach statistical significance at p=0.052. Once again, this is most clearly demonstrated graphically. Figure 3 compares the confidence intervals for SPArc and IMPT. Here, confidence intervals closer to zero indicate less variation between perturbations. Aside from a small dose-region in the immediate vicinity of the prescription dose, SPArc confidence intervals were less at every dose-level, indicating greater robustness.

## Consistency of Results with prior Literature
These results are consistent with the prior literature showing the dramatic sensitivity of the proton doses to metal artifacts: Verberg et al.[^@verburgDosimetricAccuracyProton2013] showed proton range shifts of up to 10 mm and several studies[^@limMicroscopicGoldParticleBased2009][^@newhauserMonteCarloSimulations2007][^@giebelerDosePerturbationsImplanted2009] showing distal dose reductions from 5-85% dependent upon material, size, and orientation. Though our analysis does not permit a direct comparison to these numbers, the observed homogeneity issues in the IMPT plan are certainly consistent with these effects.

## Limitations
The biggest limitation with our study is the low number of cases (n=5) which reduces the power of analysis. Additional patients could have been added, however, this would have necessitated compromising one or both of the inclusion criteria which would compromise the ability to generalize our findings to relevant clinical scenarios. To this same end, we chose to analyze the DVH by normalized volume and dose, thus allowing for estimations of the effect size at any prescription dose level and tumor size. Another limitation of the study is that it was limited to spine tumors. Though this is a common area where hardware is employed—and an area where proton therapy would provide a substantial dosimetric advantage over photons—it is certainly not the only relevant area: our analysis would have been strengthened by inclusion of pelvic, extremity, and craniofacial sites of disease.

## Future Directions
Our results are promising and compel further investigation into use of SPArc for treatment in close proximity to metal artifacts. As mentioned in the preceding paragraph, additional sites of disease would help to generalize the results. A comparison to VMAT may be beneficial as well, though, given the excellent target coverage seen here with SPArc, we would expect differences to be primarily seen in dose conformity and dose to surrounding structures. This analysis is instead focused on assessing target coverage and homogeneity, thus limiting the usefulness of a VMAT comparison. Finally, the most important future investigations would be _in vitro_ phantom tests and, ultimately, an _in vivo_ comparison.

# Conclusion
Herein, we have demonstrated the feasibility of SPArc for treatment of disease in the immediate presence of metal implants. We have also shown superiority over existing IMPT techniques, offering increased target coverage, reduced hotspots, superior homogeneity, and greater robustness. This technique provides a novel solution for a challenging clinical scenario and is deserving of further investigation.

# Citations

[^@NationalJointRegistry2019]:[[@NationalJointRegistry2019]]
[^@saadPathologicFracturesCorrelate2007]:[[@saadPathologicFracturesCorrelate2007]]
[^@hernandezIncidenceBoneMetastases2018]:[[@hernandezIncidenceBoneMetastases2018]]
[^@perezManagementPathologicFractures1972]:[[@perezManagementPathologicFractures1972]]
[^@wolanczykRadiotherapyBisphosphonatesSurgical2016]:[[@wolanczykRadiotherapyBisphosphonatesSurgical2016]]
[^@amadeoIncidenceTimeTrends2020]: [[@amadeoIncidenceTimeTrends2020]]
[^@zavrasAttitudesTrendsUse2022]:[[@zavrasAttitudesTrendsUse2022]]
[^@khanCarbonFiberreinforcedPEEK2023]:[[@khanCarbonFiberreinforcedPEEK2023]]
[^@mullerDosimetricImpactStabilizing2020]:[[@mullerDosimetricImpactStabilizing2020]]
[^@akdenizEffectsMetalImplants2019]:[[@akdenizEffectsMetalImplants2019]]
[^@liDosimetricImpactCT2023]:[[@liDosimetricImpactCT2023]]
[^@cousinsProstateRadiotherapySetting2021]:[[@cousinsProstateRadiotherapySetting2021]]
[^@newhauserCanMegavoltageComputed2008]:[[@newhauserCanMegavoltageComputed2008]]
[^@zhaoDosePerturbationCaused2020]:[[@zhaoDosePerturbationCaused2020]]
[^@jiaDosePerturbationEffect2015]:[[@jiaDosePerturbationEffect2015]]
[^@verburgDosimetricAccuracyProton2013]:[[@verburgDosimetricAccuracyProton2013]]
[^@limMicroscopicGoldParticleBased2009]:[[@limMicroscopicGoldParticleBased2009]]
[^@newhauserMonteCarloSimulations2007]:[[@newhauserMonteCarloSimulations2007]]
[^@giebelerDosePerturbationsImplanted2009]:[[@giebelerDosePerturbationsImplanted2009]]
[^@rutzExtracranialChordomaOutcome2007]:[[@rutzExtracranialChordomaOutcome2007]]
[^@staabSpotScanningBasedProtonTherapy2011]:[[@staabSpotScanningBasedProtonTherapy2011]]
[^@delaneyPHASEIISTUDY2009]:[[@delaneyPHASEIISTUDY2009]]
[^@murrayPrognosticFactorsSpinal2020]:[[@murrayPrognosticFactorsSpinal2020]]
[^@sniderLongTermOutcomesPrognostic2018]:[[@sniderLongTermOutcomesPrognostic2018]]
[^@sniderLongTermOutcomesPrognostic2018]:[[@sniderLongTermOutcomesPrognostic2018]]
[^@murrayPrognosticFactorsSpinal2020]:[[@murrayPrognosticFactorsSpinal2020]]
[^@wuSimultaneousIntegratedBoost2003]: [[@wuSimultaneousIntegratedBoost2003]]
[^@yockRobustnessAnalysisExternal2019]: [[@yockRobustnessAnalysisExternal2019]]
[^@eDevelopmentRobustnessEvaluation2021]: [[@eDevelopmentRobustnessEvaluation2021]]
[^@liuRobustnessQuantificationMethods2016]: [[@liuRobustnessQuantificationMethods2016]]
