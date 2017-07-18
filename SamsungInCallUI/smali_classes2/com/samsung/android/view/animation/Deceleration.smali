.class public Lcom/samsung/android/view/animation/Deceleration;
.super Landroid/view/animation/PathInterpolator;
.source "Deceleration.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
