.class public Lcom/android/systemui/stackdivider/FocusedFrameView;
.super Landroid/view/View;
.source "FocusedFrameView.java"


# static fields
.field static mFocusedStackId:I


# instance fields
.field private mAdjustedForIme:Z

.field private mAnimating:Z

.field private mBackground:Landroid/view/View;

.field private mDividerButtonsVisible:Z

.field private mDockSide:I

.field private mDockedStackMinimized:Z

.field private mGuideView:Z

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


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

    if-ne v2, v3, :cond_3

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
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v2, v4, :cond_1

    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method private needToHideFocusedFrameView()Z
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x4

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

    if-ne v0, v4, :cond_2

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

    if-ne v0, v5, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v0, v5, :cond_b

    :cond_8
    :goto_0
    return v2

    :cond_9
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eq v0, v4, :cond_7

    :cond_a
    return v3

    :cond_b
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-ne v0, v4, :cond_a

    goto :goto_0
.end method


# virtual methods
.method initialize(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getFocusedStackId()I

    move-result v0

    sput v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_FocusedFrameView_3241()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_FocusedFrameView_3595()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_FocusedFrameView_4393()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_FocusedFrameView_4457(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_FocusedFrameView_5570()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
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
    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c;-><init>(Ljava/lang/Object;)V

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

    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setFocusedStack(I)V
    .locals 1

    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-eq v0, p1, :cond_0

    sput p1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$2;-><init>(Ljava/lang/Object;)V

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

    new-instance v1, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$4;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$4;-><init>(ZLjava/lang/Object;)V

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
