# 原始影像。
CONTENT=examples/input/eagle-5.jpg
# 一個或多個風格影像。
STYLES="style/style35.jpg"
# 輸出影像。
OUTPUT=examples/output/eagle-5-style35-18.jpg

# learning rate數字越低，風格轉移的越精細。
LEARNING_RATE=3.0

# Iterations數字越高，風格轉移時間越長。值要>=1000風格轉換的效果越好。
ITERATIONS=1000

# 輸入影像的佔比，預設值為5.0。
CONTENT_WEIGHT=5.0

# 風格影像的佔比，預設值為500.0
STYLE_WEIGHT=500

# 一個或多個風格影像的佔比。
STYLE_SCALES="1.0"

# Content weight blend默認值1.0，樣式傳輸嘗試保留更精細的顆粒內容詳細資訊。值應在 [0.0; 1.0] 範圍內。
CONTENT_WEIGHT_BLEND=0.3

# Style layer weight exp調整樣式轉移的「抽象」程度，數字越小越精細，越大越粗略，預設值為 1.0。
STYLE_LAYER_WEIGHT_EXP=3.0

# Pooling一般最大池往往具有更精細的細節樣式傳輸，但在低頻率細節級別可能會遇到問題，因此建議改成avg。
POOLING=max


python neural_style.py \
--content $CONTENT \
--styles $STYLES \
--style-scales $STYLE_SCALES \
--iterations $ITERATIONS  \
--learning-rate $LEARNING_RATE \
--content-weight $CONTENT_WEIGHT \
--style-weight $STYLE_WEIGHT \
--style-layer-weight-exp $STYLE_LAYER_WEIGHT_EXP \
--content-weight-blend $CONTENT_WEIGHT_BLEND \
--output $OUTPUT \
--pooling $POOLING \
--overwrite