.class public Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
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

.method public static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 9

    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v3

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v5

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 18

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v2, "a"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_0

    const-string/jumbo v2, "LOTTIE"

    const-string/jumbo v10, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v3}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    :goto_0
    const-string/jumbo v2, "p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_1

    const-string/jumbo v2, "position"

    invoke-static {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    if-nez v16, :cond_2

    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v10, Lcom/airbnb/lottie/model/ScaleXY;

    invoke-direct {v10}, Lcom/airbnb/lottie/model/ScaleXY;-><init>()V

    invoke-direct {v5, v2, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/ScaleXY;)V

    :goto_2
    const-string/jumbo v2, "r"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_3

    :goto_3
    if-nez v15, :cond_4

    const-string/jumbo v2, "rotation"

    invoke-static {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-nez v13, :cond_5

    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v2, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    :goto_5
    const-string/jumbo v2, "so"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    if-nez v17, :cond_6

    :goto_6
    const-string/jumbo v2, "eo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_7

    :goto_7
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform$1;)V

    return-object v2

    :cond_0
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    const-string/jumbo v2, "k"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v5

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "rz"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v15, v0, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    goto :goto_7
.end method

.method private static throwMissingTransform(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing transform for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
