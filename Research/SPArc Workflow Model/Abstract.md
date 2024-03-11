## Background and Aims
Spot-scanning Proton Arc Therapy (SPArc) is a new delivery technique which promises faster treatment times over existing step-and-shoot Intensity Modulated Proton Therapy techniques. There has been an increase in demand for proton therapy resulting in many new centers being built and the retrofitting of additional treatment vaults in existing centers. To explore the added value of additional vaults in light of the increased throughput offered by SPArc, we constructed a model.

## Methods
A model was developed incorporating SPArc and IMPT machine delays obtained from de Jong et al. (PMID: 36373893), patient couch setup  and egress time  (13.3 min.), irradiation time (IMPT: 2.4 min./field, SPArc: 4 min./arc), and beamline switching time (30 sec.), To more accurately model real world use-cases, the model can also account for anesthesia (an additional 20 min.) The model's patient throughput and duty-cycle predictions were validated with two institutions' clinical logfiles. The model was then used to quantify the effects of vault number and anesthesia requirements on patient throughput and on-couch waiting time per patient, assuming a 15-hour clinical operation day. 


## Results
Validation was successful. With a single vault for 11 hours, the model predicted 22.9 treatments compared to 21 reflected in the clinical logfiles (20% anesthesia). With a 2-vault setup for 8.3 hours, the model predicted 33.4 treatments compared to 35 logged treatments (5% anesthesia). In the latter scenario, duty cycle logs were available: the model prediction (23%) and logfiles (26%) agreed closely. 

In simulation, median maximum daily throughput increased logarithmically with increasing vault number (#) for both SPArc (patient throughput = 33 + 96 x log(#): r^2=0.96) and IMPT (patient throughput = 32 + 63 x log(#): r^2=0.99). SPArc was able to treat 24%, 25%, 29%, 37%, and 49% more patients than IMPT in 1–5 vaults, respectively. Median on-couch waiting times (minutes) increased quadratically with increasing vault number (#) for both SPArc (wait = -0.54# + 0.29#^2 + 0.86: r^2=0.99) and IMPT (wait = 1.25# + 0.63#^2 + 0.01: r^2=1.0). Compared to IMPT, SPArc reduced on-couch wait times by 77±4%, consistent across vault counts.


## Conclusion
SPArc can improve the treatment workflow efficiency across all the proton center configurations. More daily treatment throughput was observed in centers with more treatment rooms, reducing patient waiting time on the couch.