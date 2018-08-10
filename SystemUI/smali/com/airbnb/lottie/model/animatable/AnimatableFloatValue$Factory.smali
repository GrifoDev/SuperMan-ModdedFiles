.class public final Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    if-nez p0, :cond_2

    :cond_0
    :goto_1
    sget-object v2, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v0

    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iget-object v4, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v2, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-direct {v3, v4, v2, v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/List;Ljava/lang/Float;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$1;)V

    return-object v3

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "x"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_1
.end method
