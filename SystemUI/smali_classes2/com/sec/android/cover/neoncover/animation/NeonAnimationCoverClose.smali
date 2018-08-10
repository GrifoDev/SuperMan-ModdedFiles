.class public Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;
.super Lcom/sec/android/cover/neoncover/animation/NeonAnimation;
.source "NeonAnimationCoverClose.java"


# instance fields
.field private black:Landroid/view/View;

.field private darkGrey:Landroid/view/View;

.field private lightGrey:Landroid/view/View;

.field private mAnimationView:Landroid/view/View;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private neonLogo:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->black:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->darkGrey:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->lightGrey:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->neon_cover_close_animation_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimationView:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->cover_close_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->black:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimationView:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->cover_close_dark_grey:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->darkGrey:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimationView:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->cover_close_light_grey:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->lightGrey:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimationView:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->cover_close_neon_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->neonLogo:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->prepareAnimation()V

    return-void
.end method

.method private prepareAnimation()V
    .locals 14

    const-wide/16 v12, 0x1f4

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->neonLogo:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v3, v6, v9

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$animator;->neon_cover_close_circle_animation:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->lightGrey:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    sget-object v5, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    new-instance v6, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$2;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$2;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$animator;->neon_cover_close_circle_animation:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->darkGrey:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    sget-object v5, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    new-instance v6, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$3;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$3;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$animator;->neon_cover_close_circle_animation:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->black:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    sget-object v5, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    new-instance v6, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$4;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$4;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->neonLogo:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v5, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v4, v6, v9

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->clear()V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimationView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->black:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->darkGrey:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->lightGrey:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->neonLogo:Landroid/view/View;

    return-void
.end method

.method public getAnimationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimationView:Landroid/view/View;

    return-object v0
.end method

.method public startAnimation()V
    .locals 2

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->black:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->darkGrey:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->lightGrey:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method
