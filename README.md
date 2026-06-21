# Cover 190 Research – Polygonal Billiards

Undergraduate research project investigating covering problems in polygonal billiards.

## Project Overview

This repository tracks my progress on Cover 190 and related covering computations using BilliardViewer.

The goal is to find stable codes, triples, and coverings that reduce the number of uncovered squares in the target strip.

## Research Environment

* BilliardViewer 10.0.12
* macOS (Apple Silicon)
* University of Alberta Undergraduate Research Project
* Polygonal billiards and covering theory

## Repository Structure

```text
app-output/
├── cover.txt
├── info.txt
├── polygon.txt
├── precision.txt
├── square.txt
├── stables.txt
├── triples.txt
└── unused.txt

logs/
```

## Current Polygon

```text
8 25
9 24
9 24.5
8 25.5
```

## Workflow

1. Run covering calculations in BilliardViewer.
2. Search for new stable codes using LiLuMaxVary / SuperLiLuVary.
3. Add promising codes to the cover.
4. Recalculate the cover.
5. Generate new uncovered square coordinates.
6. Repeat until the strip is completely covered.

## Automation

This repository uses an automated Git workflow that:

* Watches BilliardViewer output files
* Copies updated results automatically
* Creates Git commits automatically
* Pushes updates to GitHub

## Notes

This repository serves as a research log and backup of covering progress. Results may change frequently as new stable codes and triples are discovered.

## Author

Sreeman Reddy Gokula

BSc Computing Science (AI Specialization)

University of Alberta

