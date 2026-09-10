# Autonomous Research Agent Loop

## Purpose

Research Agent is not merely an agent that writes papers. It is a knowledge-state-driven Work Server that autonomously discovers research gaps, creates Research Work through AW, gathers evidence, evaluates theses, and updates the knowledge state.

## Core Loop

```text
World / Literature
        ↓
Observation
        ↓
Research Agent
        ↓
Think
  ├─ classify
  ├─ compare
  ├─ relate
  ├─ hypothesize
  ├─ validate
  └─ critique
        ↓
AW
        ↓
Research Work
  ├─ search
  ├─ compare
  ├─ identify gaps
  ├─ formulate issues
  ├─ experiment
  └─ collect evidence
        ↓
Evidence / Outcome
        ↓
Thesis / Antithesis
        ↓
Evaluation
        ↓
Knowledge State Update
        ↓
New Research Question
        ↺
```

## Key Principle

The human does not need to provide every task. The Research Agent observes the current knowledge state and asks:

> What remains unresolved for the current thesis to be credible?

Research gaps become AW Work rather than passive TODOs.

## Ontology

### Thesis

A proposition currently under investigation. A thesis is provisional and must carry evidence, confidence, assumptions, and counterarguments.

### Antithesis

A proposition, evidence set, or interpretation that challenges the current thesis.

### Research Gap

An unresolved difference between the current knowledge state and what is required to support, reject, or refine a thesis.

### Research Work

A purpose-driven state transformation that reduces a Research Gap by producing evidence or a better-defined question.

### Evidence

An observable source or result supporting, weakening, or qualifying a claim.

### Knowledge State

The current structured state of claims, evidence, relations, uncertainty, open gaps, theses, and decisions.

## AW Relationship

```text
Research Agent
      │
      │ discovers
      ↓
Research Gap
      │
      │ generates
      ↓
AW Job
      │
      ↓
Task → Action
      │
      ↓
Evidence
      │
      ↓
Outcome
      │
      ↓
Knowledge State
      │
      └────────→ Research Agent
```

AW evaluates completion by Outcome and Evidence, not by whether a search or tool call succeeded.

## Research Agent Definition

> Research Agent = Knowledge-State-driven Work Generator and Evaluator.

It observes a research domain, maintains provisional theses, identifies unresolved gaps, selects Think methods, delegates executable Work to AW, evaluates evidence, and proposes updates to the thesis or research direction.

## Relationship to Think

Think defines reusable methods for reasoning. Research Agent selects and composes those methods.

```text
Intent → Purpose → Verb → Think Method → Intelligence → Agent → Work → Action → Outcome
```

Research Agent therefore does not equate intelligence with an LLM prompt. Models are replaceable implementations of reasoning capabilities.

## Example: World Model Research

Current thesis:

> Physical → Interface → Cognition → Data → Symbolic provides a useful canonical framework for comparing World Model research.

The Research Agent searches the literature and identifies gaps such as:

1. Which existing World Models explicitly model Interface as a distinct concept?
2. Is Recognition → Data supported by existing epistemological, cognitive, or information-model literature?
3. Can Dreamer, JEPA, Genie, ROS-based systems, and autonomous-driving models be represented in the same View Graph?
4. What evidence would distinguish a View Graph from a fixed hierarchy?
5. Which counterexamples falsify the proposed five-layer ordering?

Each gap becomes a Research Work candidate. AW executes the selected work and returns Evidence/Outcome. The Research Agent then updates the thesis, antithesis, confidence, and next gaps.

## Governance

Autonomy does not mean unrestricted authority.

Research Agent may:

- discover research gaps;
- propose Research Work;
- select Think methods;
- execute authorized research actions through AW;
- record evidence;
- propose thesis revisions.

Validation authority remains explicit. Claims should distinguish:

- observation;
- interpretation;
- hypothesis;
- evidence;
- conclusion.

## Research State Machine

```text
Observed
   ↓
Framed
   ↓
Hypothesized
   ↓
Researching
   ↓
Evidenced
   ↓
Challenged
   ↓
Evaluated
   ├─ supported → refined thesis
   ├─ weakened  → revised thesis
   └─ rejected  → new thesis
          ↓
      new gap
          ↺
```

## Design Principle

> Research is not document production. Research is iterative transformation of a knowledge state under uncertainty.

The paper/report is an output of the loop, not the loop itself.

## Relation to Repository Architecture

`repo2agent` transforms repository observations into capability and agent proposals.

Research Agent applies the same pattern to knowledge:

```text
knowledge state
 → observations
 → gaps
 → capabilities / methods
 → research work
 → evidence
 → updated knowledge
```

Thus autonomous research becomes a concrete instance of the broader Work/Agent/Think/Intelligence architecture.
