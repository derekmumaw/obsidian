## Background and Aims
Spot-scanning Proton Arc Therapy (SPArc) is a new delivery technique which promises faster treatment times over existing step-and-shoot Intensity Modulated Proton Therapy techniques. There has been an increase in demand for proton therapy resulting in many new centers being built and the retrofitting of additional treatment vaults in existing centers. To explore the added value of additional vaults in light of the increased throughput offered by SPArc, we constructed a model.

## Methods
A model was developed incorporating SPArc and IMPT machine delays obtained from de Jong et al. (PMID: 36373893), patient couch setup  and egress time  (13.3 min.), irradiation time (IMPT: 2.4 min./field, SPArc: 4 min./arc), and beamline switching time (30 sec.), To more accurately model real world use-cases, the model can also account for anesthesia (an additional 20 min.) The model's patient throughput and duty-cycle predictions were validated with two institutions' clinical logfiles. The model was then used to quantify the effects of vault number and anesthesia requirements on patient throughput and on-couch waiting time per patient, assuming a 15-hour clinical operation day. 


## Results
Validation was successful. With a single vault for 11 hours, the model predicted 22.9 treatments compared to 21 reflected in the clinical logfiles (20% anesthesia). With a 2-vault setup for 8.3 hours, the model predicted 33.4 treatments compared to 35 logged treatments (5% anesthesia). In the latter scenario, duty cycle logs were available: the model prediction (23%) and logfiles (26%) agreed closely. 

Daily through

Regarding the maximum daily treatment throughput prediction, SPArc increased 25%, 33%, 47%, 62%, and 77% (Figure 1) for 1-5 room systems, respectively. The study also found that SPArc saved an average of 1.4min, 4.0mins, 7.6mins, 11.9mins and 16.5mins of patient waiting time on the treatment couch for 1-5 room systems, respectively.

## Conclusion
SPArc can improve the treatment workflow efficiency across all the proton center configurations. More daily treatment throughput was observed in centers with more treatment rooms, reducing patient waiting time on the couch.