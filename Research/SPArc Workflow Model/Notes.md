---
title: "A Quantitative Investigation of the Treatment Efficiency and Daily Patient Throughput Improvement Via Spot-scanning Proton Arc Therapy"
authors: [Jacob Iwrey, Peng Wang , Xiaoda Cong, Stefan Both, Bas De Jong, Erik Korevaar, Zishen Wang, Peilin Liu, Xiaoqiang Li, Xi Cao, Gang Liu, Rohan Deraniyagala, Craig Stevens, Xiaoshu Gao, Xuanfeng Din]
year: 2024
pub: "PTCOG"
doi: NA (Abstract)
moc: ""
---
>[!info]
A Quantitative Investigation of the Treatment Efficiency and Daily Patient Throughput Improvement Via Spot-scanning Proton Arc Therapy
_Jacob Iwrey, Peng Wang , Xiaoda Cong, Stefan Both, Bas De Jong, Erik Korevaar, Zishen Wang, Peilin Liu, Xiaoqiang Li, Xi Cao, Gang Liu, Rohan Deraniyagala, Craig Stevens, Xiaoshu Gao, Xuanfeng Din_
**PTCOG abstract**. 2024

# Abstract
## Background and Aims
> - [ ] Quick intro to SPArc (with advantages over IMPT)
> - [ ] Bridge predicted speed advantage into proposed advantage in the clinic
> 	- [ ] introduce metrics of number of patients treated, more efficient cyclotron duty time, reduced wait times)
> - [ ] commentary on multiple rooms (in context of beamline)
> - [ ] Need for this analysis
> 	- [ ] imminence of SPArc
> 	- [ ] rapid expansion of proton machines and planning number of vaults (cite IBA data on new machines/year)

The goal is to determine the efficiency of using Spot-scanning Proton Arc therapy (SPArc), a promising new treatment modality, compared to the conventional Intensity Modulated Proton Therapy (IMPT) in single and multi-room proton therapy centers with varying patient populations (e.g., percentage of anesthesia patients and number of fields per patient).

## Methods
>- [ ] Define patient/institution characteristics for inclusion.
>- [ ] clarify timing assumptions (look for other sources to corroborate)
>- [ ] Expand algorithm logic, validation, and estimation descriptions
>- [ ] Define endpoints and analytical methods

### Delays
#### Machine Delays
| parameter            | Delay (Sec) | modality    |
| -------------------- | ----------- | ----------- |
| Gantry Rotation Time | 11.4        | IMPT        |
| Gantry Warning Time  | 2.55        | IMPT, SPArc |
| Gantry Delay         | 13.0        | IMPT, SPArc |
| Field Delay          | 13.0        | IMPT, SPArc |

- from [^1]
- IMPT per field wait time: 39.95 seconds
- SPArc wait time: 28.55 seconds

##### Multiroom Assumptions
- room switching time (beam line): 30s

#### Patient Setup time
- patient ingress and positioning: 10.3mins
	- determined from 33 Beaumont patients
- anesthesia setup: 20mins additional
	- _evidence for 20 minutes?_
	- [ ] _ask Marley/therapists for anesthesia patient list_
- patient egress time: 3 min
- patient clothing change time: 5 min

#### Proton Delivery time
- IMPT: 2.4mins per field
	- calculated from _in vivo_ data of 33 Beaumont patients using [[#Machine Delays]]
	- [ ] _these 33 patients were published? need to find reference_
- SPArc: 4mins
	- calculated from _in silico_ data of 33 Beaumont patients

### Validation
- Endpoints: predicted patient throughput and duty cycle % validated based on two institutions' clinical logfiles
	- INOVA (Virginia)
		- 8.383 hour day
		- 35 patients
		- 26.19% cyclotron duty cycle

### Estimation
- Endpoints: treatment throughput, patient waiting time on the treatment couch
	- Assumptions: 80% non-anesthesia patients, 20% anesthesia patients, 15-hour clinical operation day
		- _80:20 from Beaumont? Should try to generalize this_

## Results
> - [ ] Adjustment of figures for clarity
> - [ ] inclusion of tables for direct comparison
> - [ ] Extract more specific comparisons (effect of anesthesia, effect of faster dose rate, on-machine waiting times)

### Validation
- The clinical logfiles and the simulator’s predictions agreed closely.
- Dual-room, 8.3 hour day
	- Treatments:
		- Model: 33.44 treatments
		- Ground truth: 35 treatments (95% non-anesthesia patients and 5% with anesthesia)
	- Duty Cycle:
		- Model: 23% active
		- Ground truth: 26%.
- Single room, 11 hour day
	- Treatments:
		- Model: 22.9 treatments
		- Ground truth: 21 treatments (80% non-anesthesia patients and 20% anesthesia patients)
	- _Duty cycle?_ Doesn't matter for single-room setup (only patient setup times influence it, not treatment time). Very important in multiroom setups though

### Estimation
- Maximum daily treatment throughput prediction:

| rooms | Throughput | Waiting time (min) saved over IMPT |
| ----- | -----------:| ----------------------------------:|
| 1     |          25 |                                1.4 |
| 2     |          33 |                                4.0 |
| 3     |          47 |                                7.6 |
| 4     |          62 |                               11.9 |
| 5     |          77 |                               16.5 |

### 80:20 Normal:Anesthesia
![[img_Abstract_1.png#invert]]
- _interesting plateau after 4 vaults_

### ^ With Upgraded Dose-rate (x1.617)
![[img_Abstract_2.png#invert]]
- _where does 1.617 come from?_ to get to 1.5m per IMPT field. We should just pick one number so as to not confuse reviewers (pick the faster set).

### ^^ But 100% Normal
![[img_Abstract_3.png#invert]]
- _would love to see actual numbers/table to quantify anesthesia detriment. Maybe a relationship can be determined (e.g. $XX\%\ anesthesia * \#\ of\ vaults = \%\ reduction\ in\ number\ of\ patients$_)

### ^ With Upgraded Dose-rate (x1.617)
![[img_Abstract_4.png#invert]]

### 80:20 Normal:Anesthesia (wait Times on Couch in vault)
![[img_Abstract_5.png#invert]]
- _what does the single vault wait time indicate? Average treatment time?_
- _could we calculate wait time prior to treatment? (e.g. average time to vault availability)?_

### ^ But 100% Normal
![[img_Abstract_6.png#invert]]
- _surprisingly little change in wait times with anesthesia_
- _Discussion: intrafraction motion related to amount of time they wait on the table_

## Conclusion
- [ ] overall conclusion
- [ ] recapitulation of results with interpretation (areas where SPArc is clearly better, equivalent, or worse)
- [ ] implications for institutions thinking about developing a proton center (SPArc-capable? # of vaults?)
	- intrafraction motion (based on couch time)
	- financial benefit
	- increased access
- [ ] limitations
- [ ] future study
- [ ] overall conclusion

SPArc can improve the treatment workflow efficiency across all the proton center configurations. More daily treatment throughput was observed in centers with more treatment rooms, reducing patient waiting time on the couch

# Notes

# PDF

[^1]: de Jong BA, Battinelli C, Free J, et al. Spot scanning proton arc therapy reduces toxicity in oropharyngeal cancer patients. Medical Physics. 2023;50(3):1305-1317. doi:10.1002/mp.16098