.class Landroid/transition/Visibility$DisappearListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/Animator$AnimatorPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSuppressLayout:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    iput-object p1, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iput p2, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Landroid/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method private suppressLayout(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method
