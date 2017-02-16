.class public Lcom/android/systemui/recents/views/RecentsAppListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecentsAppListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

.field mContext:Landroid/content/Context;

.field mGoToTopButton:Landroid/widget/Button;

.field private mKioskId:I

.field mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

.field mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const-string/jumbo v0, "RecentsAppListView"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->initRecyclerView()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    return-void
.end method

.method private initRecyclerView()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->bindAdapter(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;)V

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f130320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsAppListView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public fling(II)Z
    .locals 2

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    return v0
.end method

.method public handleButtonsContainer(Z)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public handleGoToTopButton(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->resetScroll()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleButtonsContainer(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleGoToTopButton(Z)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5

    const-string/jumbo v0, "RecentsAppListView"

    const-string/jumbo v1, "onVisibilityChanged(%d)\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public reload()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->initRecyclerView()V

    :cond_0
    const-string/jumbo v1, "RecentsAppListView"

    const-string/jumbo v2, "reload()\n"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->reload()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->reload()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->resetScroll()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleGoToTopButton(Z)V

    return-void
.end method

.method public resetScroll()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->resetScroll()V

    return-void
.end method
