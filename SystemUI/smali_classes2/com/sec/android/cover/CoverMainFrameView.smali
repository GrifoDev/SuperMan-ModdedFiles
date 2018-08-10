.class public abstract Lcom/sec/android/cover/CoverMainFrameView;
.super Landroid/widget/FrameLayout;
.source "CoverMainFrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/CoverMainFrameView$1;,
        Lcom/sec/android/cover/CoverMainFrameView$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mBatteryCharingText:Landroid/widget/TextView;

.field protected static mDelayedShowingSequence:I

.field public static mLastBatteryPluggedState:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryRetryCount:I

.field private mBatteryStatus:Ljava/lang/Object;

.field protected mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field protected mStatusBarState:I

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/CoverMainFrameView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/CoverMainFrameView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/CoverMainFrameView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/CoverMainFrameView;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/CoverMainFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/CoverMainFrameView;->updateBatteryState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    sput v1, Lcom/sec/android/cover/CoverMainFrameView;->mLastBatteryPluggedState:I

    sput v1, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mStatusBarState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/sec/android/cover/CoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverMainFrameView$1;-><init>(Lcom/sec/android/cover/CoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/CoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverMainFrameView$2;-><init>(Lcom/sec/android/cover/CoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method private updateBatteryState()V
    .locals 15

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    if-nez v10, :cond_0

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "mBatteryCharingText is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    if-nez v10, :cond_1

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "updateBatteryState : Intent is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    instance-of v10, v10, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v10, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    :cond_2
    if-nez v1, :cond_3

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "batteryStatus is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    iget v7, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v8, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    sput v8, Lcom/sec/android/cover/CoverMainFrameView;->mLastBatteryPluggedState:I

    iget v9, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBatteryState : Plugged = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " Level="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_a

    iget v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mStatusBarState:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x64

    if-lt v7, v10, :cond_5

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssFastCharged()Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Detected fast wireless charging"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_wireless_fast_charging_percent:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v10}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v4

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Chargind time remaining : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v10, v4, v5}, Lcom/sec/android/cover/CoverUtils;->getBatteryChargingTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_charging_remaining_time:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Error calling IBatteryStats: "

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Detected wireless charging"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_wireless_charging_percent:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isFastCharging()Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Detected fast wire charging"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_fast_charging_percent:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_8
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Detected wire charging"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_charging_percent:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    :try_start_1
    iget v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    const/4 v11, 0x4

    if-gt v10, v11, :cond_4

    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Retry getting battery charging info - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0xbb8

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
