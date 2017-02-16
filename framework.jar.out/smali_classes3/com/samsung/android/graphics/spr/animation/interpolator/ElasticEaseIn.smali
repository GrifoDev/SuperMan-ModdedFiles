.class public Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;
.super Ljava/lang/Object;
.source "ElasticEaseIn.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private amplitude:F

.field private period:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "amplitude"    # F
    .param p2, "period"    # F

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;->amplitude:F

    .line 46
    iput p2, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;->period:F

    .line 44
    return-void
.end method

.method private in(FFF)F
    .locals 10
    .param p1, "t"    # F
    .param p2, "a"    # F
    .param p3, "p"    # F

    .prologue
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 55
    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    .line 56
    return v2

    .line 58
    :cond_0
    cmpl-float v1, p1, v6

    if-ltz v1, :cond_1

    .line 59
    return v6

    .line 61
    :cond_1
    cmpl-float v1, p3, v2

    if-nez v1, :cond_2

    .line 62
    const p3, 0x3e99999a    # 0.3f

    .line 65
    :cond_2
    cmpl-float v1, p2, v2

    if-eqz v1, :cond_3

    cmpg-float v1, p2, v6

    if-gez v1, :cond_4

    .line 66
    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 67
    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, p3, v1

    .line 71
    .local v0, "s":F
    :goto_0
    float-to-double v2, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-float/2addr p1, v6

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-float v1, p1, v0

    float-to-double v4, v1

    mul-double/2addr v4, v8

    float-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    neg-double v2, v2

    double-to-float v1, v2

    return v1

    .line 69
    .end local v0    # "s":F
    :cond_4
    float-to-double v2, p3

    div-double/2addr v2, v8

    div-float v1, v6, p2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .restart local v0    # "s":F
    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;->amplitude:F

    iget v1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;->period:F

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;->in(FFF)F

    move-result v0

    return v0
.end method
