## Implants

### [[@saadPathologicFracturesCorrelate2007|Pathologic fractures correlate with reduced survival in patients with malignant bone disease]]
- 28% average rate of pathologic fractures overall

### [[@perezManagementPathologicFractures1972|Management of pathologic fractures]]
- 56% rate of implant-based management of pathologic fractures

## [[@liEstimatedNumberPrevalent2012|Estimated number of prevalent cases of metastatic bone disease in the US adult population]]
- 280000 bone metastases patients per year

### [[@hernandezPrevalenceBoneMetastases2015|Prevalence of bone metastases and bone-targeting agent use among solid tumor patients in the United States]]
- 330000 bone metastases patients per year

### [[@khanCarbonFiberreinforcedPEEK2023|Carbon fiber-reinforced PEEK spinal implants for primary and metastatic spine tumors: A systematic review on implant complications and radiotherapy benefits.]]
- PORT: 72.5%
	- 41.0% SBRT, 30.8% EBRT, 25.6% PBT, 2.6% C-
	- **may need a better source for RT types (non CF exclusive**
- protons play a role in these situations (which could grow with SPArc)
- only with studies that look at CF implants

### [[@zavrasAttitudesTrendsUse2022|Attitudes and trends in the use of radiolucent spinal implants: A survey of the North American Spine Society section of spinal oncology.]]
- only 27% of anterior and 15% of posterior reconstructions use RT-friendly CF implants
	- highlights importance of techniques to improve RT predictability (i.e. SPArc)

---

## Photon
### [[@akdenizEffectsMetalImplants2019|Effects of metal implants and a metal artifact reduction tool on calculation accuracy of AAA and Acuros XB algorithms in small fields.]]
- provides a nice quantification of artifact distortion in photon plans
- Stainless Steel
- out of plane: +2-6% uncorrected, -1% w/OMAR
- in plane: +22% uncorrected, -1% w/OMAR
- Titanium had much less distortion

### [[@liDosimetricImpactCT2023|Dosimetric impact of CT metal artifact reduction for spinal implants in stereotactic body radiotherapy planning.]]
- similar to [[@akdenizEffectsMetalImplants2019]]
- titanium does well (<1% changes on DVH, G\[1,1\] > 94%)

### [[@banaeeEvaluatingEffectsMetal2021|Evaluating the effects of metal artifacts on dose distribution of the pelvic region.]]
- 3.8 MU/fraction increase if hip prosthesis aren't manually contoured
- _more about planning with a large metal object rather than dealing with artifact_

### [[@cousinsProstateRadiotherapySetting2021|Prostate radiotherapy in the setting of bilateral hip prostheses: All commonly used photon-based radiation approaches are feasible.]]
- provides difference in terms of DVH values (easy to interpret)
- presence of metal implant ->
	- up to 2.5% increase in high dose to rectum/bladder,
	- 9% increase at rectal and bladder V50%,
- _more about planning with a large metal object rather than dealing with artifact_

### [[@huangApproachesReducingPhoton2016|Approaches to reducing photon dose calculation errors near metal implants.]]
- metal -> dose calculation errors (>10%)
- artifact algorithms improved dose accuracy only about <1%
- absolute dose differences (compared to film), titanium:
	- proximal ~2%, distal 2-8%

---

## Proton
### [[@zhaoDosePerturbationCaused2020|Dose perturbation caused by metallic port in breast tissue expander in proton beam therapy.]]
- very practical patient population (JTD!)
- MVCT plans (dose-perturbation factor ±10%) are better than kVCT plans (±100%)

### [[@newhauserCanMegavoltageComputed2008|Can megavoltage computed tomography reduce proton range uncertainties in treatment plans for patients with large metal implants?]]
- streak artifacts -> range uncertainty. No streaking in MVCT
- uncorrected kVCT: 5-12mm range errors
- corrected kVCT: < 3mm
- uncorrected MVCT: < 3mm
- conclusion: contour on kVCT, plan on MVCT
- **review PDF**

### [[@dietlicherEffectSurgicalTitanium2014|The effect of surgical titanium rods on proton therapy delivered for cervical bone tumors: Experimental validation using an anthropomorphic phantom.]]
- excellent comparison with film nice gamma maps
- doesn't describe actual dose differences other than a max point dose difference of 18%

| γ pass rate        | SFUD | IMPT |
| ------------------ | ---- | ---- |
| artifact corrected | 97   | 98   |
| uncorrected        | 82   | -     |

### [[@jiaDosePerturbationEffect2015|Dose perturbation effect of metallic spinal implants in proton beam therapy.]]

| dose enhancement at edge | Stainless steel | titanium |
| ------------------------ | --------------- | -------- |
| measured (film)          | 12              | 8        |
| TPS                      | -5              | -2       |
| difference               | -17             | -10      |

- in reality, there is ~10% dose enhancement at metal edge, but TPS will suggest a 10-15% relative reduction
- a little further out, there is an artificial enhancement in dose up to 9% within 5mm

### [[@verburgDosimetricAccuracyProton2013|Dosimetric accuracy of proton therapy for chordoma patients with titanium implants.]]
- passively scattered protons
- metal artifacts -> 6-10mm range errors, >10% dose differences in high-dose area
- impact of artifact depends on orientation of proton beam (worst when artifact travels perpendicularly within beam)
	- SPArc should dramatically improve this (more orientations to spread out this effect)

### [[@mullerDosimetricImpactStabilizing2020|The dosimetric impact of stabilizing spinal implants in radiotherapy treatment planning with protons and photons: Standard titanium alloy vs. Radiolucent Carbon‐fiber‐reinforced PEEK systems]]
- VMAT: not sensitive to minor changes in electron density for TI or CF
- IMPT: much more sensitive to minor changes in stopping power
	- 7.6% increase in SD for TI
	- 3.4% increase in SD for CF
	- thus, CF is preferred (more predictable)

### [[@staabSpotScanningBasedProtonTherapy2011|Spot-Scanning-Based Proton Therapy for Extracranial Chordoma]]
- 70% decrease in 5y-LC with surgical stabilization (i.e. presence of metal implant).
- non-significant 11% reduction in OS
- 5y LC: 100 → 30%. p=0.0003
- 5y DFS: 86% → 30%. p=0.032
- 5y OS: 75 → 86%. p=0.381
- Reasons for ^
	- ==affects the accuracy of…==
		- surgical resection as need for stabilization indicates a more complex operation
		- target delineation due to artifacts
		- implant size determination for density overriding (especially with OMAR)
		- TPS calculations of normal tissue attenuation and range calculations due to artifacts
		- TPS calculations of attenuation, range calculations, and scatter modelling within the implant
	- … all of which ultimately increase the likelihood of poor oncologic outcomes.

# Notes from Zheng Lit Review
From Zheng's [clinical impact lit review](https://spectrumhealth-my.sharepoint.com/personal/weili_zheng_corewellhealth_org/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fweili%5Fzheng%5Fcorewellhealth%5Forg%2FDocuments%2FFor%20Derek%2Fclinical%20study%20of%20implant%20effect)

### [[@indelicatoProspectiveOutcomesStudy2016]]
- difficulties near implants
	- streak artifacts
	- difficulty estimating implant size (even with OMAR)
	- TPS handling of laterally scattered protons ("high density water" isn't equivalent to metal or ceramic—see [[Zheng Implant 2022]])
		- Verberg and Seco: Monte Carlo vs. TPS on a titanium rod
			- range differences up to 10mm, dose differences up to 10%
- Clinical impact mitigated by use of large numbers of treatment fields. They used a minimum of 7 fields when metal was present. They also mixed with photon.
	- _would be even better with SPArc_

### [[@rutzExtracranialChordomaOutcome2007]]
- UVA: implant → LF p=0.034
- 3y LF: 100 → 69%
- Reasons for ^
	- more aggressive disease requiring stabilization
	- indicates more difficult surgery → increased likelihood for residual disease
	- CT artifacts
	- dose perturbation
	- dose reduction due to increased hotspots
	- cold-spots due to implant

### [[@sniderLongTermOutcomesPrognostic2018]]
- MVA: implant
	- LC: p=0.002. HR 0.29
	- Disease control: p=0.003. HR 0.34
- UVA: implant
	- LC: p= 0.01
	- Disease control: p= 0.003
	- OS: p=0.01
- 5y LC: 76 → 46%
- 5y DC: 72 → 34%
- 5y OS: 87 → 73%
- Reasons for ^
	- implant is a proxy for more aggressive/larger disease
	- not secondary to dose perturbation (in this study)

### [[@delaneyPHASEIISTUDY2009]]
- LF decreased 31% vs 12%. p=0.103

### [[@murrayPrognosticFactorsSpinal2020]]
- 5y LC: 50 → 73%. p=0.02
- 5y OS: 67 → 85%. p=0.002