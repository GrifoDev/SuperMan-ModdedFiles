.class public Landroid/net/ip/IpManager;
.super Lcom/android/internal/util/StateMachine;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$Callback;,
        Landroid/net/ip/IpManager$LoggingCallbackWrapper;,
        Landroid/net/ip/IpManager$ProvisioningConfiguration;,
        Landroid/net/ip/IpManager$StartedState;,
        Landroid/net/ip/IpManager$StoppedState;,
        Landroid/net/ip/IpManager$StoppingState;,
        Landroid/net/ip/IpManager$WaitForProvisioningCallback;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I = null

.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final CMD_CONFIRM:I = 0x3

.field private static final CMD_RENEW:I = 0xc

.field private static final CMD_SET_MULTICAST_FILTER:I = 0x8

.field private static final CMD_START:I = 0x2

.field private static final CMD_STOP:I = 0x1

.field private static final CMD_UPDATE_HTTP_PROXY:I = 0x7

.field private static final CMD_UPDATE_TCP_BUFFER_SIZES:I = 0x6

.field private static final DBG:Z

.field public static final DUMP_ARG:Ljava/lang/String; = "ipmanager"

.field private static final EVENT_COMPLETED_RELEASE_PACKET:I = 0xb

.field private static final EVENT_DHCPACTION_TIMEOUT:I = 0xa

.field private static final EVENT_NETLINK_LINKPROPERTIES_CHANGED:I = 0x5

.field private static final EVENT_PRE_DHCP_ACTION_COMPLETE:I = 0x4

.field private static final EVENT_PROVISIONING_TIMEOUT:I = 0x9

.field private static final MAX_LOG_RECORDS:I = 0x1f4

.field private static final NO_CALLBACKS:Z = false

.field private static final SEND_CALLBACKS:Z = true

.field private static final VDBG:Z

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApfFilter:Landroid/net/apf/ApfFilter;

.field protected final mCallback:Landroid/net/ip/IpManager$Callback;

.field private final mClatInterfaceName:Ljava/lang/String;

.field private mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mDhcpClient:Landroid/net/dhcp/DhcpClient;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMulticastFiltering:Z

.field private final mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private final mNwService:Landroid/os/INetworkManagementService;

.field private final mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mStartTimeMillis:J

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mStoppedState:Lcom/android/internal/util/State;

.field private final mStoppingState:Lcom/android/internal/util/State;

.field private final mTag:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Landroid/net/ip/IpManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    return v0
.end method

.method static synthetic -get11(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method static synthetic -get12(Landroid/net/ip/IpManager;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get13(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic -get14(Landroid/net/ip/IpManager;)J
    .locals 2

    iget-wide v0, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    return-wide v0
.end method

.method static synthetic -get15(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get18(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/IpManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object v0
.end method

.method static synthetic -get6(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object v0
.end method

.method static synthetic -get8(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get9(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method private static synthetic -getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/LinkProperties$ProvisioningChange;->values()[Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$ProvisioningConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object p1
.end method

.method static synthetic -set5(Landroid/net/ip/IpManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    return p1
.end method

.method static synthetic -set6(Landroid/net/ip/IpManager;J)J
    .locals 1

    iput-wide p1, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    return-wide p1
.end method

.method static synthetic -set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/ip/IpManager;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleLinkPropertiesUpdate(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/net/ip/IpManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->recordMetric(I)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/net/ip/IpManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpManager;->resetLinkProperties()V

    return-void
.end method

.method static synthetic -wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/ip/IpManager;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/net/ip/IpManager;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/net/ip/IpManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/net/ip/IpManager;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/net/ip/IpManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleIPv4Failure()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/net/ip/IpManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/ip/IpManager;->DBG:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/ip/IpManager;->VDBG:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/ip/IpManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    sget-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/net/ip/IpManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/ip/IpManager$StoppedState;

    invoke-direct {v1, p0}, Landroid/net/ip/IpManager$StoppedState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/ip/IpManager$StoppingState;

    invoke-direct {v1, p0}, Landroid/net/ip/IpManager$StoppingState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/ip/IpManager$StartedState;

    invoke-direct {v1, p0}, Landroid/net/ip/IpManager$StartedState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    new-instance v1, Landroid/net/ip/IpManager$LoggingCallbackWrapper;

    invoke-direct {v1, p0, p3}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;-><init>(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$Callback;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    iput-object p4, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    new-instance v1, Landroid/net/ip/IpManager$2;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    new-instance v3, Landroid/net/ip/IpManager$1;

    invoke-direct {v3, p0}, Landroid/net/ip/IpManager$1;-><init>(Landroid/net/ip/IpManager;)V

    invoke-direct {v1, p0, v2, v3}, Landroid/net/ip/IpManager$2;-><init>(Landroid/net/ip/IpManager;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-direct {p0}, Landroid/net/ip/IpManager;->resetLinkProperties()V

    new-instance v1, Lcom/android/internal/util/WakeupMessage;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".EVENT_PROVISIONING_TIMEOUT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    new-instance v1, Lcom/android/internal/util/WakeupMessage;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".EVENT_DHCPACTION_TIMEOUT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/ip/IpManager;->setInitialState(Lcom/android/internal/util/State;)V

    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "ipmanager start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t register NetlinkTracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private assembleLinkProperties()Landroid/net/LinkProperties;
    .locals 9

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iget-object v6, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v6}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v7, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_2

    :cond_3
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v6, v6, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_3

    :cond_5
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v6, v6, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget v6, v6, Landroid/net/DhcpResults;->mtu:I

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget v6, v6, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setMtu(I)V

    :cond_6
    iget-object v6, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    :cond_8
    sget-boolean v6, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newLp{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v3
.end method

.method public static buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 1

    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;-><init>()V

    return-object v0
.end method

.method private clearIPv4Address()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    new-instance v2, Landroid/net/LinkAddress;

    const-string/jumbo v3, "0.0.0.0/0"

    invoke-direct {v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ALERT: Failed to clear IPv4 address on interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 3

    invoke-static {p0}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;)Z

    move-result v2

    invoke-static {p1}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    :goto_0
    return-object v0

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_0
.end method

.method private dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .locals 2

    invoke-static {}, Landroid/net/ip/IpManager;->-getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onLinkPropertiesChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onProvisioningSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onProvisioningFailure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNetworkInterface()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "ALERT: Failed to get interface object: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleIPv4Failure()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    iput-object v2, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    sget-boolean v0, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onNewDhcpResults(null)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, v2}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    return-void
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .locals 5

    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2, p1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    iput-object v2, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    sget-boolean v2, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNewDhcpResults("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v2, p1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    return-void
.end method

.method private handleLinkPropertiesUpdate(Z)Z
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->linkPropertiesUnchanged(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    :cond_1
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-eq v0, v3, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleProvisioningFailure()V
    .locals 3

    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_1
    return-void
.end method

.method private static isProvisioned(Landroid/net/LinkProperties;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkPropertiesUnchanged(Landroid/net/LinkProperties;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private recordMetric(I)V
    .locals 6

    iget-wide v0, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Start time undefined!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    sub-long/2addr v2, v4

    invoke-static {p1, v0, v2, v3}, Landroid/net/metrics/IpManagerEvent;->logEvent(ILjava/lang/String;J)V

    return-void
.end method

.method private resetLinkProperties()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    return-void
.end method

.method private setIPv4Address(Landroid/net/LinkAddress;)Z
    .locals 4

    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    invoke-virtual {v1, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    sget-boolean v2, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "IPv4 configuration succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "IPv4 configuration failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method private setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 2

    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    invoke-virtual {v1, p1}, Landroid/net/apf/ApfFilter;->setLinkProperties(Landroid/net/LinkProperties;)V

    :cond_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    invoke-virtual {v1, p1}, Landroid/net/ip/IpReachabilityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    :cond_1
    iget-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1, p1}, Landroid/net/ip/IpManager;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    :cond_2
    return-object v0
.end method

.method private startIPv4()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v2, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-direct {p0, v2}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/net/DhcpResults;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v3, v3, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v2, v3}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-direct {p0, v2}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    sget-boolean v2, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "onProvisioningFailure()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/net/ip/IpManager;->recordMetric(I)V

    iget-object v2, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v2, v3}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    return v5

    :cond_3
    iget-object v2, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2, p0, v3}, Landroid/net/dhcp/DhcpClient;->makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/dhcp/DhcpClient;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v2}, Landroid/net/dhcp/DhcpClient;->registerForPreDhcpNotification()V

    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mBssid:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v3, v3, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/dhcp/DhcpClient;->registerPreRequestBssid(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    const v3, 0x30001

    invoke-virtual {v2, v3}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    int-to-long v4, v4

    add-long v0, v2, v4

    iget-object v2, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    goto :goto_0
.end method

.method private startIPv6()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_1
    move-exception v1

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method


# virtual methods
.method public completedPreDhcpAction()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    return-void
.end method

.method public confirmConfiguration()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo v2, "APF dump:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfFilter;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "StateMachine dump:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v2, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void

    :cond_0
    const-string/jumbo v2, "No apf support"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, "%s/%d %d %d %s"

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Landroid/net/ip/IpManager;->getWhatToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    sget-boolean v2, Landroid/net/ip/IpManager;->VDBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    goto :goto_0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UNKNOWN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onQuitting()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onQuit()V

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendReleasePacket()V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    return-void
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setMulticastFilter(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->stop()V

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->quit()V

    return-void
.end method

.method public startProvisioning()V
    .locals 1

    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    return-void
.end method

.method public startProvisioning(Landroid/net/StaticIpConfiguration;)V
    .locals 1

    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    return-void
.end method

.method public startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/ip/IpManager;->getNetworkInterface()V

    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startProvisioningRoaming(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/ip/IpManager;->getNetworkInterface()V

    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    return-void
.end method
