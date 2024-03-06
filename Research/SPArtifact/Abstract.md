## Purpose
Protons are exquisitely sensitive to large metal artifacts and, with current intensity modulated proton therapy (IMPT) techniques, can generate large-magnitude underand overdosing of targets. Herein we introduce a spot-scanning proton arc (SPArc) approach to facilitate proton therapy in close proximity to large metal artifacts and provide a dosimetric comparison to IMPT.

## Methods
Single dose level, curative-intent plans were generated for 5 patients with large metal implants circumscribing or within the target volume. Both 4-field IMPT and single-arc SPArc plans were generated for each patient with robustness assessment performed at all combinations of range errors of 0 and 3.5 mm and translational errors of ±3 mm in x, y, and z. DVH relative to prescription dose  for all 52 resultant dose-distributions per patient were extracted and used to quantify target volume homogeneity via standard deviation (SD), interquartile range (IQR), range, Levene's variance test, and homogeneity index (HI) (D_2 - D_98) as per Wu 2003 (PMID: 12738335)[^wu2003]. Robustness was quantified via Levene and 95% confidence interval (CI) width. Dose-difference curves were constructed, allowing for direct dose comparison via paired t-test and integral dose comparisons. α=0.05 for all analyses. 

## Results
### Homogeneity
SPArc generates more homogenous plans than IMPT as measured by SD (3.5 vs. 7.7%), IQR (2.8 vs. 5.9%), range (34.4 vs. 68.6%), HI (mean: 11.71 vs. 29.61, p=0.0028), and by Levene (statistic: 66, p<$1\times10^{-14}$).

![[img_Abstract_fig1-1.png]]

### Robustness
SPArc also showed greater robustness than IMPT as measured by perturbation-to-perturbation Levene (mean statistic: 1.1 vs. 1.6) and a strong trend towards a reduced mean CI width (mean: 0.91 vs. 1.26, p=0.052).

### Dosimetric Advantage
Examining the area under the mean dose-difference curve shows that, compared to IMPT, SPArc delivers an 18.6% more integral dose below the prescription dose level and spares 3.6% more integral dose above the prescription dose level—an overall integral benefit of 22.2% in favor of SPArc. The difference plot reveals significantly greater volumes at dose levels from 79.6% to 100.3% with an 8.5% volume advantage over this range. 

![[img_Abstract_fig2-1.png]]

## Conclusion
In comparison to IMPT, SPArc therapy achieved significantly greater homogeneity, robustness, and target coverage in the immediate presence of large metal artifacts.

[^wu2003]: [[@wuSimultaneousIntegratedBoost2003]]