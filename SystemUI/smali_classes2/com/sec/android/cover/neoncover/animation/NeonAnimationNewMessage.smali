.class public Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;
.super Lcom/sec/android/cover/neoncover/animation/NeonAnimation;
.source "NeonAnimationNewMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$CountAnimatiorListener;
    }
.end annotation


# instance fields
.field private mAnimationView:Landroid/view/View;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPlayedNumber:I

.field private toAnim:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mPlayedNumber:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mPlayedNumber:I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->neon_cover_new_message_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimationView:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->toAnim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->toAnim:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$animator;->neon_cover_new_message_animation:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->toAnim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->clear()V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimationView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->toAnim:Landroid/view/View;

    return-void
.end method

.method public getAnimationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimationView:Landroid/view/View;

    return-object v0
.end method

.method public startAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mPlayedNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mPlayedNumber:I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;

    iget v2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mPlayedNumber:I

    invoke-direct {v1, p0, p0, v2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->toAnim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method
