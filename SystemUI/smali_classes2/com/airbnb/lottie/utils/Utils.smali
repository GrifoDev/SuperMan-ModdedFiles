.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final SQRT_2:F

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 11

    const-string/jumbo v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_1

    sub-float v6, p2, p1

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    :cond_1
    const-string/jumbo v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    mul-float v5, v1, p1

    mul-float v0, v1, p2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v4, p3, v1

    add-float/2addr v3, v4

    add-float/2addr v2, v4

    cmpl-float v6, v3, v1

    if-ltz v6, :cond_4

    cmpl-float v6, v2, v1

    if-ltz v6, :cond_4

    invoke-static {v3, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v6

    int-to-float v3, v6

    invoke-static {v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v6

    int-to-float v2, v6

    :cond_4
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5

    invoke-static {v3, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v6

    int-to-float v3, v6

    :cond_5
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_6

    invoke-static {v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v6

    int-to-float v2, v6

    :cond_6
    cmpl-float v6, v3, v2

    if-nez v6, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    const-string/jumbo v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_7
    cmpl-float v6, v3, v2

    if-ltz v6, :cond_8

    sub-float/2addr v3, v1

    :cond_8
    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v2, v7, v8}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v6, v2, v1

    if-lez v6, :cond_a

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    rem-float v7, v2, v1

    sget-object v8, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v7, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_9
    :goto_1
    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p0, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    const-string/jumbo v6, "applyTrimPathIfNeeded"

    invoke-static {v6}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_a
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_9

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    add-float v7, v1, v3

    sget-object v8, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/animation/content/TrimPathContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v1, v0, v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v2, v0, v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    invoke-static {p0, v1, v2, v0}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    return-void

    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    if-nez p2, :cond_1

    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    :cond_2
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "animator_duration_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "animator_duration_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aput v3, v2, v4

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aput v3, v2, v5

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    sget v3, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    aput v3, v2, v6

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    sget v3, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    aput v3, v2, v7

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    invoke-virtual {p0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v2, v2, v6

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v3, v3, v4

    sub-float v0, v2, v3

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v2, v2, v7

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v3, v3, v5

    sub-float v1, v2, v3

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    return v2
.end method

.method public static hashFor(FFFF)I
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x11

    cmpl-float v1, p0, v2

    if-eqz v1, :cond_0

    const/16 v1, 0x20f

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v0, v1

    :cond_0
    cmpl-float v1, p1, v2

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    :cond_1
    cmpl-float v1, p2, v2

    if-eqz v1, :cond_2

    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v0, v1

    :cond_2
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_3

    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v0, v1

    :cond_3
    return v0
.end method

.method public static isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMajorVersion()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMajorVersion()I

    move-result v2

    if-gt v2, p1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMinorVersion()I

    move-result v2

    if-lt v2, p2, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getMinorVersion()I

    move-result v2

    if-gt v2, p2, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getPatchVersion()I

    move-result v2

    if-ge v2, p3, :cond_4

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
