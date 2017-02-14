.class public Landroid/net/wifi/PppoeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/PppoeStateMachine$1;,
        Landroid/net/wifi/PppoeStateMachine$ConnectState;,
        Landroid/net/wifi/PppoeStateMachine$ConnectingState;,
        Landroid/net/wifi/PppoeStateMachine$DefaultState;,
        Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;,
        Landroid/net/wifi/PppoeStateMachine$OfflineState;,
        Landroid/net/wifi/PppoeStateMachine$OnlineState;,
        Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;
    }
.end annotation


# static fields
.field private static final PPPOE_ENABLED:Z

.field private static final PPPOE_INTERFACE:Ljava/lang/String; = "ppp3"

.field private static final PPPOE_NET_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "PppoeStateMachine"

.field private static final WIFI_INTERFACE_PROP:Ljava/lang/String; = "wifi.interface"

.field private static final WLAN_INTERFACE:Ljava/lang/String; = "wlan0"


# instance fields
.field private createNetwok:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

.field private mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

.field private mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

.field private mGateWayProp:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocalProp:Ljava/lang/String;

.field private mNetworkManagementEventObserver:Landroid/net/INetworkManagementEventObserver;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

.field private mOldDns1:Ljava/lang/String;

.field private mOldDns2:Ljava/lang/String;

.field private mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

.field private mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

.field private mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

.field private mPppoeRunningTime:J

.field private mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiConnected:Z


# direct methods
.method static synthetic -get0(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$ConnectingState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mGateWayProp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mLocalProp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OfflineState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OnlineState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic -get6(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

    return-object v0
.end method

.method static synthetic -get7(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mGateWayProp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mLocalProp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEConfig;)Landroid/net/wifi/PPPOEConfig;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/PppoeStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    return-wide p1
.end method

.method static synthetic -set4(Landroid/net/wifi/PppoeStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/PppoeStateMachine;->mWifiConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/PppoeStateMachine;->createNetworkInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/net/wifi/PppoeStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Landroid/net/RouteInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/PppoeStateMachine;->removeNetworkInfo(Ljava/lang/String;Landroid/net/RouteInfo;I)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/net/wifi/PppoeStateMachine;Landroid/os/Message;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/PppoeStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/net/wifi/PppoeStateMachine;->updateNetworkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.config.pppoe_enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/net/wifi/PppoeStateMachine;->PPPOE_ENABLED:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "PppoeStateMachine"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$DefaultState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$OfflineState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$OfflineState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$ConnectState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$OnlineState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    iput-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    iput-boolean v5, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$1;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementEventObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/PppoeStateMachine$2;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$2;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.PPPOE_IP_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    sget-boolean v2, Landroid/net/wifi/PppoeStateMachine;->PPPOE_ENABLED:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "PppoeStateMachine"

    const-string/jumbo v3, "create mNetworkManagementService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iput-boolean v5, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementEventObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    :goto_1
    new-instance v2, Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v2}, Landroid/net/wifi/PPPOEInfo;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PppoeStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error registering observer :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_1
.end method

.method private createNetworkInfo(Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createNetworkInfo, iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "PppoeStateMachine"

    const-string/jumbo v2, "createPhysicalNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error creating network 1001: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static makePppoeStateMachine(Landroid/content/Context;)Landroid/net/wifi/PppoeStateMachine;
    .locals 1

    new-instance v0, Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    return-object v0
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method private removeNetworkInfo(Ljava/lang/String;Landroid/net/RouteInfo;I)V
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v4, "PppoeStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeNetworkInfo, netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PppoeStateMachine"

    const-string/jumbo v5, "removeNetwork"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const-string/jumbo v4, "wlan0"

    invoke-interface {v2, v4}, Landroid/net/IConnectivityManager;->getNetIdForInterface(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    const-string/jumbo v5, ""

    invoke-interface {v4, p3, v0, v5}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    iget-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p3}, Landroid/os/INetworkManagementService;->removeNetwork(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/PppoeStateMachine;->restorePppoeDNSProperity()V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "PppoeStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error remove network 1001: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method private restorePppoeDNSProperity()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "net.pppoe.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restorePppoeDNSProperity, pppoeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "offline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "net.dns1"

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "net.dns2"

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pppoe_result_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pppoe_result_error_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setPppoeDNSProperity([Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "net.pppoe.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPppoeDNS, pppoeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "online"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p1, v4

    if-eqz v1, :cond_0

    aget-object v1, p1, v4

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    aget-object v1, p1, v5

    if-eqz v1, :cond_1

    aget-object v1, p1, v5

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v1, "net.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    const-string/jumbo v1, "net.dns1"

    aget-object v2, p1, v4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "net.dns2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    const-string/jumbo v1, "net.dns2"

    aget-object v2, p1, v5

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    iput-object p1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    return-void
.end method

.method private setPppoeState(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pppoe_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateNetworkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v3, "net.pppoe.mtu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNetworkInfo, iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/net/LinkAddress;

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v3}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    :cond_0
    if-eqz v2, :cond_1

    const-string/jumbo v3, "PppoeStateMachine"

    const-string/jumbo v4, "updateNetworkInterface, set mtu"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V

    :cond_1
    const-string/jumbo v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNetworkInfo, route="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p6, p3}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V

    const-string/jumbo v3, "PppoeStateMachine"

    const-string/jumbo v4, "updateNetworkDnses"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p6, p4, p5}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p6}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p4}, Landroid/net/wifi/PppoeStateMachine;->setPppoeDNSProperity([Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error configuring interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 6

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "PppoeStateMachine"

    const-string/jumbo v1, "PppoeStateMachine: getPPPOEInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    goto :goto_0
.end method
