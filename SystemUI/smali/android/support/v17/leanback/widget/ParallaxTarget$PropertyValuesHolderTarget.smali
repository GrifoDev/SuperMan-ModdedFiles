.class public final Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;
.super Landroid/support/v17/leanback/widget/ParallaxTarget;
.source "ParallaxTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ParallaxTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyValuesHolderTarget"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mFraction:F


# virtual methods
.method public update(F)V
    .locals 4

    iput p1, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mFraction:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v1, p1

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void
.end method
