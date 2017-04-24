.class public Lcom/samsung/android/view/animation/SineOut50;
.super Landroid/view/animation/PathInterpolator;
.source "SineOut50.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const v2, 0x3e2e147b    # 0.17f

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
