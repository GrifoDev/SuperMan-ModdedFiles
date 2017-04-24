.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecentsWindowViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final LAYOUT_CHANGE_ANIMATION_DURATION:I

.field mActivityManager:Landroid/app/ActivityManager;

.field mContext:Landroid/content/Context;

.field private mDisplayOrientation:I

.field private mDisplayRect:Landroid/graphics/Rect;

.field mIam:Landroid/app/IActivityManager;

.field mOneTaskViewHeight:I

.field mOneTaskViewWidth:I

.field mOverFourTaskViewHeight:I

.field mOverFourTaskViewWidth:I

.field mRecentsLayoutHeight:I

.field mRemoveView:Landroid/view/View;

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mThreeTaskViewHeight:I

.field mThreeTaskViewWidth:I

.field mTwoTaskViewHeight:I

.field mTwoTaskViewWidth:I

.field mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    const/16 v0, 0x14d

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->LAYOUT_CHANGE_ANIMATION_DURATION:I

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIam:Landroid/app/IActivityManager;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRecentsLayoutHeight:I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mOneTaskViewWidth:I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mOneTaskViewHeight:I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTwoTaskViewWidth:I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTwoTaskViewHeight:I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mThreeTaskViewWidth:I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mThreeTaskViewHeight:I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0269

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mOverFourTaskViewWidth:I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mOverFourTaskViewHeight:I

    return-void
.end method

.method private onViewAttachAnimation(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 0

    return-void
.end method

.method private reload()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    return-void
.end method

.method private requestUpdateRecentsLayout(I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateLayoutSpanCount()V

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v5, v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v5, v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    move v3, v1

    :goto_0
    if-gt v3, v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v6, 0x14d

    invoke-virtual {v0, v6, v7}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    iput-object v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    :cond_2
    new-instance v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-static {v5, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method private startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method private updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 5

    iget-object v3, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRecentsLayoutHeight:I

    :goto_0
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mOneTaskViewWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mOneTaskViewHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRecentsLayoutHeight:I

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTwoTaskViewWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTwoTaskViewHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mThreeTaskViewWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mThreeTaskViewHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mOverFourTaskViewWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mOverFourTaskViewHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method public addTaskAt(Lcom/android/systemui/recents/model/Task;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;I)V
    .locals 5

    const-string/jumbo v0, "RecentsWindowViewAdapter"

    const-string/jumbo v1, "onBindViewHolder() - position=%d\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    .locals 5

    const-string/jumbo v2, "RecentsWindowViewAdapter"

    const-string/jumbo v3, "onCreateViewHolder()\n"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f04012e

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Landroid/view/View;)V

    const v2, 0x7f13034b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    const v2, 0x7f13034c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    const v2, 0x7f13034d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f130094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f130093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f13033c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f13034e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f130334

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    return-object v1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewAttachedToWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    return-void

    :cond_0
    const-string/jumbo v6, "RecentsWindowViewAdapter"

    const-string/jumbo v7, "onViewAttachedToWindow() - position=%d\n"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->startedAnimation:Z

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iget-boolean v6, v3, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v0

    :goto_0
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    iget-object v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v0, v7, v8}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ne v6, v1, :cond_3

    :goto_1
    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setFocus(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewAttachAnimation(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewDetachedFromWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "RecentsWindowViewAdapter"

    const-string/jumbo v3, "onViewDetachedFromWindow() - position=%d\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    iput-boolean v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->startedAnimation:Z

    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    iput-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    :cond_0
    if-ltz v3, :cond_2

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2}, Lcom/android/systemui/recents/model/LockTaskPreference;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v7}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyItemRemoved(I)V

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->requestUpdateRecentsLayout(I)V

    :cond_2
    return-void
.end method

.method public setNewStackTasks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->reload()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public startTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 8

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-string/jumbo v3, "RecentsWindowViewAdapter"

    const-string/jumbo v4, "startTask() - %s\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v4, v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method
