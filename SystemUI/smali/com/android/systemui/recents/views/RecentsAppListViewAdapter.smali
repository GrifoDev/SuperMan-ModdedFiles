.class public Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecentsAppListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static INDEX_HEADER_MULTI_WINDOW_APPS:I

.field public static INDEX_HEADER_RECOMMENDATION_APPS:I


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentUser:I

.field mInflater:Landroid/view/LayoutInflater;

.field mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

.field mNeedDarkFont:Z

.field mRecommendationAppCount:I

.field mTopRunningTaskAffinity:Ljava/lang/String;

.field mTopRunningTaskPackageName:Ljava/lang/String;

.field mTopRunningTaskUser:I

.field mView:Lcom/android/systemui/recents/views/RecentsAppListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_RECOMMENDATION_APPS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p2, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mCurrentUser:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->isPreloaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preload()V

    :cond_0
    return-void
.end method

.method private adjustPosition(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isRecommendationAppPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x2

    goto :goto_0
.end method

.method private isFirstRow(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getSpanCount()I

    move-result v0

    div-int v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mRecommendationAppCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mRecommendationAppCount:I

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private updateList()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->updateTopRunningDockedTaskInfo()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskAffinity:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getAppInfos(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getRecommendationAppCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mRecommendationAppCount:I

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mRecommendationAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_MULTI_WINDOW_APPS:I

    return-void
.end method

.method private updateTopRunningDockedTaskInfo()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopDockedTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskAffinity:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskPackageName:Ljava/lang/String;

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskUser:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isHeaderPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isRecommendationAppPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHeaderPosition(I)Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_RECOMMENDATION_APPS:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_MULTI_WINDOW_APPS:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecommendationAppPosition(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mRecommendationAppCount:I

    if-lez v0, :cond_0

    if-lt p1, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mRecommendationAppCount:I

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 3

    iget v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->position:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;

    iget v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->position:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isRecommendationAppPosition(I)Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->updateList()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->updateTopRunningDockedTaskInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d016b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/AppInfoViewHolder;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/views/AppInfoViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d016d

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/HeaderViewHolder;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/views/HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->adjustPosition(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/AppInfo;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskAffinity:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskUser:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/systemui/recents/model/AppInfo;->isDisabled(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    instance-of v4, p1, Lcom/android/systemui/recents/views/AppInfoViewHolder;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mNeedDarkFont:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isFirstRow(I)Z

    move-result v5

    invoke-virtual {p1, v1, v4, v2, v5}, Lcom/android/systemui/recents/views/AppInfoViewHolder;->onBind(Lcom/android/systemui/recents/model/AppInfo;ZZZ)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    instance-of v4, p1, Lcom/android/systemui/recents/views/HeaderViewHolder;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/android/systemui/recents/views/HeaderViewHolder;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mNeedDarkFont:Z

    iget v5, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mRecommendationAppCount:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/systemui/recents/views/HeaderViewHolder;->onBind(IZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    instance-of v1, p1, Lcom/android/systemui/recents/views/AppInfoViewHolder;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/systemui/recents/views/AppInfoViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/AppInfoViewHolder;->onUnbind()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    instance-of v1, p1, Lcom/android/systemui/recents/views/HeaderViewHolder;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/systemui/recents/views/HeaderViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/HeaderViewHolder;->onUnbind()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public reload()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->updateList()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDarkFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mNeedDarkFont:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
