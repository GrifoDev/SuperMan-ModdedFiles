.class Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
        "<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorPoints:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;-><init>(I)V

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Lorg/json/JSONArray;)V
    .locals 11

    iget v7, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v6, v7, 0x4

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-le v7, v6, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    sub-int/2addr v7, v6

    div-int/lit8 v4, v7, 0x2

    new-array v5, v4, [D

    new-array v3, v4, [D

    move v1, v6

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v7

    if-lt v1, v7, :cond_3

    return-void

    :cond_0
    return-void

    :cond_1
    rem-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    aput-wide v8, v3, v2

    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    aput-wide v8, v5, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v7

    aget v0, v7, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v7

    aget v7, v7, v1

    float-to-double v8, v7

    invoke-direct {p0, v8, v9, v5, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->getOpacityAtPosition(D[D[D)I

    move-result v7

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v7

    aput v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 15
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p3

    array-length v2, v0

    if-lt v8, v2, :cond_0

    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p4, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    :cond_0
    add-int/lit8 v2, v8, -0x1

    aget-wide v10, p3, v2

    aget-wide v12, p3, v8

    aget-wide v2, p3, v8

    cmpl-double v2, v2, p1

    if-ltz v2, :cond_1

    sub-double v2, p1, v10

    sub-double v4, v12, v10

    div-double v6, v2, v4

    add-int/lit8 v2, v8, -0x1

    aget-wide v2, p4, v2

    aget-wide v4, p4, v8

    invoke-static/range {v2 .. v7}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 14

    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    iget v9, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v7, v9, [F

    iget v9, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v3, v9, [I

    new-instance v5, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v5, v7, v3}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    iget v12, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v12, v12, 0x4

    if-ne v9, v12, :cond_0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    iget v9, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v9, v9, 0x4

    if-lt v6, v9, :cond_1

    invoke-direct {p0, v5, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Lorg/json/JSONArray;)V

    return-object v5

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected gradient length: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, ". Expected "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v12, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v12, v12, 0x4

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, ". This may affect the appearance of the gradient. "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "Make sure to save your After Effects file before exporting an animation with "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "gradients."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "LOTTIE"

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v6, 0x4

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    rem-int/lit8 v9, v6, 0x4

    packed-switch v9, :pswitch_data_0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_0
    double-to-float v9, v10

    aput v9, v7, v2

    goto :goto_2

    :pswitch_1
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v10

    double-to-int v8, v12

    goto :goto_2

    :pswitch_2
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v10

    double-to-int v4, v12

    goto :goto_2

    :pswitch_3
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v10

    double-to-int v1, v12

    const/16 v9, 0xff

    invoke-static {v9, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v3, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v0

    return-object v0
.end method
