
[[Research/SPArtifact/Literature Review]]

# Questions
## Inclusion criteria
- CTV within or entirely surrounded by large metal artifact
- OMAR available
- treated with curative intent
- single dose-level

## Planning
- SPArc vs. IMPT 3-4 field
	- with implant avoidance in the beam settings
	- consider addressing VMAT as supplement or if reviewers object
- Dose: prescription dose as originally used. 
	- will report as relative % Rx 
		- absolute GyE may complicate interpretation
		- plus it's just a matter of beam time and the results should scale easily to whatever dose

## Metrics
- StdDev, D2, D98 of PTV values
	- per [Muller 2020](https://pubmed.ncbi.nlm.nih.gov/32476247/)
- range error? dose perturbation
	- 
- Some quantification of the effect of distortion based on proximity to implant (not necessarily a per-modality comparison)
- 

# Action Items
## Study
- [x] Identify existing patients with hardware. (n=12)
- [x] Identify 5 best patients to run initial analysis
- [x] Determine single best dose/fractionation to plan to
- [ ] Generate plans, extract DVH
- [ ] run robustness 3.5
- [ ] Run stats on resultant DVH data

## Paper
- [ ] Merge Weili's introduction (especially proton interaction with the implant itself)
- [ ] Expand clinical implications section

# Notes from 3/5
- Using similar OAR constraints, we get better target coverage with SPArc
- "metal as avoidance structure" produces a greater advantage with SPArc
	- problems are not nearly as apparent when "shooting through" with IMPT. 
	- Much more applicable with SS or denser. 
	- This is a point in the discussion (and briefly methods)
- Photon-IMPT mix would be a nice 3rd arm
	- 1/3 photons to fill in the cold spots from IMPT
	- maybe for the next plan