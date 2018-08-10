.class public Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "AnimationParser.java"


# instance fields
.field private mAttribute:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 12

    const/4 v11, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isStartTag()Z

    move-result v8

    if-eqz v8, :cond_2e

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceDensity()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isWallpaperView()Z

    move-result v4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2d

    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "fromDegrees"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto :goto_1

    :cond_4
    const-string/jumbo v8, "toDegrees"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto :goto_1

    :cond_5
    const-string/jumbo v8, "key"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    goto :goto_1

    :cond_6
    const-string/jumbo v8, "xFrom"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto :goto_1

    :cond_7
    const-string/jumbo v8, "xTo"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto :goto_1

    :cond_8
    const-string/jumbo v8, "xOffSet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    goto :goto_1

    :cond_9
    const-string/jumbo v8, "yOffSet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v8, "key"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v8, "adjust"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v8, "yFrom"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v8, "yTo"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v8, "r"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v2

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v8, "a"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v8, "b"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v8, "ra"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v8, "rb"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v8, "fromAlpha"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v8, "toAlpha"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v8, "fromXDelta"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    if-eqz v4, :cond_16

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    :goto_2
    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_1

    :cond_16
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v8

    goto :goto_2

    :cond_17
    const-string/jumbo v8, "toXDelta"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    if-eqz v4, :cond_18

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    :goto_3
    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_1

    :cond_18
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v8

    goto :goto_3

    :cond_19
    const-string/jumbo v8, "fromYDelta"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    if-eqz v4, :cond_1a

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    :goto_4
    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_1

    :cond_1a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v8

    goto :goto_4

    :cond_1b
    const-string/jumbo v8, "toYDelta"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    if-eqz v4, :cond_1c

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    :goto_5
    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_1

    :cond_1c
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v8

    goto :goto_5

    :cond_1d
    const-string/jumbo v8, "fromXScale"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v8, "toXScale"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v8, "fromYScale"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_1

    :cond_20
    const-string/jumbo v8, "toYScale"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_1

    :cond_21
    const-string/jumbo v8, "length"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v8, "image"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "drawable"

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v8, "duration"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    goto/16 :goto_1

    :cond_24
    const-string/jumbo v8, "repeatCount"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    goto/16 :goto_1

    :cond_25
    const-string/jumbo v8, "repeatMode"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    goto/16 :goto_1

    :cond_26
    const-string/jumbo v8, "delay"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v8, "accelerateInterpolator"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    const-string/jumbo v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    :cond_28
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    :cond_29
    const-string/jumbo v8, "decelerateInterpolator"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const-string/jumbo v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    :cond_2a
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    :cond_2b
    const-string/jumbo v8, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    :cond_2c
    const-string/jumbo v8, "normalSpeed"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-object v11, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    :cond_2d
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    :goto_6
    return-void

    :cond_2e
    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    const-string/jumbo v9, "ImageResource"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v8

    if-eqz v8, :cond_2f

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setApkContext(Landroid/content/Context;)V

    :cond_2f
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v8

    if-nez v8, :cond_30

    return-void

    :cond_30
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildAnimation(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto :goto_6
.end method
