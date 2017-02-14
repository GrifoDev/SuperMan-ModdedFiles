.class public Lcom/android/systemui/tv/pip/PipRecentsControlsView;
.super Landroid/widget/FrameLayout;
.source "PipRecentsControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;
    }
.end annotation


# instance fields
.field private mFocusGainAnimator:Landroid/animation/Animator;

.field private mFocusLoseAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

.field final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private mScrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    return-void
.end method

.method private static cancelAnimator(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private loadAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static startAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v0, v0, Lcom/android/systemui/tv/pip/PipControlsView;->mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v0, v0, Lcom/android/systemui/tv/pip/PipControlsView;->mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    check-cast v0, Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;->onBackPressed()V

    :cond_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f130402

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tv/pip/PipControlsView;

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    const v1, 0x7f130035

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mScrim:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    const v2, 0x7f0500d2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->loadAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusGainAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLoseAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLoseAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    const v4, 0x7f0500d3

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->loadAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mScrim:Landroid/view/View;

    const v4, 0x7f0500d4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->loadAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->getRecentsFocusedPipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5, v1, v5, v5}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->setPadding(IIII)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLoseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlsView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/tv/pip/PipControlsView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/tv/pip/PipControlsView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setListener(Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/tv/pip/PipControlsView;->setListener(Lcom/android/systemui/tv/pip/PipControlsView$Listener;)V

    return-void
.end method

.method public startFocusGainAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusGainAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLoseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V

    return-void
.end method

.method public startFocusLoseAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLoseAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V

    return-void
.end method
