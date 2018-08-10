.class public Lcom/airbnb/lottie/model/layer/Layer$Factory;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    new-instance v0, Lcom/airbnb/lottie/model/layer/Layer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-wide/16 v7, -0x1

    const-wide/16 v4, -0x1

    const-string/jumbo v3, "root"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->None:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/4 v9, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/layer/Layer$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 47

    const-string/jumbo v5, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v5, "refId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v5, ".ai"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    const-string/jumbo v5, "Convert your Illustrator layers to shape layers."

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v5, "ind"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v36

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v5, "ty"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v5

    move/from16 v0, v38

    if-lt v0, v5, :cond_6

    sget-object v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    :goto_1
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Text:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-eq v12, v5, :cond_7

    :cond_1
    :goto_2
    const-string/jumbo v5, "parent"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Solid:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-eq v12, v5, :cond_8

    :goto_3
    const-string/jumbo v5, "ks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v17

    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v5

    const-string/jumbo v6, "tt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    aget-object v28, v5, v6

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "masksProperties"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    if-nez v34, :cond_9

    :cond_2
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "shapes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v44

    if-nez v44, :cond_a

    :cond_3
    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string/jumbo v5, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v46

    if-nez v46, :cond_c

    :goto_4
    const-string/jumbo v5, "ef"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    :goto_5
    const-string/jumbo v5, "sr"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v21, v0

    const-string/jumbo v5, "st"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v45, v0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v31

    div-float v22, v45, v31

    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-eq v12, v5, :cond_e

    :goto_6
    const-string/jumbo v5, "ip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v33, v5, v21

    const-string/jumbo v5, "op"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v40, v5, v21

    const/4 v5, 0x0

    cmpl-float v5, v33, v5

    if-lez v5, :cond_4

    new-instance v2, Lcom/airbnb/lottie/animation/Keyframe;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v5, 0x0

    cmpl-float v5, v40, v5

    if-lez v5, :cond_f

    :goto_7
    new-instance v3, Lcom/airbnb/lottie/animation/Keyframe;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v8, v33

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/airbnb/lottie/animation/Keyframe;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move/from16 v9, v40

    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x0

    const-string/jumbo v5, "tm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    :goto_8
    new-instance v6, Lcom/airbnb/lottie/model/layer/Layer;

    const/16 v30, 0x0

    move-object/from16 v7, v43

    move-object/from16 v8, p1

    move-object/from16 v9, v35

    move-wide/from16 v10, v36

    invoke-direct/range {v6 .. v30}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/layer/Layer$1;)V

    return-object v6

    :cond_5
    const-string/jumbo v5, "cl"

    const-string/jumbo v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ai"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v5

    aget-object v12, v5, v38

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string/jumbo v5, "Text is only supported on bodymovin >= 4.8.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v5, "sw"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v18, v0

    const-string/jumbo v5, "sh"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v19, v0

    const-string/jumbo v5, "sc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    goto/16 :goto_3

    :cond_9
    const/16 v32, 0x0

    :goto_9
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_2

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/model/content/Mask$Factory;->newMask(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v39

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v32, v32, 0x1

    goto :goto_9

    :cond_a
    const/16 v32, 0x0

    :goto_a
    invoke-virtual/range {v44 .. v44}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_3

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/model/content/ShapeGroup;->shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v42

    if-nez v42, :cond_b

    :goto_b
    add-int/lit8 v32, v32, 0x1

    goto :goto_a

    :cond_b
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    const-string/jumbo v5, "d"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v25

    const-string/jumbo v5, "a"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v26

    goto/16 :goto_4

    :cond_d
    const-string/jumbo v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape."

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    const-string/jumbo v5, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v23, v0

    const-string/jumbo v5, "h"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v24, v0

    goto/16 :goto_6

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-float v0, v6

    move/from16 v40, v0

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v5, "tm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v29

    goto/16 :goto_8
.end method
