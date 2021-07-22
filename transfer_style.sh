for i in {0..56};
do
    python neural_style.py --content examples/input/eagle-2.jpg --styles style/style$i.jpg --iterations 2000 --style-scales 1.0 --learning-rate 1.0 --output examples/output/eagle-2-style$i.jpg --overwrite;
done