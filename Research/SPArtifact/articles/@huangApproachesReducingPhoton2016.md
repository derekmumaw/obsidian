---
title: Approaches to reducing photon dose calculation errors near metal implants.
authors:
  - Jessie Y. Huang
  - David S. Followill
  - Rebecca M. Howell
  - Xinming Liu
  - Dragan Mirkovic
  - Francesco C. Stingo
  - Stephen F. Kry
year: 2016
pub: Medical physics
doi: 10.1118/1.4960632
pmid: 27587042
moc: "[[SPArtifact]]"
---
>[!title]
[Approaches to reducing photon dose calculation errors near metal implants.](https://pubmed.ncbi.nlm.nih.gov/27587042/)

# Abstract
## PURPOSE
Dose calculation errors near metal implants are caused by limitations of the dose calculation algorithm in modeling tissue/metal interface effects as well as density assignment errors caused by imaging artifacts. The purpose of this study was to investigate two strategies for reducing dose calculation errors near metal implants: implementation of metal-based energy deposition kernels in the convolution/superposition (C/S) dose calculation method and use of metal artifact reduction methods for computed tomography (CT) imaging.

## METHODS
Both error reduction strategies were investigated using a simple geometric slab phantom with a rectangular metal insert (composed of titanium or Cerrobend), as well as two anthropomorphic phantoms (one with spinal hardware and one with dental fillings), designed to mimic relevant clinical scenarios. To assess the dosimetric impact of metal kernels, the authors implemented titanium and silver kernels in a commercial collapsed cone C/S algorithm. To assess the impact of CT metal artifact reduction methods, the authors performed dose calculations using baseline imaging techniques (uncorrected 120 kVp imaging) and three commercial metal artifact reduction methods: Philips Healthcare's o-mar, GE Healthcare's monochromatic gemstone spectral imaging (gsi) using dual-energy CT, and gsi with metal artifact reduction software (mars) applied. For the simple geometric phantom, radiochromic film was used to measure dose upstream and downstream of metal inserts. For the anthropomorphic phantoms, ion chambers and radiochromic film were used to quantify the benefit of the error reduction strategies.

## RESULTS
Metal kernels did not universally improve accuracy but rather resulted in better accuracy upstream of metal implants and decreased accuracy directly downstream. For the clinical cases (spinal hardware and dental fillings), metal kernels had very little impact on the dose calculation accuracy (<1.0%). Of the commercial CT artifact reduction methods investigated, the authors found that o-mar was the most consistent method, resulting in either improved dose calculation accuracy (dental case) or little impact on calculation accuracy (spine case). gsi was unsuccessful at reducing the severe artifacts caused by dental fillings and had very little impact on calculation accuracy. gsi with mars on the other hand gave mixed results, sometimes introducing metal distortion and increasing calculation errors (titanium rectangular implant and titanium spinal hardware) but other times very successfully reducing artifacts (Cerrobend rectangular implant and dental fillings).

## CONCLUSIONS
Though successful at improving dose calculation accuracy upstream of metal implants, metal kernels were not found to substantially improve accuracy for clinical cases. Of the commercial artifact reduction methods investigated, o-mar was found to be the most consistent candidate for all-purpose CT simulation imaging. The mars algorithm for gsi should be used with caution for titanium implants, larger implants, and implants located near heterogeneities as it can distort the size and shape of implants and increase calculation errors.

# Notes