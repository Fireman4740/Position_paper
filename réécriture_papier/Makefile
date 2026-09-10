TEX := truth_contract_position_paper.tex
PDF := truth_contract_position_paper.pdf
BUILD_DIR := build
LATEXMK := latexmk

.PHONY: pdf check clean

pdf:
	$(LATEXMK) -pdf -outdir=$(BUILD_DIR) $(TEX)
	cp $(BUILD_DIR)/$(PDF) $(PDF)

check:
	$(LATEXMK) -pdf -outdir=$(BUILD_DIR) $(TEX)

clean:
	$(LATEXMK) -C -outdir=$(BUILD_DIR) $(TEX)
	rm -rf $(BUILD_DIR)
