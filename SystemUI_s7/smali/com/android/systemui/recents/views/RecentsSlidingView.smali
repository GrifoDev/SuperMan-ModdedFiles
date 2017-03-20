.class public Lcom/android/systemui/recents/views/RecentsSlidingView;
.super Landroid/view/ViewGroup;
.source "RecentsSlidingView.java"


# static fields
.field public static mCurPage:I

.field public static mLastScrollY:I

.field public static mTargetPage:I


# instance fields
.field mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

.field mAppListViewContainer:Landroid/view/View;

.field mCloseAllButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDecorView:Landroid/view/View;

.field mIsInMultiWindowMode:Z

.field mIsScrollAnimating:Z

.field private mMeasuredHeight:I

.field mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

.field public mScroller:Landroid/widget/Scroller;

.field mStrMoreApps:Ljava/lang/String;

.field mStrRecents:Ljava/lang/String;

.field mToggleButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    return-void
.end method

.method private handleAppListViewAttach(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    const v1, 0x7f040119

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    const v1, 0x7f13031a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsAppListView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->bindViews(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->addView(Landroid/view/View;)V

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "add app list view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->removeView(Landroid/view/View;)V

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "remove app list view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleToggleButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    const v1, 0x7f0f05da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private isRecentsPage(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPageChanged(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onPageChanged(%d)\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v5}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v5}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v4}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->resetScroll()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    const v0, 0x7f130316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    const v0, 0x7f130318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsSlidingView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsSlidingView$1;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public computeScroll()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsSlidingView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 8

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onBusEvent(LaunchTaskEvent) - target=%d\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/RecentsSlidingView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView$2;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :pswitch_1
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iget-boolean v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iget-boolean v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollVerticalFirstPage()V

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollVerticalFirstPage()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const-string/jumbo v2, "RecentsSlidingView"

    const-string/jumbo v3, "onLayout(%b, %d, %d, %d, %d)\n"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int v0, v2, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, p2, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const-string/jumbo v1, "RecentsSlidingView"

    const-string/jumbo v2, "onMeasure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onMultiWindowModeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onSizeChanged(%d, %d -> %d, %d)\n"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetScroll()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const-string/jumbo v0, "RecentsSlidingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged() - visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public reload(Z)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "reload() - isInMultiWindowMode=%b\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleAppListViewAttach(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleToggleButton(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetScroll()V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->reload()V

    :cond_1
    return-void
.end method

.method public resetScroll()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "resetScroll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    sput v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    sput v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    return-void
.end method

.method public scrollVerticalFirstPage()V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    sget v3, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    neg-int v4, v3

    const/16 v5, 0x64

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    return-void
.end method

.method public toggleScrollVertical()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-lez v0, :cond_2

    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    neg-int v4, v0

    :goto_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    const/16 v5, 0x12c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v2, "toggleScrollVertical() - startScroll(%d, %d, %d, %d, %d)\n"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    iget v5, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v3, v5

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v4, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1
.end method
