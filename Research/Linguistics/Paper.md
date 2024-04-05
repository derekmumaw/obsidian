---
cssClasses: img-wide
---

# Introduction
We spend a great deal of time analyzing, optimizing, and refining the tools we use to treat patients and then carefully craft articles to disseminate our findings. We, however, rarely consider the article itself as a tool deserving of the same rigorous study. We have all benefitted enormously from the tool of literature which is certainly quite effective in conveying information; however, that does not mean that it is incapable of improvement.

We would not presume to provide specific advice as to how to improve writing, instead, we offer what amounts to a patterns of failure analysis: highlighting macroscopic trends and relaying a few observations, but without recommending any specific intervention. We hope that, by shedding light on the unconscious tendencies of writers, we can consciously create a more intentional tool for the benefit of everyone.

This thread of reasoning is perhaps best summarized by the satirist George Orwell in his essay "_Politics and the English Language_" from 1946:

> Most people who bother with the matter at all would admit that the English language is in a bad way, but it is generally assumed that we cannot by conscious action do anything about it. Our civilization is decadent and our language – so the argument runs – must inevitably share in the general collapse. It follows that any struggle against the abuse of language is a sentimental archaism, like preferring candles to electric light or hansom cabs to aeroplanes. Underneath this lies the half-conscious belief that language is a natural growth and not an instrument which we shape for our own purposes.

A deliberate introspection of this sort is not without precedent. Previously, readability has been analyzed in in news articles [^@stevensonReadabilityConservativeSensational1964][^@waynedanielsonJournalistsNovelistsStudy1992], novels [^@waynedanielsonJournalistsNovelistsStudy1992][^@adamjatowtLongitudinalAnalysisHistorical2012], US Presidential speeches [^@limAntiIntellectualPresidencyDecline2008], informed-consent forms [^@paasche-orlowmichaelk.ReadabilityStandardsInformedConsent2003], and in no shortage of analyses of patient-directed literature [^@jindalAssessingReadingLevels2017][^@kherReadabilityAssessmentOnline2017][^@wrigleykellyObjectiveAnalysisQuality2021].

Scientific literature too, has been assessed previously. It poses a challenge due to several unique features: it relies upon dense noun phrases which lead to a dense, "compressed" writing style [^@biberChallengingStereotypesAcademic2010], abstraction of processes (verbs) into subjects (nouns), technicality, and authoritativeness [^@fangScientificLiteracySystemic2005]. Hayes found broad increases in the difficulty of scientific literature, regardless of underlying subject matter [^@hayesGrowingInaccessibilityScience1992]. Ante [^@anteRelationshipReadabilityScientific2022] analyzed 135,502 academic research abstracts and found an inverse relationship between citation count and readability. Plavén-Sigray et al. [^@plaven-sigrayReadabilityScientificTexts] published an analysis of 709,577 abstracts in the PubMed PMC Open Access Subset showing a general decrease in readability with time.

This is of particular importance in the field of radiation oncology where there is a strong reputation for academic rigor as evidenced by the qualities looked for in applicants to residency programs [^@nrmpMatchDataReport]. When compared to other specialties, from 2007–2018 radiation oncology applicants to the National Residency Match Program had the most or second-most publications. From 2008–2021, program directors considered research experience in 84% of interviewees and 65% of rankees, double the average rate of all specialties.

Finally, though radiation oncology literature is primarily intended for other radiation oncologists and physicians in adjacent specialties, inevitably, patients and journalists will read—and potentially misinterpret—complex writing [^@hinnantTacitUnderstandingsHealth2009]. This has already lead to negative portrayals of the specialty [^@wawrzutaRiseNegativePortrayals2024].

So, here, we will consider the article itself, hoping to identify, and quantify, any trends in the complexity of this tool which we rely upon so much.

# Methods
## Corpus Construction and Processing
The PubMed Central Open Access Subset [^@PMCOpenAccess2003] was used to generate a corpus of full-text articles about radiation oncology published in the past 20 years. The following search strategy was used "`(("2004/01/01"[Publication Date] : "3000"[Publication Date])) AND (radiotherapy[MeSH Major Topic] OR radiotherapy[MeSH Subheading])`", resulting in 29,990 articles contained in an .xml file. Python 3.12.2 was used to extract the title, author list, citation count, and body text. The body text was further refined to exclude figures and tables as well as their accompanying text. Further filtering of the body text was performed to exclude non-English articles as well as incomplete articles, retractions, and snippets resulting in a final corpus of 18,022 articles. Spacy 3.7 [^@matthewhonnibalSpaCyIndustrialstrengthNatural] was then used for natural language processing (NLP) for both tokenization and part of speech tagging. Classifying the articles into disease subsites (breast, CNS, gastrointestinal, genitourinary, gynecologic, head and neck, lung) by PMC keywords and MeSH proved inconsistent. Instead, the article content was screened for frequencies of various keywords (listed in ==Appendix 1==) specific for each disease site class; the class with the greatest frequency was then assigned to the article. 

![[fig_flowchart.png#invert|400]]

## Metrics
### Readability
There are several techniques which can be used to analyze the complexity of text which are summarized in Table 1. The most straightforward and established is readability. There are several formulae to estimate readability. Flesch Reading Ease formulae was initially published in 1948 [^@rfleschNewReadabilityYardstick1948] and further refined by Kincaid to produce an estimate of grade-level required to understand it in 1975 [^@kincaidDerivationNewReadability1975]. Several other tests have since been developed, including (in chronological order) the Dale-Chall formula (old [^@daleFormulaPredictingReadability1948] and new [^@challReadabilityRevisitedNew1995]), Gunning Fog [^@gunningTechniqueClearWriting1952], Fry [^@fryReadabilityFormulaThat1968], SMOG (Simple Measure of Gobbledygook) [^@mclaughlinSMOGGradingNew1969], and FORCAST [^@caylorMethodologiesDeterminingReading1973]. In our analysis, we elected to use the Flesch-Kincaid and SMOG formulae as they both output a consistent unit (grade level required for comprehension) thus facilitating comparison and the former is widely used and the latter has been found to perform better with medical literature [^@doakTeachingPatientsLow1985][^@grabeelComputerizedHandscoredHealth2018]. These tests were implemented via the textstat 0.7.3 python package [^@bansalTextstat]

### Lexical Complexity
More complex analysis can be performed of the basis of _lexical complexity_ [^@vajjalaImprovingAccuracyReadability2012], a concept which can be further divided into _lexical diversity_, _lexical density_, and _lexical sophistication_. Lexical diversity measures the amount of variation present in the text and depends upon ratios of 'tokens' (words or parts of words that carry meaning) and 'types' (the set of unique tokens). The simplest is the 'Type-Token' ratio which is the number of types divided by the number of tokens. A more nuanced assessment of diversity borrows from the world of ecology: Simpsons'D [^@simpsonMeasurementDiversity1949]. This represents the probability that any two randomly selected individuals (tokens) belong to the same species (type). Lexical density measures the percentage of text made up of information carrying words ('lexemes') like nouns, adjective, verbs, and adverbs, also known as open class words (to which members are continually added). This is opposed to more structural, closed class words like pronouns, conjunctions, determiners, and auxiliaries which are responsible for the flow and organization of a sentence (i.e. grammar). The definition proposed by Ure [^@ureLexicalDensityRegister1971] is simply the ratio of lexemes to all tokens. As mentioned earlier, scientific literature makes heavy use of nouns and so we also included noun density which is the ratio of nouns (common or proper) to all tokens. Finally, there is lexical sophistication which measures the average length of the lexemes which indicates words of greater complexity [^@luExaminingScientificWriting2019].

### Information Content
Claude Shannon, the 'Father of Information Theory' proposed the concept of entropy to measure the amount of information contained in a message. This definition states that the informational content is related to the average level of uncertainty that each variable carries. In the case of sentences, it can be thought of as the average level of "surprise" that each word carries. As this is fundamentally a measure of information, the units are bits. There is a related measure, efficiency, which normalizes entropy to the maximum possible entropy. Both lexical complexity and information content tests were implemented with custom python code, heavily inspired by the textcomplexity 0.11.0 python package [^@proislTextcomplexity].

| Category               | Test Name             | Formulae                                                                                                                            |
| ---------------------- | --------------------- | :-----------------------------------------------------------------------------------------------------------------------------------: |
| Readability            | Flesch-Kincaid        | $$FK\ grade = 0.39 \left( \frac{total\ words}{total\ sentences}\right) + 11.8\left( \frac{total\ syllables}{total\ words} \right)$$ |
|                        | SMOG                  | $$SMOG\ grade = 1.043\sqrt{\#\ of\ polysyllables \times \frac{30}{\#\ of sentences}}+3.1291$$                                       |
| Lexical Diversity      | Type-Token            | $$TTR = \frac{Types}{Tokens}$$                                                                                                      |
|                        | Simpson's D           | $$D = \frac{\sum{n(n-1)}}{N(N-1)}$$<br>n=count of a single type<br>N=count of all tokens                                            |
| Lexical Density        | Ure's Lexical Density | $$LD = \frac{Lexemes}{Tokens}$$                                                                                                     |
|                        | Noun Density          | $$ND = \frac{Nouns}{Tokens}$$                                                                                                       |
| Lexical Sophistication | Mean Lexeme Length    | $$MLL = \frac{\sum^{N} {Lexeme\ length}}{N}$$                                                                                       |
| Information Content    | Entropy               | $$H(X) := -\sum_{X}{p(x)\cdot\log{p(x)}}$$                                                                                          |
|                        | Efficiency            | $$\eta(X) := -\sum_{i-1}^{n}{\frac{p(x)\cdot\log{p(x)}}{log(n)}}$$                                                                  |
Table 1. Readability and complexity metrics.

## Statistical analysis
To assess for changes with time, linear regressions were run for all aforementioned tests of readability and complexity as well as for author count, citation count, and word count. Plots were generated displaying the individual articles, means per year, and the linear regression. To assess for association between the readability and complexity metrics, linear regressions were performed for all possible combinations which were then arrayed in a correlogram. Finally, the mean scores for author count, citation count, word count and each readability and complexity metric were calculated for each disease subsite. These were then compared to the mean value for all articles to assess for differences between subsites.  

# Results

Publication to the corpus occurs at a relatively low rate until 2010 at which point it accelerates to nearly 1000 articles/year. The deceleration beginning in 2020 likely reflects lag from discrepancies between print publication, electronic publication, and PMC listing dates. Articles from each disease site are well-represented and in relatively equal proportions throughout this period.
![[fig_pubcounts.png#invert]]

In Figure X, we see a clear trend towards increasing author counts with 1 new author being added every 4.4 years, doubling over the observed period. Similarly, we see a substantial increase in citations, rising by 9 every decade. In this corpus, the maximum author count was 306 and the maximum citation count was 768.  
![[fig_counts.png#invert]]

In Figure X, we analyze the articles' reading ease via Flesch-Kincaid and SMOG. Both closely agree regarding the trend, showing an increase in grade level every 22 and 20 years, respectively, though SMOG provides a slightly higher median estimated grade level required: 14.4 and 15.7, respectively. SMOG's predictions were more consistent with a standard deviation of only 1.5 grades compared to Flesch-Kincaid's 2.9. 
![[fig_grades.png#invert]]

Word counts dramatically rise during this period: an additional word is added, on average, every 4.6 days. The longest article in this corpus is over 100,000 words. The first of the complexity analyses, lexical sophistication—which is simply the average length per token)—has remained constant at 6.62 for the past 2 decades. 
![[fig_words.png#invert]]

Figure X depicts lexical diversity. Type-Token ratio—which measures the proportion of unique words in a text—has fallen by 1.2% per decade, superficially suggestive of a decrease in diversity. However, Simpson's D—the probability that two randomly selected tokens are identical—has slowly fallen, by 0.04% per decade, indicative of increased diversity.
![[fig_diversity.png#invert]]

Figure X shows the two measures of lexical density. Ure's Lexical density compares the proportion of lexemes (information carrying, open class words i.e. nouns, adjectives, verbs, adverbs) to the total text length: this metric revealed a slow increase by 0.6% per decade. Noun density, a slight modification considering only nouns (common or proper), drives this rise with a 0.8% increase per decade.
![[fig_density.png#invert]]

Finally, in Figure X we have measures of information content. Entropy, which quantifies the level of "surprise" carried by each new word—equivalent to the informational content of the article—is increasing at a rate of 0.03 bits per decade. Normalizing by the maximum possible entropy for a given article length gives us efficiency. In contrast to entropy, this has been decreasing at a rate of 0.8% per decade.
![[fig_info.png#invert]]

For all aforementioned rates of change, the slopes were highly significant ranging from p=7.x10^-06 for entropy to p=8x10^-82 for citation count. The sole exception to this is lexical sophistication which was not significant (p=0.50).

The correlogram shown in Supplementary Figure 1 shows comparisons of every pair of text-based metrics discussed previously. Linear regressions were performed for every pair and those with r^2 values greater than 0.5 and p values less than 0.05 were plotted and the underlying data highlighted red. We can see that the 2 reading ease formulae were well fit (r2 = 0.71) and showed a clear direct proportionality. Lexical and noun density were similarly well fit (r2 = 0.73) and directly proportional. Efficiency was found to vary directly with both the type-token ratio (r2 = 0.53) and entropy (r2 = 0.58). Inverse regression was also performed and revealed an inverse relationships for both type-token to word count (r2 = 0.83) and lexical density to Simpson's' D (r2 = 0.75).

![[fig_pairplot.png#invert]]

By categorizing each article as pertaining to a particular disease subsites and comparing the subsite mean to the global mean, we can see any underlying disease-specific authorship patterns. Similar to the time-series analysis, the most dramatic differences are seen in the article metadata and the word count. For author count, we can see a 15% range with GI being the least exclusive (0.84 above mean) and Gyn. being the most exclusive (0.46 below mean). For citation count, there is a 16% range with CNS literature having the most (1.1 above mean) and Gyn. having the least (4.6 below mean). Word counts varied substantially: CNS articles were the longest (240.0 words above mean) while Gyn. (again), were the shortest (672.1 words below mean).

Both reading ease formulae agreed that GU literature was the easiest (0.16–0.23 grades below mean) and breast literature was either the most or second-most difficult (0.06–0.07 grades above mean). CNS and lung literature were easier than the mean in both tests while the remaining subsites were less consistently ranked. Lexical sophistication was fairly consistent with a range of only 1.3%: lung literature had the fewest characters per token (0.06 characters below mean) while head and neck had the most (0.03 characters above mean). Type-token showed a modest spread of 8%, the lowest ratio with GU (0.01 below mean) and highest with Gyn. (0.01 above mean). Simpson's D showed an even larger spread of 14.5%, with GI having the lowest chance (0.05% below mean) and GU having the greatest chance (0.05% above mean). Lexical and Noun density both agreed that GU was the least dense (0.8% and 0.4% below mean) and that GI was the most or second-most dense (.07% and 0.5% above mean). Gyn. literature had the greatest non-noun lexical density while lung literature had the least. Finally, we have entropy and efficiency. GI literature both contained the least information and conveyed it the least efficiently. CNS literature was the only subsite to both carry more information than the mean with greater than average efficiency. Gyn. literature was the most efficient (0.002% above mean).

![[fig_types.png#invert]]
# Discussion

Here, in the Open Access PMC Radiation Oncology corpus, we see several interesting trends in article characteristics, reading ease, and textual complexity.

Firstly, authorship has been increasing at a fairly rapid pace with over 2 authors being added every decade. This is numerically consistent with several other studies [^@anAuthorshipGrowthContemporary2020] documenting a broad increase in authorship in medicine. It is also consistent with other studies specifically examining radiation oncology [^@ojerholmAuthorshipRadiationOncology2015]. This trend has raised some ethical concerns regarding credit, bias, responsibility, accountability, references, and originality, just to name a few [^@hosseiniReviewLiteratureEthical2020].  Similarly, citation counts have been been rapidly rising with nearly 1 citation added per year. This is consistent with the rapidly expanding corpus seen in Figure 1 where we would expect increasing interconnectedness.

The reading ease analyses show an increase in the required grade level to comprehend the text at a rate of roughly 1 grade level every 2 decades; this was consistent across the tests, as shown by regression. There were minor differences in the estimated required grade level between the three tests, likely due to differences in their underlying mechanisms which rely upon some combination of words per sentence and/or syllables per word which are then multiplied by a constant or raised to an exponent. It is of note that these reading-ease formulae were not designed for use with technical, scientific literature and so the actual estimated grade levels may not translate perfectly—though SMOG has been found to perform well with medical literature previously{citation}. The 12.7–15.7 grade range would suggest an undergraduate level of education would be required to understand the content, which is not unreasonable. 
- higher estimated grade with SMOG is consistent with [^@grabeelComputerizedHandscoredHealth2018]

The more complex linguistic analyses overall also demonstrate an increase in complexity. The Type-Token ratio shows a 1.2% decrease per decade, superficially suggestive of a decrease in complexity. It is well-known {citation}, however, that the Type-Token ratio suffers from an inverse relationship to text length, and so we would expect this decrease given the ever-increasing word count (Figure 2). Controlling for word count (i.e. considering only type count) shows an increase in types by about 10 per year. Simpson's D, which has the slightly more intuitive definition of being the probability that two randomly selected words are identical, also suffers from an inverse relationship to word count. When word count is controlled for, Simpson's D essentially disappears. That's not to say the measure is without merit: it confirms the intuition that greater word _count_ is associated with greater word _diversity_.

The two density studies reveal the more straightforward conclusion that the density of information-carrying words is slowly increasing, primarily due to an increase in nouns which accounted for 73% of the effect. This is not too surprising given the proliferation of new technologies (e.g. SBRT) and systemic agents (e.g. pembrolizumab) which would all be classified as nouns. This suggests increasing complexity of the writing.

Finally, we have the two measures of information content, entropy and efficiency. Entropy is perhaps the most pure measure of the informational content of the text, actually producing units of bits. Here we see a very slow increase in entropy at 0.03 bits per decade. A closely related metric is Efficiency. Also known as normalized entropy, this metric compares the observed entropy to the maximal possible entropy. At maximal possible entropy, every word would would carry maximal "surprise" for the entire duration of the text. Anything less than this suggests that the informational content is not dispersed evenly; greater efficiency, therefore, suggests that new concepts are being introduced at a relatively steady pace throughout the text. As shown in Figure 5, it can be seen that efficiency is decreasing at 0.8% per decade. Interestingly, efficiency was found to be directly related to the Type-Token ratio, though entropy was not; and neither were related to word count. Thus, articles are carrying increasingly more information (entropy), though it appears that the density of this information is decreasing (efficiency).

It may be beneficial to suggest the 'ideal' parameters an article should have, noting that this is, somewhat subjective and likely impossible to achieve. This is, of course, highly dependent upon the primary goal one wishes to achieve: readability or information density.

To maximize readability, one would want to:
1. reduce the Flesch-Kincaid, Gunning Fog, and SMOG reading ease scores (by reducing words per sentence and syllables per word);
2. reduce the Type-Token ratio and maximize Simpson's D (which suggests a relatively consistent vocabulary);
3. reduce lexical and noun density (leading to greater percentage of functional, grammatical words which implies a greater organization of concepts);
4. and reduce entropy and efficiency (lowering both the informational content and the pace at which it is conveyed);

To maximize informational density, one would do essentially the opposite:
1. increase the Flesch-Kincaid, Gunning Fog, and SMOG reading ease scores (longer sentences filled with hypersyllabic words);
2. increase the Type-Token ratio and reduce Simpson's D (with use of a highly varied vocabulary);
3. increase lexical and noun density (leading to greater percentage of information-carrying lexemes)
4. and maximize entropy and efficiency (increasing both the informational content and the pace at which it is conveyed)

Using these 'ideals' and ranks of each disease subsite for each test in Figure 6, we can conclude that GU literature is the most readable (mean rank of 2.4 of 8) while breast literature is the most information-dense (mean rank of 5.9 of 8). Using the findings from Figures 3-5, we can see that the literature as a whole is becoming less readable and more information dense with everything but Type-Token and Efficiency favoring an increase in information density.

# Citations
[^@stevensonReadabilityConservativeSensational1964]: [[@stevensonReadabilityConservativeSensational1964]]
[^@waynedanielsonJournalistsNovelistsStudy1992]: [[@waynedanielsonJournalistsNovelistsStudy1992]]
[^@adamjatowtLongitudinalAnalysisHistorical2012]: [[@adamjatowtLongitudinalAnalysisHistorical2012]]
[^@limAntiIntellectualPresidencyDecline2008]: [[@limAntiIntellectualPresidencyDecline2008]]
[^@paasche-orlowmichaelk.ReadabilityStandardsInformedConsent2003]: [[@paasche-orlowmichaelk.ReadabilityStandardsInformedConsent2003]]
[^@jindalAssessingReadingLevels2017]: [[@jindalAssessingReadingLevels2017]]
[^@kherReadabilityAssessmentOnline2017]: [[@kherReadabilityAssessmentOnline2017]]
[^@wrigleykellyObjectiveAnalysisQuality2021]: [[@wrigleykellyObjectiveAnalysisQuality2021]]
[^@biberChallengingStereotypesAcademic2010]: [[@biberChallengingStereotypesAcademic2010]]
[^@fangScientificLiteracySystemic2005]: [[@fangScientificLiteracySystemic2005]]
[^@hayesGrowingInaccessibilityScience1992]: [[@hayesGrowingInaccessibilityScience1992]]
[^@anteRelationshipReadabilityScientific2022]: [[@anteRelationshipReadabilityScientific2022]]
[^@plaven-sigrayReadabilityScientificTexts]: [[@plaven-sigrayReadabilityScientificTexts]]
[^@nrmpMatchDataReport]: [[@nrmpMatchDataReport]]
[^@hinnantTacitUnderstandingsHealth2009]: [[@hinnantTacitUnderstandingsHealth2009]]
[^@wawrzutaRiseNegativePortrayals2024]: [[@wawrzutaRiseNegativePortrayals2024]]
[^@PMCOpenAccess2003]: [[@PMCOpenAccess2003]]
[^@matthewhonnibalSpaCyIndustrialstrengthNatural]: [[@matthewhonnibalSpaCyIndustrialstrengthNatural]]
[^@rfleschNewReadabilityYardstick1948]: [[@rfleschNewReadabilityYardstick1948]]
[^@kincaidDerivationNewReadability1975]: [[@kincaidDerivationNewReadability1975]]
[^@daleFormulaPredictingReadability1948]: [[@daleFormulaPredictingReadability1948]]
[^@challReadabilityRevisitedNew1995]: [[@challReadabilityRevisitedNew1995]]
[^@gunningTechniqueClearWriting1952]: [[@gunningTechniqueClearWriting1952]]
[^@fryReadabilityFormulaThat1968]: [[@fryReadabilityFormulaThat1968]]
[^@mclaughlinSMOGGradingNew1969]: [[@mclaughlinSMOGGradingNew1969]]
[^@caylorMethodologiesDeterminingReading1973]: [[@caylorMethodologiesDeterminingReading1973]]
[^@vajjalaImprovingAccuracyReadability2012]: [[@vajjalaImprovingAccuracyReadability2012]]
[^@simpsonMeasurementDiversity1949]: [[@simpsonMeasurementDiversity1949]]
[^@ureLexicalDensityRegister1971]: [[@ureLexicalDensityRegister1971]]
[^@luExaminingScientificWriting2019]: [[@luExaminingScientificWriting2019]]
[^@doakTeachingPatientsLow1985]: [[@doakTeachingPatientsLow1985]]
[^@grabeelComputerizedHandscoredHealth2018]: [[@grabeelComputerizedHandscoredHealth2018]]
[^@bansalTextstat]: [[@bansalTextstat]]
[^@proislTextcomplexity]: [[@proislTextcomplexity]]
[^@anAuthorshipGrowthContemporary2020]: [[@anAuthorshipGrowthContemporary2020]]
[^@ojerholmAuthorshipRadiationOncology2015]: [[@ojerholmAuthorshipRadiationOncology2015]]
[^@hosseiniReviewLiteratureEthical2020]: [[@hosseiniReviewLiteratureEthical2020]]