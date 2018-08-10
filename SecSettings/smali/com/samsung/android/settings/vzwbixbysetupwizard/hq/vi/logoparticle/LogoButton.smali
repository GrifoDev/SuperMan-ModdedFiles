.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;
.super Landroid/widget/FrameLayout;
.source "LogoButton.java"


# instance fields
.field private centerRatio:F

.field private mBGView:Landroid/view/View;

.field private mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBixbyParticleView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

.field private mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

.field private mIsListeneing:Z

.field private mListenView:Landroid/view/View;

.field private mLogoView:Landroid/widget/FrameLayout;

.field private mOutStrokeView:Landroid/view/View;

.field private mProcessAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mProcessView:Landroid/widget/ImageView;

.field private mShadowView:Landroid/view/View;

.field private mThunmupAni:Landroid/animation/ValueAnimator;

.field private mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

.field private pos1Interpolator:Landroid/view/animation/Interpolator;

.field private pos2Interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->centerRatio:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBGView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mLogoView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mOutStrokeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mShadowView:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3db851ec    # 0.09f

    const v3, 0x3f70a3d7    # 0.94f

    const v4, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->pos1Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->pos2Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3db851ec    # 0.09f

    const v3, 0x3f70a3d7    # 0.94f

    const v4, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->pos1Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->pos2Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3db851ec    # 0.09f

    const v3, 0x3f70a3d7    # 0.94f

    const v4, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->pos1Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->pos2Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3db851ec    # 0.09f

    const v3, 0x3f70a3d7    # 0.94f

    const v4, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->pos1Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->pos2Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private hideListenLogo()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mOutStrokeView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const-string/jumbo v4, "LogoParticleBtn"

    const-string/jumbo v5, "hideListenLogo "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    int-to-double v4, v1

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    mul-int/lit16 v5, v1, 0xa0

    div-int/lit16 v5, v5, 0x8c

    mul-int/lit16 v6, v2, 0xa0

    div-int/lit16 v6, v6, 0x8c

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v3, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$3;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mLogoView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyParticleView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mLogoView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyParticleView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mLogoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->setLogoView(Landroid/widget/FrameLayout;)V

    :cond_0
    const v0, 0x7f0a04ec

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    const v0, 0x7f0a04e9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBGView:Landroid/view/View;

    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mShadowView:Landroid/view/View;

    const v0, 0x7f0a04ea

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mOutStrokeView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBGView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBGView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x3f857c58

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->centerRatio:F

    const v0, 0x7f0a04ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessView:Landroid/widget/ImageView;

    const v1, 0x7f08079e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method private setBixbyLogoViewAlpha(F)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mLogoView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$4;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setBixbyUserSayingViewScale(F)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "LogoParticleBtn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBixbyUserSayingViewScale"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->getScaleX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " proc :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    const-wide/16 v2, 0x96

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    const-string/jumbo v5, "scaleX"

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-virtual {v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput p1, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    const-string/jumbo v5, "scaleY"

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-virtual {v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput p1, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mUserSayingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showListenLogo()V
    .locals 12

    const v9, 0x7f07087c

    const/16 v11, 0x8

    const/4 v10, 0x0

    const-string/jumbo v6, "LogoParticleBtn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showListenLogo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v6, "LogoParticleBtn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showListenLogo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    :cond_2
    move v3, v1

    move v4, v2

    int-to-double v6, v1

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v5, v6

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    new-instance v7, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;

    invoke-direct {v7, p0, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;IIF)V

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    int-to-float v7, v3

    iget v8, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->centerRatio:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v8, v4

    iget v9, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->centerRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mOutStrokeView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBGView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mShadowView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mListenView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "LogoParticleBtn"

    const-string/jumbo v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStopListening()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStopSaying()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mThunmupAni:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mThunmupAni:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mThunmupAni:Landroid/animation/ValueAnimator;

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "LogoParticleBtn"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->init()V

    return-void
.end method

.method public onStartCompleteMotion()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->setBixbyIconScale(F)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->setBixbyUserSayingViewScale(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyParticleView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->startCompleteMotion(Z)V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    const-string/jumbo v0, "LogoParticleBtn"

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mIsListeneing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mIsListeneing:Z

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->startDefaultListeningAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->showListenLogo()V

    :cond_0
    return-void
.end method

.method public onStartSaying()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyParticleView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->startBixbySpeaking(Z)V

    return-void
.end method

.method public onStartSetupWizardIntroCompleteMotion()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const-string/jumbo v0, "LogoParticleBtn"

    const-string/jumbo v1, "onStartSetupWizardIntroCompleteMotion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->setBixbyIconScale(F)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->setBixbyUserSayingViewScale(F)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->showListenLogo()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyParticleView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->startCompleteMotion(Z)V

    return-void
.end method

.method public onStopListening()V
    .locals 2

    const-string/jumbo v0, "LogoParticleBtn"

    const-string/jumbo v1, "onStopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mIsListeneing:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->setBixbyLogoViewAlpha(F)V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->hideListenLogo()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->stopUserSaying()V

    return-void
.end method

.method public onStopSaying()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyParticleView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->stopBixbySpeaking(Z)V

    return-void
.end method

.method public setBixbyIconLogo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessView:Landroid/widget/ImageView;

    const v1, 0x7f08079e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setBixbyIconScale(F)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "LogoParticleBtn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBixbyIconScale"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->getScaleX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " proc :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    const-wide/16 v2, 0x96

    const-string/jumbo v4, "scaleX"

    new-array v5, v9, [F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    aput p1, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v4, "scaleY"

    new-array v5, v9, [F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->getScaleY()F

    move-result v6

    aput v6, v5, v7

    aput p1, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyIconAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setClearViewMode()V
    .locals 3

    const-string/jumbo v0, "LogoParticleBtn"

    const-string/jumbo v1, "setClearViewMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyUserSayingView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->setClearViewMode()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mBixbyParticleView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->setClearViewMode()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const-string/jumbo v0, "LogoParticleBtn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClearViewMode process img is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->mProcessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setTint(I)V

    return-void
.end method
