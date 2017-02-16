.class public Lcom/android/systemui/qs/QSDataUsageView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDataUsageView$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

.field private final mHeight:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mViewHeight:I

.field private mVisible:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDataUsageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDataUsageView;->updateVisibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    iput v3, p0, Lcom/android/systemui/qs/QSDataUsageView;->mViewHeight:I

    iput-boolean v3, p0, Lcom/android/systemui/qs/QSDataUsageView;->mVisible:Z

    new-instance v1, Lcom/android/systemui/qs/QSDataUsageView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDataUsageView$1;-><init>(Lcom/android/systemui/qs/QSDataUsageView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040033

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/DataUsageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDataUsageView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mHeight:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDataUsageView;->updateVisibility()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDataUsageView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateViewHeight(I)V
    .locals 3

    const-string/jumbo v0, "STMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateViewHeight mViewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSDataUsageView;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/qs/QSDataUsageView;->mViewHeight:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mViewHeight:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSDataUsageView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDataUsageView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    const-string/jumbo v1, "STMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVisibility activeSimCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_0

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QSDataUsageView;->updateViewHeight(I)V

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mViewHeight:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mVisible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/DataUsageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mHeight:I

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSDataUsageView;->updateViewHeight(I)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/qs/QSDataUsageView;->mVisible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSDataUsageView;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/DataUsageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getBarHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSDataUsageView;->mViewHeight:I

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPanelVisible()V
    .locals 3

    const-string/jumbo v0, "STMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPanelVisible mVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSDataUsageView;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDataUsageView;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDataUsageView;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    :cond_0
    return-void
.end method

.method public setDataUsageController(Lcom/android/settingslib/net/DataUsageController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDataUsageView;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/DataUsageView;->setDataUsageController(Lcom/android/settingslib/net/DataUsageController;)V

    return-void
.end method
