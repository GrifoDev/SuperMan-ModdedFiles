.class Lcom/airbnb/lottie/model/content/GradientStroke$Factory;
.super Ljava/lang/Object;
.source "GradientStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/GradientStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .locals 25

    const-string/jumbo v2, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    if-nez v19, :cond_2

    :cond_0
    :goto_0
    const/4 v5, 0x0

    if-nez v19, :cond_3

    :goto_1
    const-string/jumbo v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    const/4 v6, 0x0

    if-nez v21, :cond_4

    :goto_2
    const-string/jumbo v2, "t"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_3
    const-string/jumbo v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    const/4 v7, 0x0

    if-nez v22, :cond_6

    :goto_4
    const-string/jumbo v2, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    const/4 v8, 0x0

    if-nez v20, :cond_7

    :goto_5
    const-string/jumbo v2, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v2

    const-string/jumbo v14, "lc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v10, v2, v14

    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v2

    const-string/jumbo v14, "lj"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v11, v2, v14

    const/4 v13, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_1
    :goto_6
    new-instance v2, Lcom/airbnb/lottie/model/content/GradientStroke;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/GradientStroke$1;)V

    return-object v2

    :cond_2
    const-string/jumbo v2, "k"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "k"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v5

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v6

    goto/16 :goto_2

    :cond_5
    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v7

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v8

    goto/16 :goto_5

    :cond_8
    const-string/jumbo v2, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    const/16 v18, 0x0

    :goto_7
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_9

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_1

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string/jumbo v2, "n"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v2, "o"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "d"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    const-string/jumbo v2, "v"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    :cond_b
    const-string/jumbo v2, "v"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v13

    goto :goto_8

    :cond_c
    const-string/jumbo v2, "g"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_8
.end method
