.class public Lcom/android/systemui/recents/views/SystemBarScrimViews;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"


# instance fields
.field private mHasDockedTasks:Z

.field private mHasNavBarScrim:Z

.field private mHasTransposedNavBar:Z

.field private mNavBarScrimEnterDuration:I

.field private mNavBarScrimView:Landroid/view/View;

.field private mShouldAnimateNavBarScrim:Z


# direct methods
.method private animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    sget-object v1, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private animateScrimToCurrentNavBarState(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eq v2, v1, :cond_0

    if-eqz v1, :cond_1

    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_0
.end method

.method private createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 3

    const/4 v2, 0x6

    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    return-object v0
.end method

.method private isNavBarScrimRequired(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasTransposedNavBar:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->hasStackTasks:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 4

    const/4 v3, 0x6

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    iget v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    :cond_0
    return-void
.end method
