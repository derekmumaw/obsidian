# Abstract
## Title
Spot-Scanning Proton Arc Therapy for Lattice Radiotherapy

Authors: D.A. Mumaw, J.S. Lee, B.A. Loving, P. Liu, B.F. Loughery, X. Cong, M.S. Stefani, R.L. Deraniyagala, M.F. Almahariq, T.J. Quinn, X. Ding

## Background And Aims
Herein we introduce a spot-scanning proton arc (SPArc) approach to spatially-fractionated ("lattice") radiotherapy.

## Methods
Lattice plans were generated for 10 large tumors using single-arc SPArc and 4-field intensity modulated proton therapy (IMPT) for an IBA ProteusONE benchmarked against a dual-arc volumetric modulated arc therapy (VMAT) technique. Lattice geometries were standardized and algorithmically generated to comply with Washington University in St. Louis’s existing protocol (doi.org/10.1016/j.adro.2020.100639): vertices were 1.5 cm in diameter and arrayed in a body-centered cubic lattice with a 6 cm period. Vertices were clipped within 0.5 cm of the target border or 1.5 cm of a critical Organ-At-Risk (OAR). The prescription dose was 20 Gy(RBE) in 5 fractions to the tumor periphery; vertices received a simultaneous integrated boost to 66.7 Gy(RBE). OAR constraints per AAPM TG-101 were prioritized. Dose Volume Histograms (DVH) were extracted and used to identify maximum, minimum, and mean doses; equivalent uniform dose (EUD); D95%, D50%, D10%, D5%; V19Gy; peak-to-valley dose ratio (PVDR); and gradient index (GI). The Wilcoxon signed-rank test was used to compare PVDR and GI between techniques as well as perform dose-wise comparisons between DVH (α=0.05).

## Results
Table 1 summarizes the results. Median tumor volume was 519 cc with a median of 4 high-dose vertices per plan. Figure 1 shows a representative tumor with plans from each technique and a line dose comparison. Low dose coverage was maintained in all plans (median V19Gy: SPArc 96%, IMPT 95%, VMAT 93%). SPArc generated significantly greater dose gradients as measured by median PVDR (SPArc 4.3, IMPT 4.0, VMAT 3.9; SPArc–IMPT p=0.002, SPArc–VMAT p=0.049) and median high-dose GI (SPArc 6.9, IMPT 9.6, VMAT 12.3; SPArc–IMPT p=0.002, SPArc–VMAT p=0.006).  OAR constraints were met in all plans. Figure 2 shows DVH information exhibiting a significant dosimetric advantage over VMAT (17–42 Gy, 71–86.5 Gy) and IMPT (20.5–36 Gy, 66–102.5 Gy).

## Conclusion
SPArc therapy achieved high-quality lattice plans with superior PVDR and GI for various disease sites compared to IMPT and VMAT. Future development of the SPArc-LATTICE technique is warranted for clinical implementation.

![[fig1.png|500]]![[fig2_light.png]]

|      | max   | min  | mean | EUD  | D95% | D90% | D50% | D20% | D10% | D5%  | D1%  | D0.1% | V19Gy | D1–D0 | D70–D90 | PVDR | Gradient | Complete | Partial | Total | GTV (cc) | % Lattice |
| ---- | ----- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ----- | ----- | ----- | ------- | ---- | -------- | -------- | ------- | ----- | -------- | --------- |
| mean | 10858 | 1218 | 4482 | 1972 | 1915 | 1971 | 2080 | 2216 | 2749 | 3952 | 7039 | 9605  | 96%   | 8950  | 2011    | 4.5  | 6.3      | 2.9      | 2.1     | 5.0   | 614      | 1.0%      |
| std  | 1377  | 361  | 568  | 238  | 53   | 27   | 23   | 66   | 322  | 492  | 642  | 1029  | 3%    | 971   | 16      | 0.5  | 1.8      | 2.2      | 1.9     | 3.8   | 503      | 0.0%      |
| min  | 9224  | 473  | 3818 | 1300 | 1816 | 1925 | 2044 | 2105 | 2265 | 3380 | 6135 | 8400  | 91%   | 7825  | 1990    | 3.9  | 3.8      | 1.0      | 0.0     | 2.0   | 147      | 1.0%      |
| 25%  | 10008 | 1125 | 4133 | 2013 | 1890 | 1955 | 2068 | 2184 | 2508 | 3523 | 6481 | 9013  | 94%   | 8269  | 2002    | 4.1  | 4.6      | 2.0      | 1.0     | 3.0   | 347      | 1.0%      |
| 50%  | 10272 | 1254 | 4237 | 2040 | 1914 | 1965 | 2084 | 2207 | 2727 | 3861 | 7038 | 9125  | 96%   | 8600  | 2006    | 4.3  | 6.9      | 2.0      | 1.5     | 4.0   | 519      | 1.0%      |
| 75%  | 12192 | 1300 | 5020 | 2055 | 1958 | 1996 | 2088 | 2238 | 2965 | 4366 | 7510 | 10350 | 98%   | 9775  | 2017    | 4.9  | 7.7      | 3.0      | 3.0     | 5.0   | 691      | 1.0%      |
| max  | 12819 | 1800 | 5303 | 2097 | 1982 | 2008 | 2124 | 2364 | 3312 | 4708 | 7981 | 11300 | 100%  | 10400 | 2047    | 5.2  | 8.5      | 9.0      | 6.0     | 15.0  | 1920     | 2.0%      |

