.class public Lcom/samsung/android/view/animation/SineIn50;
.super Landroid/view/animation/PathInterpolator;
.source "SineIn50.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x3f547ae1    # 0.83f

    .line 8
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 9
    return-void
.end method
