.class public Lcom/android/phone/common/compat/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/compat/PathInterpolatorCompat$PathInterpolatorBase;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "controlX1"    # F
    .param p1, "controlY1"    # F
    .param p2, "controlX2"    # F
    .param p3, "controlY2"    # F

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/phone/common/compat/PathInterpolatorCompat$PathInterpolatorBase;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/common/compat/PathInterpolatorCompat$PathInterpolatorBase;-><init>(FFFF)V

    goto :goto_0
.end method
