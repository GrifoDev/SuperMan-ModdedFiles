.class public Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;
.super Landroid/os/Handler;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private resetMessage(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->removeMessages(I)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const-wide/16 v10, 0xbb8

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const-string/jumbo v1, "NetSpeedPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "NetSpeedPolicy"

    const-string/jumbo v2, "Screen off!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    iput v6, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    const-string/jumbo v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->refreshTraffic(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveAllAppsNetTraf()V

    invoke-direct {p0, v5, v8, v9}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    invoke-direct {p0, v4, v10, v11}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "NetSpeedPolicy"

    const-string/jumbo v2, "wifi not connect or vpn connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->refreshTraffic(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveAllAppsNetTraf()V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1, v4, v10, v11}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->checkFGBGAppChange()I

    move-result v1

    iput v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "NetSpeedPolicy"

    const-string/jumbo v2, " Screen off,wifi not connect or vpn connect "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "NetSpeedPolicy"

    const-string/jumbo v2, "Limit BG app to FG,release limit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    const-string/jumbo v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->refreshTraffic(Ljava/lang/String;)Z

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-wrap1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Z)V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-set0(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;I)I

    :cond_7
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveAllAppsNetTraf()V

    invoke-direct {p0, v5, v8, v9}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    invoke-direct {p0, v4, v10, v11}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFGAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "NetSpeedPolicy"

    const-string/jumbo v2, "fg app list size is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAllAppsLimit()V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1, v4, v10, v11}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    const-string/jumbo v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->refreshTraffic(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->updateFGBGAppsNetSpeed(I)V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get0(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "NetSpeedPolicy"

    const-string/jumbo v2, "mLastFGTotalSpeed is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFgTotalSpeed()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-set0(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;I)I

    :cond_9
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getExtraspeed()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getAvgPhySpeed()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_a

    const-string/jumbo v1, "NetSpeedPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reFillBGAppList(),FG total net speed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFgTotalSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "BG total net speed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBgTotalSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " real total speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->reFillBGAppList()V

    return-void

    :cond_a
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v2, "BGAppListEmpty"

    invoke-virtual {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBGAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "NetSpeedPolicy"

    const-string/jumbo v2, "bg app size is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v2, "BGAppListEmpty"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    :cond_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-wrap0(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-wrap1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    const-string/jumbo v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->refreshTraffic(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->updateFGBGAppsNetSpeed(I)V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-wrap0(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Z

    goto/16 :goto_0

    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAppLimit(I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    invoke-direct {p0, v5, v8, v9}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAllAppsLimit()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->updateSCPMParametersFromDB()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
