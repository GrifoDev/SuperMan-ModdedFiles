.class public Lcom/android/systemui/qs/bar/DataUsageBar;
.super Lcom/android/systemui/qs/bar/QSBarItem;
.source "DataUsageBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/DataUsageBar$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DataUsageBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

.field private mHeight:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mViewHeight:I

.field private mVisible:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/bar/DataUsageBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mVisible:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/bar/DataUsageBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DataUsageBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mViewHeight:I

    iput-boolean v3, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mVisible:Z

    new-instance v1, Lcom/android/systemui/qs/bar/DataUsageBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/DataUsageBar$1;-><init>(Lcom/android/systemui/qs/bar/DataUsageBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0033

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/DataUsageView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/DataUsageBar;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mHeight:I

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateVisibility()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateViewHeight(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DataUsageBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateViewHeight mViewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mViewHeight:I

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

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mViewHeight:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mViewHeight:I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/bar/QSBarItem$Callback;->onHeightChanged()V

    :cond_2
    return-void
.end method

.method private updateVisibility()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DataUsageBar"

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

    :cond_0
    if-gtz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateViewHeight(I)V

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mViewHeight:I

    if-lez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mVisible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/DataUsageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mHeight:I

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateViewHeight(I)V

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mVisible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/DataUsageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

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

    iget v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mViewHeight:I

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATAUSAGE:Z

    return v0
.end method

.method public onFragmentCreated()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DataUsageBar"

    const-string/jumbo v1, "onFragmentCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateResources()V

    return-void
.end method

.method public updateResources()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DataUsageBar"

    const-string/jumbo v1, "updateResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mHeight:I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/DataUsageBar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/DataUsageView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/DataUsageBar;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateVisibility()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    :cond_1
    return-void
.end method
