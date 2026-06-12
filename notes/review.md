Paper Decision
Decisionby Program Chairs31 May 2026, 03:34 (modified: 01 Jun 2026, 18:49)Program Chairs, Senior Area Chairs, Area Chairs, AuthorsRevisions
Decision: Reject
Meta Review of Submission576 by Area Chair 8WWc
Meta Reviewby Area Chair 8WWc20 May 2026, 05:09 (modified: 01 Jun 2026, 18:50)Senior Area Chairs, Area Chairs, Authors, Program ChairsRevisions
Metareview:
This paper studies large language model hallucination not as a binary defect, but as a violation relative to a prompt's truth-regime contract. However, concerns were raised regarding a mismatch between the broad theoretical framework and the narrow empirical scope, which initially held the invention license strict and relied on a single binary oracle, thereby leaving the pipeline's ability to distinguish harmful hallucination from productive divergence under permissive regimes untested.

Confidence: 4: The area chair is confident but not absolutely certain
Clarification of Empirical Scope and Revisions Addressing Reviewer Concerns
Official Commentby Authors (Stefan Duffner, Carlesso Mathis, Martino Lovisetto, Pierre-Yves Genest, +1 more)29 Apr 2026, 21:47Program Chairs, Senior Area Chairs, Area Chairs, Authors
Comment:
We thank all reviewers for their careful and constructive feedback. Across the reviews, there is a shared recognition that the paper addresses an important gap in LLM evaluation: current hallucination metrics often treat unsupported content as a binary defect, without explicitly modeling what the prompt authorizes. The reviews also helped us clarify our central empirical claim. Our goal is not to claim that the current HalluLens-style pipeline already solves truth-regime-aware evaluation. Rather, the experiment quantitatively shows why such a framework is needed: state-of-the-art hallucination detection is strongly affected by prompt intent, format, and truth-regime cues, while the evaluator itself does not explicitly represent them.

The original κ LOW study was designed to isolate this point. By holding factual invention fixed as disallowed, we can test whether stylistic latitude and writing format alone change measured hallucination. The results show that they do: creative intent and, even more strongly, writing format substantially shift measured hallucination rates, while temperature is comparatively weak. This demonstrates that hallucination measurement is not only a model-level property; it is also conditioned by the prompt contract, even when invention is not licensed.

In response to the reviewers’ concern about permissive regimes, we added a diagnostic κ LOW/HIGH rerun with an explicit invention-license block in the prompt generator. Under κ LOW, factual invention is disallowed. Under κ HIGH, fictional, speculative, or illustrative additions are permitted when useful, provided they are not presented as verified facts. Across 7 runs, 360 prompts, and 214K claim rows, the HalluLens-style binary verifier reports higher measured hallucination under κ HIGH than κ LOW: paired HIGH–LOW difference = +5.1 points; GLM OR for LOW vs HIGH = 0.76; mixed-model coefficient for LOW = −0.053. We interpret this cautiously: not as evidence that κ HIGH prompts are worse, but as quantitative evidence that current binary supported/hallucinated pipelines cannot distinguish licensed productive divergence from hallucination. This is precisely the failure mode our framework is designed to expose.

We made several manuscript revisions to reflect the reviewers’ comments. First, Section 2 now introduces TR(p)=(O,σ,κ) before H and PD, and includes a worked example contrasting κ LOW and κ HIGH. For example, in a poetic-but-accurate science prompt, metaphorical wording is stylistic variation while an unsupported factual claim remains H; in an explicitly fictional κ HIGH prompt, analogous invented content may instead be PD if useful and clearly framed as invented.

Second, we clarified the role of HalluLens. We now describe it as a strong state-of-the-art strict-regime verifier, not as a complete TR-aware evaluator. Accordingly, we emphasize relative patterns rather than over-interpreting absolute hallucination rates, especially under creative or permissive prompts.

Third, we clarified the oracle issue. Wikipedia is used because the experiment follows a HalluLens-style general-knowledge verification setup, but in our framework the oracle O is not necessarily Wikipedia. Depending on the task, O may be a source document, retrieval set, domain corpus, recent-event database, clinical guideline, legal text, or user-provided context.

Fourth, we refined the interpretation of the LESSON_PLAN effect. We now make clear that this result likely reflects a combination of genre norms, structural-template demands, and oracle coverage, rather than only weaker factual control.

Finally, we strengthened the research agenda into a more concrete evaluation path: a TR-aware benchmark should cross task × creative intent × κ, explicitly annotate O, σ, and κ, decouple genre from structural templates, and label H, PD, stylistic variation, unverifiable content, and oracle-mismatch cases separately. In this sense, the empirical results and the κ rerun do not replace the proposed framework; they motivate it quantitatively and show why current binary evaluation protocols are insufficient.

Official Review of Submission576 by Reviewer 62Gt
Official Reviewby Reviewer 62Gt12 Apr 2026, 09:17 (modified: 01 Jun 2026, 19:21)Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Reviewer 62Gt, AuthorsRevisions
Q1 summary:
This manuscript focuses on the LLM hallucination, and rather than treating it as an absolute binary defect, it considers a prompt-relative violation of a task’s truth regime. Empirically, the paper studies 10 models across, using prompts that vary task format, creativity level, and target length while holding the truth regime strict. The main findings are that creativity increases hallucination, and the requested writing format has the largest effect.

Q2 novelty: 2: Fair: The paper contributes some new ideas.
Q2 correctness: 2: Fair: The paper has minor, easily fixable, technical flaws that do not impact the validity of the main results.
Q2 evidence based support: 2: Fair: the main claims are somewhat supported by evidence but the experimental evaluation may be weak, important baselines may be missing, proofs lack rigor, or assumptions are not sufficiently motivated.
Q2 reproducibility: 2: Fair: key resources are unavailable but key details are sufficiently well-described for an expert to confidently reproduce the main results.
Q2 writing clarity: 2: Fair: The paper is somewhat clear, but some important details are missing or unclear.
Q3 strengths:
The paper is well-organized, with detailed explanations of the preliminary, intuition, and methodology.

The paper addresses an important evaluation problem on the existing hallucination and creativity benchmarks.

The paper runs a large controlled study, uses claim-level verification rather than only output-level judgments.

Q4 weaknesses:
The paper’s primary claim is only partially tested. The manuscript argues that hallucination is truth-regime relative and that evaluation should distinguish H from PD, but the actual experiment keeps k low throughout and never evaluates permissive regimes where invention is licensed.

The binary verification setup is somewhat misaligned with the paper’s richer conceptual taxonomy. The pipeline only uses supported vs. hallucinated labels and explicitly omits other categories, which the paper itself notes may overestimate absolute hallucination rates, especially under more creative prompting.

The empirical scope is still narrow compared with the statement of the framework in the manuscript. The authors only use Wikipedia as the oracle, focus on general-knowledge prompts, and test only three output formats. I am concerned that the conclusions may not yet generalize to broader domains or tasks.

Q5 comments:
I would suggest that the authors add an additional experiment to decouple format effects from structural-template effects.

Q6 rating: 4: Borderline reject: Technically solid paper where reasons to reject outweigh reasons to accept. Please use sparingly.
Q7 justification:
My major concern about this manuscript is that the experiment may not support the primary statement.

Q8 confidence: 3: Somewhat confident, but there's a chance I missed some aspects. I did not carefully check some of the details, e.g. novelty, proof of a theorem, experimental design, or statistical validity of conclusions. I am somewhat familiar with the topic but may not know all related work.
Q9 confirmation: I have read the UAI reviewing instructions and certify that I comply with them.
Rebuttal by Authors
Rebuttalby Authors (Stefan Duffner, Carlesso Mathis, Martino Lovisetto, Pierre-Yves Genest, +1 more)29 Apr 2026, 20:59Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Authors
Rebuttal:
We thank the reviewer for this insightful comment. In order to address the concern that the primary statement was not fully supported by the original experiment, we added a κ HIGH/LOW diagnostic rerun with an explicit invention-license block in the prompt generator. Under κ LOW, factual invention is disallowed; under κ HIGH, fictional, speculative, or illustrative additions are permitted when useful, provided they are not presented as verified facts. Across 7 runs, 360 prompts, and 214K claim rows, the HalluLens-style verifier assigns higher measured hallucination to κ HIGH than κ LOW: paired HIGH–LOW difference = +5.1 points; GLM OR for LOW vs HIGH = 0.76; mixed-model coefficient for LOW = −0.053.

We do not read this as evidence that permissive regimes are worse. Rather, it quantitatively illustrates the limitation motivating our framework: a state-of-the-art binary supported/hallucinated pipeline does not model the user’s intention or truth regime, and therefore cannot distinguish licensed productive divergence from hallucination. This supports our claim that hallucination evaluation should be conditioned on the prompt’s truth-regime contract.

We also clarified the role of the main κ LOW experiment: it isolates whether stylistic latitude and writing format affect measured hallucination when factual invention is held fixed. We made explicit that this is a strict-regime sensitivity test, while the κ HIGH/LOW rerun diagnoses why current evaluators are insufficient for permissive regimes.

We agree that the binary setup does not operationalize the full H/PD taxonomy. We therefore clarified that the HalluLens-style pipeline is a strict-regime verifier, not a complete TR-aware evaluator, and strengthened the research agenda around benchmarks that separately label H, PD, stylistic variation, and unverifiable content.

Finally, we clarified two scope points: Wikipedia is used because the study follows HalluLens on general-knowledge prompts, but the oracle O in TR=(O,σ,κ) can be a domain corpus, source document, retrieval set, or user-provided context. We also added the reviewer’s suggested format/template decoupling as a concrete benchmark requirement, comparing full-format prompts with template-light variants.

Official Review of Submission576 by Reviewer BDva
Official Reviewby Reviewer BDva12 Apr 2026, 03:03 (modified: 01 Jun 2026, 19:21)Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Reviewer BDva, AuthorsRevisions
Q1 summary:
This paper argues that "hallucination" is not a binary defect of LLMs but is relative to a prompt’s Truth-Regime—the implicit contract of what must be true vs. what can be invented. The authors introduce a conceptual framework and conduct a large-scale study. They find that creative intent and specific writing formats significantly drive measured hallucination rates.

Q2 novelty: 3: Good: The paper makes non-trivial advances over the current state-of-the-art.
Q2 correctness: 4: Excellent: I am confident that the paper is technically sound, and I have carefully checked the details.
Q2 evidence based support: 4: Excellent: all claims are supported by very convincing evidence (comprehensive experimental evaluation, rigorous proofs, detailed code, precise references, well-motivated assumptions) and the authors deliver what they promise.
Q2 reproducibility: 4: Excellent: key resources (proofs, code, data) are available and key details (proof sketches, experimental setup) are comprehensively described for competent researchers to easily reproduce the main results.
Q2 writing clarity: 4: Excellent: The paper is well-organized and clearly written.
Q3 strengths:
The finding that temperature is a weak driver compared to prompt-level signals 
 challenges common assumptions about "hallucination control." The paper uses current SOTA models (as of 2025/2026), making the findings highly relevant to the current LLM landscape. The discovery that "Writing Format" (e.g., Lesson Plan) is a larger driver of hallucination than "Creative Intent" alone is a non-obvious and valuable insight for prompt engineering and evaluation. Testing 10 models across 12,000+ texts and 310,000 claims provides high confidence in the results.

Q4 weaknesses:
The framework relies heavily on the "Oracle" (Wikipedia). In highly specialized or extremely recent domains, the "truth regime" might be harder to define or verify, which isn't fully explored.

Q5 comments:
On page 6, "interaction n.s." is used; for a broader audience, spelling this out in the first instance might be clearer.

Q6 rating: 7: Accept: Technically solid paper, with convincing evidence for claims, innovative aspects, good resources and reproducibility, no unaddressed ethical considerations, and the potential for impact in the field.
Q7 justification:
The paper addresses one of the most persistent "pain points" in LLM evaluation: the fact that we punish models for being "creative" in the same way we punish them for being "wrong." The conceptual framework is robust, the empirical study is massive and technically sound, and the results have immediate implications for how we build future leaderboards.

Q8 confidence: 3: Somewhat confident, but there's a chance I missed some aspects. I did not carefully check some of the details, e.g. novelty, proof of a theorem, experimental design, or statistical validity of conclusions. I am somewhat familiar with the topic but may not know all related work.
Q9 confirmation: I have read the UAI reviewing instructions and certify that I comply with them.
Rebuttal by Authors
Rebuttalby Authors (Stefan Duffner, Carlesso Mathis, Martino Lovisetto, Pierre-Yves Genest, +1 more)29 Apr 2026, 21:00Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Authors
Rebuttal:
We thank the reviewer for the positive assessment and for highlighting the main intended contributions of the paper: the prompt-relative framing of hallucination, the scale of the controlled study, and the finding that prompt-level signals such as writing format are stronger drivers of measured hallucination than sampling temperature.

Regarding the role of Wikipedia, we agree that the current empirical study should not be read as covering all possible truth regimes or domains. In our experiment, Wikipedia is not introduced as a universal oracle. Rather, it is fixed by the HalluLens-style verification protocol that we adopt for claim-level factuality evaluation. This is appropriate for our general-knowledge setting and allows us to compare conditions under a controlled, state-of-the-art binary verification pipeline. However, it also illustrates a key point of our framework: the oracle O is itself part of the truth regime and should be explicitly specified rather than treated as implicit or universal.

We will clarify this in the limitations and research-agenda sections. In particular, we will state more explicitly that future TR-aware benchmarks should not hard-code a single oracle such as Wikipedia. Instead, they should annotate O as part of TR=(O, σ, κ), allowing the oracle to vary with the task: for example, clinical guidelines for medical tasks, scientific corpora for specialized scientific claims, recent-event databases for time-sensitive questions, or user-provided documents for grounded generation.

We also appreciate the reviewer’s comment on “interaction n.s.” We will spell out “not statistically significant” at its first occurrence and revise similar shorthand to improve accessibility.

Finally, we will strengthen the research agenda to make clearer how this limitation connects to the paper’s broader contribution. Beyond changing the oracle, a complete TR-aware benchmark must also vary stylistic latitude σ and invention license κ, and must score hallucination and productive divergence separately. Our additional indicative κ HIGH/LOW rerun supports this point: when invention is licensed, a HalluLens-style binary verifier still reports unsupported content as hallucination because it lacks a separate PD label. We will present this result cautiously, not as a new definitive benchmark, but as evidence motivating future evaluation protocols that jointly model oracle choice, stylistic latitude, and invention license.

Official Review of Submission576 by Reviewer L5iR
Official Reviewby Reviewer L5iR09 Apr 2026, 14:42 (modified: 01 Jun 2026, 19:21)Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Reviewer L5iR, AuthorsRevisions
Q1 summary:
This paper argues that hallucination should be judged relative to a prompt's truth regime TR=(O,sigma,kappa), not as an absolute defect. It introduces TR, CI, PD, and H, then studies 12,469 outputs from 10 LLMs under a strict Wikipedia-grounded regime. The results show that creative prompting increases measured hallucination, task format matters even more, and news-style factual norms dampen the creativity effect.

Q2 novelty: 3: Good: The paper makes non-trivial advances over the current state-of-the-art.
Q2 correctness: 3: Good: The paper appears to be technically sound, but I have not carefully checked the details.
Q2 evidence based support: 3: Good: the main claims are supported by convincing evidence (adequate experimental evaluation, proofs, code, references, assumptions).
Q2 reproducibility: 3: Good: key resources are available and key details are sufficiently well-described for competent researchers to confidently reproduce the main results.
Q2 writing clarity: 3: Good: The paper is well organized but the presentation could be improved.
Q3 strengths:
(1) The paper's strongest contribution is the TR=(O,sigma,kappa) framing and the related CI/PD/H vocabulary in Section 2 and Table 1. This makes explicit something that many hallucination and creativity evaluations leave implicit: whether the task requires strict grounding, tolerates stylistic freedom, or licenses invention. That is a useful and testable reframing rather than just a rhetorical point. (2) The empirical study is large and unusually controlled for this topic: 1,389 prompts, 12,469 outputs, 310,357 claim rows, 10 models, 3 task formats, 3 creativity levels, 3 lengths, and 5 temperatures. Keeping kappa low throughout is also a design strength for the narrower question the experiment actually asks, because it isolates how prompt format and stylistic creativity affect hallucination under a single strict regime. (3) The main findings are supported by multiple converging analyses. Table 2 and Figure 2 show clear task and creativity effects; Table 5 shows the creativity effect survives controls for response length and claim count; Section 4.2 reports the dampened VERY_CREATIVE x NEWS_ARTICLE interaction (OR = 0.77), which is the paper's clearest quantitative evidence that format-specific factual norms matter. (4) The evaluator-robustness check is better than usual for this literature. Tables 11-12 report substantial agreement across four evaluator LLMs (mean kappa_agree = 0.756) with preserved condition ordering and only a 6.4-point maximum absolute rate gap. That materially increases confidence that the headline patterns are not just an artifact of one judge.

Q4 weaknesses:
(1) The title-level thesis is broader than the direct evidence. All experiments keep kappa low and use Wikipedia as the oracle, so the paper directly demonstrates how hallucination varies with task format and creative prompting within a strict regime, but it does not directly show the key H versus PD relabeling under a permissive regime. A small matched strict-versus-permissive ablation would substantially strengthen the central claim. (2) The LESSON_PLAN result is harder to interpret than the paper sometimes suggests. Lesson plans naturally require objectives, materials, activities, and assessment criteria, much of which is pedagogical design rather than easily Wikipedia-grounded fact. Table 7 shows only 28.5% support even for factual lesson plans, versus 56.4% for factual interviews and 47.1% for factual news articles. This makes it plausible that part of the large task effect reflects oracle-template mismatch rather than only weaker factual control. (3) The binary supported/hallucinated pipeline is a real measurement limitation here, not just a minor detail. Section 6.3 explicitly notes the lack of an unverifiable category and acknowledges that this may overestimate absolute hallucination rates under creative conditions. Since the paper interprets absolute rates throughout, this limitation should be kept in view.

Q5 comments:
(1) Question: Could the authors add one small matched experiment in which the same outputs are scored under both a strict and a permissive regime? That would directly demonstrate the H to PD relabeling that is central to the paper's framing. (2) Question: Could the authors manually audit a sample of LESSON_PLAN and VERY_CREATIVE claims into categories such as supported, unsupported, pedagogically useful but not Wikipedia-groundable, and figurative/non-truth-conditional? That would clarify how much of the measured effect is genuine factual error versus oracle mismatch. (3) If the permissive-regime experiment is not added, the title and abstract should be narrowed so that the paper is clearly framed as a strict-regime study with a broader conceptual proposal.

Q6 rating: 6: Weak Accept: Technically solid paper, with no major concerns with respect to provided evidence, resources, reproducibility, and ethical considerations.
Q7 justification:
The truth-regime framing, the controlled factorial design, and the evaluator robustness checks all support a positive assessment. The paper stays at 6 rather than 7 because the permissive-regime half of the headline claim is argued but not directly tested.

Q8 confidence: 4: Quite confident. I tried to check the important points carefully. It is unlikely, though conceivable, that I missed some aspects that could otherwise have impacted my evaluation. I am familiar with the research topic and most of the related work.
Q9 confirmation: I have read the UAI reviewing instructions and certify that I comply with them.
Q10 ethics:
No.

Rebuttal by Authors
Rebuttalby Authors (Stefan Duffner, Carlesso Mathis, Martino Lovisetto, Pierre-Yves Genest, +1 more)29 Apr 2026, 21:01Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Authors
Rebuttal:
We thank the reviewer for the detailed and constructive assessment. We agree with the central distinction in the review: the main experiment provides evidence for strict-regime prompt sensitivity, while the full H/PD relabeling problem under permissive regimes requires a dedicated TR-aware benchmark.

The main experiment keeps κ low by design. Its purpose is to isolate whether stylistic creative intent and writing format increase measured hallucination when factual invention is not authorized. This design choice supports the narrower empirical claim: even under a fixed strict truth regime, prompt-level signals substantially affect HalluLens-style hallucination measurements. The conceptual claim of the position paper is broader, and Section 5 already frames this as a research agenda: a benchmark crossing task × CI × TR, with explicit (O,σ,κ) annotations and separate H/PD labels.

To address the permissive-regime concern directly, we added an indicative κ HIGH/LOW rerun. The prompt generator now includes an explicit invention-license block. In κ LOW, prompts prohibit factual invention; in κ HIGH, they permit fictional, speculative, or illustrative additions when useful, while requiring that invented content not be presented as verified fact. Across 7 runs, 360 prompts, and 214k claim rows, the HalluLens-style verifier reports higher measured hallucination for κ HIGH than κ LOW: paired HIGH–LOW difference = +5.1 points; GLM OR for LOW vs HIGH = 0.76. We do not interpret this as showing that κ HIGH is “worse.” Instead, it demonstrates the limitation motivating the paper: a binary supported/hallucinated pipeline cannot distinguish hallucination from productive divergence.

We also agree that the LESSON_PLAN effect may partly reflect oracle-template mismatch. Lesson plans require objectives, materials, activities, and assessment criteria; some are pedagogically useful but not naturally Wikipedia-groundable. We clarify that this effect should be interpreted as a combination of format norms, structural-template demands, and oracle coverage, not only as weaker factual control.

Finally, we make the binary-pipeline limitation more explicit. The HalluLens protocol is a strong SOTA baseline for strict-regime verification, but it does not operationalize the full TR taxonomy. We therefore keep the absolute rates in view as potentially inflated, while emphasizing the relative patterns and using the κ rerun to motivate the proposed TR-aware benchmark.

Official Review of Submission576 by Reviewer wRrh
Official Reviewby Reviewer wRrh09 Apr 2026, 02:27 (modified: 01 Jun 2026, 19:21)Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Reviewer wRrh, AuthorsRevisions
Q1 summary:
This paper proposes a new perspective on hallucination in large language models by introducing the concept of “truth regimes” (TR), which defines what content must be factual, what can be uncertain, and what can be invented depending on the prompt. The authors argue that hallucination is not an absolute defect but should be evaluated relative to the task requirements and user intent. The results show that creativity, writing format, and task constraints significantly affect hallucination rates.

Q2 novelty: 3: Good: The paper makes non-trivial advances over the current state-of-the-art.
Q2 correctness: 2: Fair: The paper has minor, easily fixable, technical flaws that do not impact the validity of the main results.
Q2 evidence based support: 2: Fair: the main claims are somewhat supported by evidence but the experimental evaluation may be weak, important baselines may be missing, proofs lack rigor, or assumptions are not sufficiently motivated.
Q2 reproducibility: 2: Fair: key resources are unavailable but key details are sufficiently well-described for an expert to confidently reproduce the main results.
Q2 writing clarity: 3: Good: The paper is well organized but the presentation could be improved.
Q3 strengths:
The paper presents a relatively large-scale and carefully controlled empirical study, covering multiple models, task types, and prompt variations. The use of claim-level verification and established pipelines (e.g., retrieval + NLI) aligns with prior work and provides a reasonable experimental foundation.
The paper is generally well-organized, and the proposed terminology (TR, CI, PD, H) is clearly defined. Figures and experimental descriptions are helpful for understanding the pipeline and results.
The paper identifies an important tension between hallucination evaluation and creativity evaluation, and argues for a task-aware perspective. This is a relevant and timely discussion in the context of LLM evaluation.
The idea of redefining hallucination as “truth-regime-relative” is novel and provides a fresh perspective that bridges hallucination and creativity evaluation. The introduction of a unified vocabulary (TR, CI, PD, H) is also a useful conceptual contribution.
Q4 weaknesses:
The experimental design raises concerns about validity. The study enforces a strict truth regime (κ = low) across all tasks, including highly creative ones, which does not reflect realistic usage scenarios where creative tasks often permit factual invention. As a result, the setup may artificially inflate hallucination rates and bias the observed relationship between creativity and hallucination. In addition, the reliance on a single oracle (Wikipedia) and binary labeling further limits the robustness of the conclusions.
The paper is somewhat verbose and concept-heavy, making the core argument harder to follow. The distinction between hallucination and productive divergence, while central to the paper, would benefit from more concrete and intuitive examples.
The practical impact of this paper is limited. The proposed framework remains largely conceptual and does not lead to a concrete evaluation protocol, benchmark, or tool that can be directly adopted. Moreover, due to the artificial experimental setup, it is unclear how well the findings generalize to real-world applications.
The empirical methodology largely builds on existing evaluation pipelines, and the novelty mainly lies in framing and analysis rather than new algorithms or models.
Q5 comments:
The study enforces a strict truth regime (i.e., low κ, where the model is not allowed to invent facts) even for highly creative tasks. How would the conclusions change if tasks with more permissive regimes (i.e., higher κ, allowing the model to invent or fabricate factual content) were included?
How sensitive are the results to the choice of Wikipedia as the sole oracle? Would using domain-specific or multi-source knowledge bases affect the findings?
Can the proposed Truth Regime framework be operationalized into a concrete evaluation protocol or automated system, rather than remaining at a conceptual level?
Q6 rating: 5: Borderline accept: Technically solid paper where reasons to accept outweigh reasons to reject. Please use sparingly.
Q7 justification:
The experimental setup assumes a strict truth regime (low κ) for all tasks, which may not reflect realistic task requirements.
The evaluation relies on a single knowledge source (Wikipedia), limiting generalizability.
The binary hallucination labeling (supported vs. unsupported) oversimplifies the problem and may bias the results.
Q8 confidence: 3: Somewhat confident, but there's a chance I missed some aspects. I did not carefully check some of the details, e.g. novelty, proof of a theorem, experimental design, or statistical validity of conclusions. I am somewhat familiar with the topic but may not know all related work.
Q9 confirmation: I have read the UAI reviewing instructions and certify that I comply with them.
Rebuttal by Authors
Rebuttalby Authors (Stefan Duffner, Carlesso Mathis, Martino Lovisetto, Pierre-Yves Genest, +1 more)29 Apr 2026, 21:01Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Authors
Rebuttal:
We thank the reviewer for the thoughtful and constructive critique. In order to address the concern that the primary statement was not fully supported by the initial experiment, we added an indicative κ LOW/HIGH rerun with an explicit invention-license prompt block. In κ HIGH, fictional, speculative, or illustrative additions are allowed when useful, while the model is instructed not to present them as verified facts. HalluLens-style binary verification reports higher measured hallucination under κ HIGH than κ LOW (paired HIGH–LOW difference: +5.1 points; GLM OR for LOW vs HIGH: 0.76). We do not interpret this as showing that κ HIGH is worse. Rather, it quantitatively illustrates the central limitation motivating our framework: current state-of-the-art binary hallucination pipelines do not model user intent or the truth regime, and therefore have no way to distinguish licensed productive divergence from hallucination.

The main experiment keeps κ low by design to isolate the effect of stylistic creativity and writing format while holding the invention license fixed. This shows that even when factual invention is not authorized, prompt-level signals substantially affect measured hallucination. The κ LOW/HIGH rerun complements this result by showing what happens when invention is explicitly licensed: the current evaluation pipeline still counts licensed unsupported content as hallucination. Together, these results support the need for TR-aware evaluation rather than replacing existing factuality pipelines.

We also acknowledge the reviewer’s point about Wikipedia. In the current study, Wikipedia is used because the prompts target general knowledge and because the verification setup follows the HalluLens-style claim-level paradigm. We revised the manuscript to clarify that, in our framework, the oracle O is not inherently Wikipedia: domain-specific corpora, recent-event databases, source documents, or user-provided materials can instantiate O depending on the task.

Official Review of Submission576 by Reviewer xby5
Official Reviewby Reviewer xby508 Apr 2026, 22:24 (modified: 01 Jun 2026, 19:21)Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Reviewer xby5, AuthorsRevisions
Q1 summary:
The paper argues that hallucination in LLMs should not be evaluated under binary labels but is relative to the truth regime of the prompt. The paper introduces minimal vocabulary to distinguish between genuine hallucinations from productive divergence. An empirical study across 12469 texts and 10 models supports the framing by showing that writing format and creativity level strongly encourage hallucination even when factual invention is not authorized.

Q2 novelty: 2: Fair: The paper contributes some new ideas.
Q2 correctness: 3: Good: The paper appears to be technically sound, but I have not carefully checked the details.
Q2 evidence based support: 2: Fair: the main claims are somewhat supported by evidence but the experimental evaluation may be weak, important baselines may be missing, proofs lack rigor, or assumptions are not sufficiently motivated.
Q2 reproducibility: 2: Fair: key resources are unavailable but key details are sufficiently well-described for an expert to confidently reproduce the main results.
Q2 writing clarity: 1: Poor: The paper is unclear and very hard to understand.
Q3 strengths:
the reframing of the problem is conceptually clean and practically important.
the vocabulary operionalizes an implicit but previously unnamed distinction by decomposing the prompt contract into three explicit components.
the interaction finding, that NEWS_ARTICLE ampens the creativity-hallucination relationship, is interesting.
Q4 weaknesses:
the conceptual framework is presented at a level of abstraction that makes it difficult to understand and operationalzie in practice. More specifically, the core vocabulary (TR, CI, H, PD) and the formal decomposition TR(p) are introduced with minimal grounding examples. Although Table 1 demonstrates three canonical regimes, but these are high-level archetypes rather than worked examples showing how a practitioner would actually infer (O, σ, κ) from a real prompt.
the experiments do not validate the framework's central claim, but a weaker version of it. The experiment keeps invention licence k low throughout all condictions, meaning that factual invention is never authorized and productive divergence never appears in the data. In other words, the framework's ability to distinct between H and PD is not tested in the experiment.
Q5 comments:
to improve the readability of the manuscript, I would suggest walking the reader through the full decision rule end-to-end on at least one concrete worked example.
restructure section 2 so that TR(p) is fully defined before H and PD are introduced.
include at least one permissive TR condiction in the experiment and show that the pipeline correctly labels unsupported claims differently across strict and permissive regimes.
Q6 rating: 4: Borderline reject: Technically solid paper where reasons to reject outweigh reasons to accept. Please use sparingly.
Q7 justification:
See weaknesses

Q8 confidence: 3: Somewhat confident, but there's a chance I missed some aspects. I did not carefully check some of the details, e.g. novelty, proof of a theorem, experimental design, or statistical validity of conclusions. I am somewhat familiar with the topic but may not know all related work.
Q9 confirmation: I have read the UAI reviewing instructions and certify that I comply with them.
Rebuttal by Authors
Rebuttalby Authors (Stefan Duffner, Carlesso Mathis, Martino Lovisetto, Pierre-Yves Genest, +1 more)29 Apr 2026, 21:05Program Chairs, Senior Area Chairs, Area Chairs, Reviewers Submitted, Authors
Rebuttal:
We thank the reviewer for the direct feedback on clarity. We agree that the framework needed a more concrete entry point. We have revised Section 2 so that TR(p) = (O, σ, κ) is defined before H and PD, and we added an end-to-end worked example showing how a practitioner infers the oracle, stylistic latitude, and invention license from a prompt. The example contrasts κ LOW and κ HIGH: under “Explain photosynthesis in a poetic style, but keep the science accurate,” metaphorical wording is stylistic variation, whereas “plants make sugar from moonlight” is H; under a fictional κ HIGH prompt, an imagined moonlight-based plant can instead be PD if it is useful and clearly framed as invented. This revision makes the decision rule more concrete and addresses the concern that Table 1 alone was too abstract.

We agree that the original main experiment does not, by itself, fully validate the H/PD distinction across all possible truth regimes. The main study intentionally keeps κ LOW to isolate a narrower but important question: whether current hallucination evaluation changes when style and format vary, even though factual invention is never authorized. Quantitatively, the answer is yes: creativity level and writing format substantially shift measured hallucination under a fixed strict regime. This supports the motivation for the framework by showing that state-of-the-art binary hallucination detection is sensitive to prompt intent and format while not explicitly modeling the truth regime.

To make this distinction clearer, we added an indicative κ HIGH/LOW rerun using a new prompt brick for invention license. Across 7 runs, 360 prompts, and 214K claim rows, the HalluLens-style binary pipeline reports higher hallucination under κ HIGH than κ LOW: paired difference = +5.1 points; GLM OR for LOW vs HIGH = 0.76. We do not interpret this as showing that permissive prompts are “more hallucinated”; rather, it demonstrates the limitation motivating our paper: a SOTA binary supported/hallucinated verifier has no label for PD and therefore penalizes licensed invention.

We have modified the manuscript to state this boundary explicitly: the main experiment demonstrates the need for TR-aware evaluation, while the κ rerun illustrates the failure mode of current binary pipelines in permissive regimes. We also made the research agenda more operational by proposing a benchmark crossing task × CI × κ, with separate labels for H, PD, stylistic variation, and unverifiable claims.


Suggested manuscript improvements
Add a sentence in Limitations:

In this study, Wikipedia is fixed by the HalluLens-style verification protocol and is appropriate for the general-knowledge prompts we evaluate; however, it should not be interpreted as a universal oracle. In a TR-aware benchmark, O should be explicitly annotated and selected according to the task domain.

Add a sentence in Research Agenda:

A complete TR-aware benchmark should vary not only task and creative intent, but also the oracle O and invention license κ, so that unsupported content can be distinguished from productive divergence when invention is explicitly licensed.

Replace:

interaction n.s.

with:

the interaction was not statistically significant

. Point-by-point response
Weakness 1 / Comment 1: κ remains low; H vs PD is not directly tested
Response.
We agree. The main experiment intentionally keeps κ low to isolate the effects of format and stylistic creativity under a strict regime. This is not presented as a complete benchmark of permissive regimes, but as an illustrative experiment supporting the need for TR-aware evaluation.
Concrete change.
We added an indicative κ HIGH/LOW rerun with an explicit invention-license block. The result shows that a HalluLens-style binary verifier assigns more “hallucination” under κ HIGH, even when invention is licensed. This supports the paper’s argument that current binary pipelines cannot represent PD.
Suggested wording:

We added a κ HIGH/LOW rerun to test the diagnostic behavior of the current binary pipeline. The result does not establish that permissive prompts are more erroneous; rather, it shows that the current verifier lacks a PD label and therefore maps licensed invention to hallucination.




 Weakness 2 / Comment 2: LESSON_PLAN may reflect oracle-template mismatch
Response.
We agree. LESSON_PLAN outputs contain pedagogical scaffolding that is not always Wikipedia-groundable. This means the high measured hallucination rate may combine genuine unsupported factual claims with claims that are useful for the pedagogical format but poorly matched to the oracle.
Concrete change.
We clarify the interpretation of the LESSON_PLAN result and no longer attribute the full effect to weaker factual control. We describe it as a joint effect of genre norms, template structure, and oracle coverage.
Suggested wording:

We clarify that the LESSON_PLAN effect should not be read as purely weaker factual discipline. It likely also reflects a mismatch between Wikipedia-style factual verification and pedagogical-template content such as objectives, activities, and assessment criteria.




 Weakness 3: Binary supported/hallucinated pipeline is a real limitation
Response.
We agree. The binary pipeline is appropriate for the strict-regime study because unsupported truth-conditional claims are violations when κ is low. However, it is not sufficient for permissive regimes, where unsupported content may be PD rather than H.
Concrete change.
We make this limitation more prominent and connect it directly to the κ HIGH/LOW rerun.
Suggested wording:

We now state explicitly that the HalluLens-style pipeline measures strict-regime unsupportedness, not the full TR taxonomy. The κ HIGH/LOW rerun makes this limitation visible: when invention is licensed, the same binary verifier still counts many licensed divergences as hallucinations.




 Comment 3: If no permissive experiment is added, title/abstract should be narrowed
Response.
We added a permissive-regime rerun, so the condition of this suggestion is partly addressed. We also emphasize that the paper is a position paper: the title and abstract express the conceptual thesis, while the empirical section provides controlled evidence and a diagnostic demonstration of the current pipeline’s limitation.
Concrete change.
We do not change the title or abstract, but we sharpen the empirical framing in the response and manuscript discussion: the main experiment is strict-regime evidence; the κ rerun is an indicative diagnostic showing why a new TR-aware benchmark is needed.
Suggested wording:

Because this is a position paper, we keep the title and abstract aligned with the conceptual thesis. We clarify in the empirical section that the main experiment tests strict-regime sensitivity, while the κ HIGH/LOW rerun is a diagnostic illustration of why H/PD-aware benchmarking is necessary.




 3. Optional manuscript suggestions

Add a short paragraph after the main experimental results titled “Indicative κ HIGH/LOW diagnostic.”
Keep it modest: do not present it as a full benchmark. 

Add one sentence in the LESSON_PLAN discussion:

“This result may partly reflect oracle-template mismatch, since lesson plans naturally introduce pedagogical scaffolding not always covered by Wikipedia.”


 

Add one sentence in the limitations:

“Accordingly, absolute hallucination rates should be interpreted as strict-regime unsupportedness estimates, whereas permissive regimes require additional labels such as PD and non-truth-conditional variation.”


 

In Section 5, strengthen the benchmark agenda with:

“A TR-aware benchmark should cross task × CI × κ and score H and PD separately under explicit oracle annotations.”


 



Modifier les 10 models dans le textes alors que 9 sont afficher dans les graphiques
