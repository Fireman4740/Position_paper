TEX := main_position_personal.tex
PDF := main_position_personal.pdf
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
