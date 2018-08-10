.class public Lcom/android/systemui/recents/views/RecentsSlidingView;
.super Landroid/widget/FrameLayout;
.source "RecentsSlidingView.java"


# static fields
.field private static mToggleAnimationTranslationY:I


# instance fields
.field mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

.field mAppListViewContainer:Landroid/view/View;

.field mCloseAllButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDecorView:Landroid/view/View;

.field mHideAnimator:Landroid/animation/ObjectAnimator;

.field mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mShowAnimator:Landroid/animation/ObjectAnimator;

.field mStrMoreApps:Ljava/lang/String;

.field mStrRecents:Ljava/lang/String;

.field mToggleButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    return-void
.end method

.method private handleAppListView(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d016e

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    const v1, 0x7f0a0422

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsAppListView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->bindViews(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->reload()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->unload(Z)V

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
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120951

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    const v1, 0x7f120956

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    const v1, 0x7f07054b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleAnimationTranslationY:I

    return-void
.end method

.method private initAppListView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleAnimationTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initRecentsView()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setElevation(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onPageChanged(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

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

    const v0, 0x7f0a0412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    const v0, 0x7f0a00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/-$Lambda$tDRCPvqzSFeRzQVE1q7aDktliAc;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/-$Lambda$tDRCPvqzSFeRzQVE1q7aDktliAc;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/-$Lambda$tDRCPvqzSFeRzQVE1q7aDktliAc$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/-$Lambda$tDRCPvqzSFeRzQVE1q7aDktliAc$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsSlidingView_4444(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->toggle()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsSlidingView_4507(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 8

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v6, 0x1

    :goto_0
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

    :goto_1
    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->toggle()V

    goto :goto_1

    :pswitch_2
    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->toggle()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a041b

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->initRecentsView()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public reload(Z)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleAppListView(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleToggleButton(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetViews()V

    return-void
.end method

.method public resetViews()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->initRecentsView()V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->initAppListView()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(Z)V

    return-void
.end method

.method public toggle()V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v6, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    if-eqz v2, :cond_5

    move v3, v4

    :goto_3
    iput v3, v6, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v11}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v8

    aput v8, v7, v5

    aput v10, v7, v4

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v5

    aput v11, v7, v4

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    sget-object v6, Lcom/android/systemui/Interpolators;->SINE_IN_OUT70:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v0, v10}, Landroid/view/View;->setElevation(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    aput v8, v7, v5

    sget v8, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleAnimationTranslationY:I

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v5

    aput v10, v7, v4

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT70:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/recents/views/RecentsSlidingView$1;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView$1;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    goto/16 :goto_2

    :cond_5
    move v3, v5

    goto/16 :goto_3
.end method
