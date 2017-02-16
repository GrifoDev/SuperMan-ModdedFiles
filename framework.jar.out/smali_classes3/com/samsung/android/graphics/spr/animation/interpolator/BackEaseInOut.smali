.class public Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;
.super Ljava/lang/Object;
.source "BackEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private overshot:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "overshot"    # F

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->overshot:F

    .line 43
    return-void
.end method

.method private inout(FF)F
    .locals 10
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const-wide v8, 0x3ff8666666666666L    # 1.525

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 53
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 54
    const p2, 0x3fd9cd60

    .line 56
    :cond_0
    mul-float/2addr p1, v1

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 58
    mul-float v0, p1, p1

    float-to-double v0, v0

    float-to-double v2, p2

    mul-double/2addr v2, v8

    double-to-float p2, v2

    add-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    float-to-double v4, p2

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-float v0, v0

    return v0

    .line 60
    :cond_1
    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    float-to-double v0, v0

    float-to-double v2, p2

    mul-double/2addr v2, v8

    double-to-float p2, v2

    add-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    float-to-double v4, p2

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 49
    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->inout(FF)F

    move-result v0

    return v0
.end method
