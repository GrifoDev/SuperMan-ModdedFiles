.class public Lcom/samsung/android/visualeffect/circle/BounceAnimation;
.super Ljava/lang/Object;
.source "BounceAnimation.java"


# instance fields
.field mDownDuration:I

.field mDownInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

.field mScaleFrom:F

.field mScaleMid:F

.field mScaleTo:F

.field mUpDuration:I

.field mUpInterpolator:Landroid/view/animation/Interpolator;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FFF)V
    .locals 7

    const/16 v5, 0xa7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFFII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FFFII)V
    .locals 9

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v7, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v8, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFFIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FFFIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleFrom:F

    iput p3, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    iput p4, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleTo:F

    iput p5, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpDuration:I

    iput p6, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownDuration:I

    iput-object p7, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpInterpolator:Landroid/view/animation/Interpolator;

    iput-object p8, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getBounceDownDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownDuration:I

    return v0
.end method

.method public getBounceUpDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpDuration:I

    return v0
.end method

.method public setBounceListener(Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

    return-void
.end method

.method public startAnimation()V
    .locals 10

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleFrom:F

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    iget v3, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleFrom:F

    iget v4, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    iget v3, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleTo:F

    iget v4, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    iget v5, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleTo:F

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v2, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;-><init>(Lcom/samsung/android/visualeffect/circle/BounceAnimation;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;-><init>(Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
