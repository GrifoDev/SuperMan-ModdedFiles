.class public Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
.super Ljava/lang/Object;
.source "AnimatablePathValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/AnimatablePathValue$ValueFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private initialPoint:Landroid/graphics/PointF;

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->hasKeyframes(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v5

    invoke-static {p1, v5}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    iget-object v5, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-static {v5}, Lcom/airbnb/lottie/animation/Keyframe;->setEndFrames(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue$ValueFactory;->access$000()Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;

    move-result-object v5

    invoke-static {v2, p2, v5}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-result-object v3

    iget-object v5, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "k"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    const-string/jumbo v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    return-object v0
.end method

.method private hasKeyframes(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    return v1

    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->hasAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public hasAnimation()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initialPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
