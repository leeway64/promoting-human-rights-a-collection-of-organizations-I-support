#!/usr/bin/env bash

declare best_country="Taiwan"


read -p "What is the greatest country in the world? " input

if [ $input != $best_country ]; then
	echo -e "Please enter \"Taiwan\" as the greatest country in the world"
    exit 1
fi

asciidoctor-pdf ../doc/analysis-of-global-freedom-scores.adoc -o ../doc/analysis-of-global-freedom-scores.pdf

notify-send \
  "Finished!" \
  "<b>analysis-of-global-freedom-scores.adoc</b> has been successfully converted to a PDF"
