.class public Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecentsAppListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;,
        Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$FrequencyAppViewHolder;,
        Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/recents/views/BaseAppListViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDisplayOrientation:I

.field mFreqAppCount:I

.field mInflater:Landroid/view/LayoutInflater;

.field mItemTextDarkColor:I

.field mItemTextShadowColor:I

.field mItemTextShadowSize:F

.field mItemTextShadowYDistance:F

.field mItemTextWhiteColor:I

.field private mKioskId:I

.field mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

.field mNeedDarkFont:Z

.field mStrMultiWindowApps:Ljava/lang/String;

.field mStrRecommendations:Ljava/lang/String;

.field mTopRunningTaskAffinity:Ljava/lang/String;

.field mTopRunningTaskPackageName:Ljava/lang/String;

.field mView:Lcom/android/systemui/recents/views/RecentsAppListView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mKioskId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mKioskId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->adjustPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->startApp(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mDisplayOrientation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mKioskId:I

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

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f05e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mStrRecommendations:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f05e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mStrMultiWindowApps:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextShadowSize:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextShadowYDistance:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextShadowColor:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextDarkColor:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextWhiteColor:I

    return-void
.end method

.method private adjustPosition(I)I
    .locals 2

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x3

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mFreqAppCount:I

    add-int p1, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private setTextColor(Landroid/widget/TextView;Z)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mNeedDarkFont:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextDarkColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_1
    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextWhiteColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextShadowSize:F

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextShadowYDistance:F

    iget v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextShadowColor:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method private startApp(I)V
    .locals 4

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private updateList()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getAppInfos(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getFrequentlyUsedAppCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mFreqAppCount:I

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

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mFreqAppCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

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
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isFrequencyAppPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFrequencyAppPosition(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderPosition(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/views/BaseAppListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/recents/views/BaseAppListViewHolder;I)V
    .locals 0

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;)V
    .locals 2

    const-string/jumbo v0, "RecentsAppListViewAdapter"

    const-string/jumbo v1, "onBusEvent(NotifyDataLoadEvent)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/views/BaseAppListViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/views/BaseAppListViewHolder;
    .locals 5

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040116

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$AppListViewHolder;-><init>(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;Landroid/view/View;)V

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040118

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$HeaderViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$HeaderViewHolder;-><init>(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040117

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$FrequencyAppViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$FrequencyAppViewHolder;-><init>(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->onViewAttachedToWindow(Lcom/android/systemui/recents/views/BaseAppListViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/recents/views/BaseAppListViewHolder;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->getAdapterPosition()I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isHeaderPosition(I)Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez v8, :cond_3

    iget v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mFreqAppCount:I

    if-nez v11, :cond_2

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mStrRecommendations:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->setTextColor(Landroid/widget/TextView;Z)V

    iget-boolean v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mNeedDarkFont:Z

    if-eqz v11, :cond_4

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->lineView:Landroid/view/View;

    iget v12, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextDarkColor:I

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    return-void

    :cond_2
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v11, 0x2

    if-ne v8, v11, :cond_1

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mStrMultiWindowApps:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->lineView:Landroid/view/View;

    iget v12, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mItemTextWhiteColor:I

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isFrequencyAppPosition(I)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mFreqAppCount:I

    if-nez v11, :cond_6

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    iget v12, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mFreqAppCount:I

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->nestedAppListView:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-virtual {v11, v9}, Lcom/android/systemui/recents/views/NestedAppListView;->onViewAttachToWindow(Ljava/util/List;)V

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->nestedAppListView:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v12, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskPackageName:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskAffinity:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/recents/views/NestedAppListView;->updateTopRunningDockedTaskInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v8}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->adjustPosition(I)I

    move-result v8

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    iget-object v11, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mDisplayOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    sget v11, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentWidth:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_4
    sget v11, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentHeight:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v12, v2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    :cond_8
    iget-object v11, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    if-eqz v11, :cond_9

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->itemView:Landroid/view/View;

    iget-object v12, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v11, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-boolean v11, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->supportMultiInstance:Z

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskPackageName:Ljava/lang/String;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskAffinity:Ljava/lang/String;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskPackageName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mTopRunningTaskAffinity:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_5
    if-nez v4, :cond_b

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->itemView:Landroid/view/View;

    const v12, 0x3f333333    # 0.7f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_a

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->cancel(Z)Z

    :cond_a
    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v11, p1, v0, v3}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->loadIcon(Lcom/android/systemui/recents/views/BaseAppListViewHolder;Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;Z)Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->setAsyncTask(Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;)V

    :cond_b
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    invoke-direct {p0, v11, v3}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->setTextColor(Landroid/widget/TextView;Z)V

    if-eqz v3, :cond_f

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0x4c

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_c
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v12, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v12

    const/16 v13, 0x4c

    invoke-virtual {v12, v13}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    :goto_6
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->invalidate()V

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_d
    sget v11, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentWidthLand:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_4

    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_10

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_10
    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v12, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v11, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->onViewDetachedFromWindow(Lcom/android/systemui/recents/views/BaseAppListViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/recents/views/BaseAppListViewHolder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isHeaderPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isFrequencyAppPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->nestedAppListView:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/NestedAppListView;->onViewDetachedToWindow()V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->adjustPosition(I)I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public reload()V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "RecentsAppListViewAdapter"

    const-string/jumbo v2, "reload()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preload()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->updateTopRunningDockedTaskInfo()V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->updateList()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->needDarkFont()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mNeedDarkFont:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
