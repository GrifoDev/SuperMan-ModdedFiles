.class public Lcom/android/systemui/stackdivider/FocusedFrameView;
.super Landroid/view/View;
.source "FocusedFrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_liftFocusedFrameView_int_dividerSize_int_touchElevation_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_onBusEvent_com_android_systemui_stackdivider_events_DividerButtonsVisibleEvent_e_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_releaseFocusedFrameView__LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setDockSide_int_newDockSide_boolean_relayout_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setFocusedStack_int_newFocusedStackId_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;
    }
.end annotation


# static fields
.field static mFocusedStackId:I


# instance fields
.field mAdjustedForIme:Z

.field private mAnimating:Z

.field mBackground:Landroid/view/View;

.field mDividerButtonsVisible:Z

.field mDockSide:I

.field mDockedStackMinimized:Z

.field mGuideView:Z

.field private mLiftFocusedFrameRatio:F

.field mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideView:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private isHorizontalDivision()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutFocusedFrameView()V
    .locals 5

    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->needToHideFocusedFrameView()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layout(IIII)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAlpha(F)V

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v1, v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v2, v4, :cond_1

    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method private needToHideFocusedFrameView()Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideView:Z

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    if-eqz v0, :cond_6

    return v3

    :cond_6
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v0, v4, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v0, v4, :cond_9

    :cond_8
    return v2

    :cond_9
    return v3
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$3()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$4()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$5()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$6(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_FocusedFrameView_lambda$7()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method initialize(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v0

    sput v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    return-void
.end method

.method liftFocusedFrameView(II)V
    .locals 5

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x3

    int-to-float v1, p1

    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mLiftFocusedFrameRatio:F

    mul-float v0, v1, v2

    iget v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v1, v3, :cond_0

    mul-float/2addr v0, v4

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_liftFocusedFrameView_int_dividerSize_int_touchElevation_LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_liftFocusedFrameView_int_dividerSize_int_touchElevation_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v1, v3, :cond_0

    mul-float/2addr v0, v4

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v1, v3, :cond_0

    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-eq v1, v3, :cond_0

    mul-float/2addr v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    :cond_0
    new-instance v0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_onBusEvent_com_android_systemui_stackdivider_events_DividerButtonsVisibleEvent_e_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_onBusEvent_com_android_systemui_stackdivider_events_DividerButtonsVisibleEvent_e_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mLiftFocusedFrameRatio:F

    return-void
.end method

.method onMultiWindowAppTransitionFinished()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    :cond_1
    return-void
.end method

.method releaseFocusedFrameView()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_releaseFocusedFrameView__LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_releaseFocusedFrameView__LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method setAdjustedForIme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method setDockSide(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setDockSide_int_newDockSide_boolean_relayout_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setDockSide_int_newDockSide_boolean_relayout_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setFocusedStack(I)V
    .locals 1

    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-eq v0, p1, :cond_0

    sput p1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    new-instance v0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setFocusedStack_int_newFocusedStackId_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setFocusedStack_int_newFocusedStackId_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setGuideView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideView:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method setMinimizedDockStack(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method setMinimizedDockStack(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method updateLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method
