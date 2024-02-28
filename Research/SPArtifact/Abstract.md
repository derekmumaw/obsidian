## Purpose
Protons are exquisitely sensitive to large metal artifacts and, with current intensity modulated proton therapy (IMPT) techniques, can generate large-magnitude underand overdosing of targets. Herein we introduce a spot-scanning proton arc (SPArc) approach to facilitate proton therapy in close proximity to large metal artifacts and provide a dosimetric comparison to IMPT.

## Methods
Single dose level, curative-intent plans were generated for 5 patients with large metal implants circumscribing or within the target volume. Both 4-field IMPT and single-arc SPArc plans were generated for each patient with robustness assessment performed at all combinations of range errors of 0 and 3.5 mm and translational errors of ±3 mm in x, y, and z. DVH relative to prescription dose  for all 52 resultant dose-distributions per patient were extracted and used to quantify target volume homogeneity via standard deviation (SD), interquartile range (IQR), Levene's variance test, and homogeneity index (HI) (D_2 - D_98) as per Wu 2003 (PMID: 12738335)[^wu2003]. Robustness was quantified via Levene and 95% confidence interval (CI) width. Dose-difference curves were constructed, allowing for direct dose comparison via paired t-test and integral dose comparisons.

## Results
### Homogeneity
SPArc generates more homogenous plans than IMPT as measured by SD (2.8 vs. 5.8%), IQR (2 vs. 4.5%), HI (mean: 9.1 vs. 19.66, p=0.0095), and by Levene (statistic: 21, p<0.00001).

![[img_Abstract_fig1-1.png]]

### Robustness
SPArc also showed greater robustness than IMPT as measured by perturbation-to-perturbation Levene (mean statistic: 0.85 vs. 1.70) and CI width (mean: 0.79 vs. 1.07).

### Dosimetric Advantage
Examining the area under the mean dose-difference curve shows that, compared to IMPT, SPArc delivers an integral of 16.1% more dose below the prescription dose level and only 1.6% more dose over the prescription dose level—a ratio of 10.1 in favor of SPArc.

![[img_Abstract_fig2-1.png]]

## Conclusion
In comparison to IMPT, SPArc therapy achieved significantly greater homogeneity, robustness, and target coverage in the immediate presence of large metal artifacts.

[^wu2003]: [[@wuSimultaneousIntegratedBoost2003]]