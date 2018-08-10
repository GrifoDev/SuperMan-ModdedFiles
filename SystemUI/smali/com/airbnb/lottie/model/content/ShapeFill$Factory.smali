.class Lcom/airbnb/lottie/model/content/ShapeFill$Factory;
.super Ljava/lang/Object;
.source "ShapeFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeFill;
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

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    const-string/jumbo v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_1

    :goto_1
    const-string/jumbo v0, "fillEnabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v0, "r"

    invoke-virtual {p0, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_2

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_2
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeFill;

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/content/ShapeFill$1;)V

    return-object v0

    :cond_0
    invoke-static {v8, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v9, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v5

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_2
.end method
