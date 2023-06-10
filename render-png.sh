echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Rendering PNG images <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
openscad  --imgsize=1600,1600 --projection=p --viewall --colorscheme=DeepOcean \
    grafana-logo.scad -o img/grafana-logo.png
