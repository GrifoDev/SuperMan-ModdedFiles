.class public Lcom/android/systemui/stackdivider/AppPairPopupAnimator;
.super Landroid/view/animation/AnimationSet;
.source "AppPairPopupAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/AppPairPopupAnimator$1;,
        Lcom/android/systemui/stackdivider/AppPairPopupAnimator$2;
    }
.end annotation


# instance fields
.field private INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

.field private INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

.field private INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

.field private mAlphaAnim:Landroid/view/animation/Animation;

.field private mContentAnim:Landroid/view/animation/Animation;

.field private mHideListener:Landroid/view/animation/Animation$AnimationListener;

.field private mPivotX:F

.field private mPivotY:F

.field private mShowListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/AppPairPopupAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3fa66666    # 1.3f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    iput-object v5, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    iput-object v5, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    new-instance v0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator$1;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mShowListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator$2;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mHideListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public constructor <init>(ZLandroid/view/View;FFI)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    new-instance v0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator$1;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mShowListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator$2;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mHideListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mTargetView:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mPivotX:F

    iput p4, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mPivotY:F

    packed-switch p5, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->addAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mPivotX:F

    iget v8, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mPivotY:F

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e8a3d71    # 0.27f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e8a3d71    # 0.27f

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xa6

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mHideListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mPivotX:F

    iget v8, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mPivotY:F

    const v1, 0x3e8a3d71    # 0.27f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e8a3d71    # 0.27f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mContentAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mAlphaAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x53

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->mShowListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
