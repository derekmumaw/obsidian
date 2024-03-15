# Basics
## Sim
- 4DCT
	- 1-2 mm slices
- IV contrast; consider esophageal contrast
- SBRT lung cradle with vacuum bag
- no fiducials necessary

## Volumes
### OARs
- AIP is optimal for dose calculation and for OAR delineation.

### GTV
- lung window for parenchymal lesions
- mediastinal window otherwise

### ITV
- on single phase of 4DCT then propagate 
- MIP may speed things up
- important to confirm on all phases of the breathing cycle, regardless

### PTV
- ITV + (0.5 cm radial, 0.6 cm CC)

## Planning
- Arcs or minimum of 7 beams non-opposing non-coplanar

### Prescription
- typically 80% IDL,
- Onishi used 100% isocenter 

| dose/fx   | BED10   | trial |
| --------- | ------- | ----- |
| 60/3      | **180** |       |
| 54/3      | **151** | 0236  |
| 34/1      | **150** | 0915  |
| ==60/5==  | **132** |       |
| 70/10     | **119** |       |
| 54/5      | **113** | HyTEC |
| ==50/4==  | **112** |       |
| 65/10     | 100     |       |
| ==48/4==  | 105     | 0915  |
| ==60/8==  | 105     | HILUS |
| 50/5      | 100     |       |
| ==60/15== | 84      | NCIC  |

### PTV
- V100% ≥ 95%
- V90% ≥ 99%

#### Hot Spots
- typically 120%–150%
	- typically to 80% IDL → 125% hotspot expected (1/0.8=1.25)

#### Conformity Index (CI) = PIV/PTV
- ideal: < 1.1-1.2
- acceptable: < 1.5

#### High Dose Spillage
- Volume outside PTV getting 105% should be < 15% of PTV
- D2cm is max dose (in %) at 2 cm from PTV in any direction
	- < 50-60% (5 fx) or < 30-40% (3 fx) 

#### Low Dose Spillage
- R50 (50%ILD vol/PTV vol) = 50% Rx

## Ultracentral Exceptions
- consider < 120% PTV dmax
- MDACC:
	- ITV V100% > 99%
	- PTV V95% > 99%
	- PTV Dmax < 120%
- ensure ITV coverage, consider sacrificing on PTV, if absolutely necessary (MDACC, UCLA)

### RTOG 0813
![[img_Ultracentral Dose Contraints_rtog0813.png#invert]]

#### OARs
##### Lung constraints:
- V20 < 10%, < 15% minor deviation.
- V13.5 Gy < 1000 cc
- V12.5 Gy < 1500 cc
##### PBT constraints:
- D4cc < 18 Gy.
- Dmax < 105%.
	- Manyam data suggests Dmax closer to 90-95% may be more wise.
##### Brachial plexus:
- V30 < 3 cc.

### HILUS
#### Target
- CTV Dmin ≥ 85%
- PTV Dmin ≥ 80%
- PTV V95 ≥ 95%
- Rx to 67% IDL (i.e. center at 150% Rx)
	- [SUNSET](https://docs.google.com/document/d/1oKD3L5ieCk03FWU6fCnj8aiHKRPJD-q6IpjXpQCuexw/edit#bookmark=id.2btlcyn3xrm9) mandates hot spot < 120%

#### OARs
##### PBT
- max dose < 48.8 Gy to contralateral mainstem
- max dose < 56 Gy to ipsi mainstem