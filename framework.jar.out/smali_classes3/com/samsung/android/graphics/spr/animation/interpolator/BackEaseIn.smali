.class public Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseIn;
.super Ljava/lang/Object;
.source "BackEaseIn.java"

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
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseIn;->overshot:F

    .line 43
    return-void
.end method

.method private in(FF)F
    .locals 2
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    .line 53
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 54
    const p2, 0x3fd9cd60

    .line 56
    :cond_0
    mul-float v0, p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 49
    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseIn;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseIn;->in(FF)F

    move-result v0

    return v0
.end method
