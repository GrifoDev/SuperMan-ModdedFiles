.class public final Landroid/net/DnsPinger;
.super Landroid/os/Handler;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsPinger$ActivePing;,
        Landroid/net/DnsPinger$DnsArg;,
        Landroid/net/DnsPinger$DnsResult;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x85003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x85002

.field private static final ACTION_PING_DNS:I = 0x85001

.field private static final ACTION_PING_DNS_SPECIFIC:I = 0x85004

.field private static final ARP_REQUEST_INTERVAL:I = 0x64

.field private static final BASE:I = 0x85000

.field public static final CACHED_RESULT:I = 0x1

.field private static final CHECK_ARP_TABLE_UPDATE_TIMEOUT:I = 0x3e8

.field private static final DBG:Z

.field public static final DNS_PING_RESULT:I = 0x85000

.field public static final DNS_PING_RESULT_SPECIFIC:I = 0x85005

.field private static final DNS_PORT:I = 0x35

.field private static final DNS_RESPONSE_BUFFER_SIZE:I = 0x200

.field private static MostRecentDnsResultMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DnsPinger$DnsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_INTERNET:I = -0x3

.field public static final PRIVATE_IP_ADDRESS:I = 0x2

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final REQUESTED_URL_ALREADY_IP_ADDRESS:I = 0x3

.field private static final SMARTCM_DBG:Z = false

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static needInitialArpTest:Z

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private final ARP_LENGTH:I

.field DnsResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/DnsPinger$DnsResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ETHERNET_TYPE:I

.field private final IPV4_LENGTH:I

.field private L2_BROADCAST:[B

.field private final MAC_ADDR_LENGTH:I

.field private final MAX_LENGTH:I

.field private TAG:Ljava/lang/String;

.field final lock:Ljava/lang/Object;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/DnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionType:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsQuery:[B

.field private mEventCounter:I

.field private mGateway:Ljava/net/InetAddress;

.field mLp:Landroid/net/LinkProperties;

.field private mPrefixLength:I

.field private mSocket:Llibcore/net/RawSocket;

.field private final mTarget:Landroid/os/Handler;

.field mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    .line 574
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/DnsPinger;->needInitialArpTest:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TAG"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "target"    # Landroid/os/Handler;
    .param p5, "connectionType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    iput-object v1, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 135
    iput-object v1, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    .line 136
    iput v2, p0, Landroid/net/DnsPinger;->mPrefixLength:I

    .line 137
    iput-object v1, p0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    .line 572
    iput-object v1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 573
    iput-object v1, p0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 931
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/net/DnsPinger;->MAX_LENGTH:I

    .line 932
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/DnsPinger;->ETHERNET_TYPE:I

    .line 933
    const/16 v0, 0x1c

    iput v0, p0, Landroid/net/DnsPinger;->ARP_LENGTH:I

    .line 934
    const/4 v0, 0x6

    iput v0, p0, Landroid/net/DnsPinger;->MAC_ADDR_LENGTH:I

    .line 935
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/DnsPinger;->IPV4_LENGTH:I

    .line 175
    iput-object p2, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    .line 176
    iput-object p1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    .line 177
    iput-object p4, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    .line 178
    iput p5, p0, Landroid/net/DnsPinger;->mConnectionType:I

    .line 179
    invoke-static {p5}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid connectionType in constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 184
    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/net/DnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iput v2, p0, Landroid/net/DnsPinger;->mEventCounter:I

    .line 187
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 173
    return-void
.end method

.method private checkArpTableForGateway(J)V
    .locals 19
    .param p1, "timeout"    # J

    .prologue
    .line 877
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    if-nez v14, :cond_0

    .line 878
    const-string/jumbo v14, "checkArpTableForGateway - Cannot find Gateway."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 879
    return-void

    .line 881
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v14, :cond_1

    const-string/jumbo v14, "wlan0"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 885
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 886
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v14, :cond_2

    .line 887
    const-string/jumbo v14, "checkArpTableForGateway - WifiInfo is null."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 888
    return-void

    .line 882
    :cond_1
    const-string/jumbo v14, "checkArpTableForGateway - wlan0 LinkProperties not ready."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 883
    return-void

    .line 890
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    .line 891
    .local v10, "targetIp":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v14

    invoke-static {v14}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    .line 892
    .local v6, "myAddr":Ljava/net/InetAddress;
    if-nez v6, :cond_3

    .line 893
    const-string/jumbo v14, "checkArpTableForGateway - myAddr is null."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 894
    return-void

    .line 896
    :cond_3
    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    .line 897
    .local v5, "ipAddr":Ljava/lang/String;
    const-string/jumbo v14, "/"

    const-string/jumbo v15, ""

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 900
    .local v2, "beginTime":J
    const/4 v11, 0x0

    .line 902
    .local v11, "trial":I
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v2

    cmp-long v14, v14, p1

    if-gez v14, :cond_7

    .line 904
    const/4 v7, 0x0

    .line 905
    .local v7, "reachable":Z
    add-int/lit8 v11, v11, 0x1

    .line 906
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 907
    .local v8, "startTime":J
    rem-int/lit8 v14, v11, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 908
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14, v6, v15}, Landroid/net/DnsPinger;->sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B

    .line 912
    .end local v7    # "reachable":Z
    :goto_1
    if-eqz v7, :cond_6

    .line 913
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "GW is reachable. - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v2

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " msec."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 914
    return-void

    .line 910
    .restart local v7    # "reachable":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v7

    .local v7, "reachable":Z
    goto :goto_1

    .line 916
    .end local v7    # "reachable":Z
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v12, v14, v8

    .line 917
    .local v12, "timeDelta":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_4

    const-wide/16 v14, 0x64

    cmp-long v14, v12, v14

    if-gez v14, :cond_4

    .line 918
    long-to-int v14, v12

    rsub-int/lit8 v14, v14, 0x64

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    .end local v8    # "startTime":J
    .end local v12    # "timeDelta":J
    :catch_0
    move-exception v4

    .line 922
    .local v4, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "checkArpTableForGateway Exception - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 925
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    sget-boolean v14, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "GW is not reachable for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v2

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " msec."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 926
    :cond_8
    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    return-object v0

    .line 590
    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    .line 592
    const-string/jumbo v1, "connectivity"

    .line 591
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 594
    :cond_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 617
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 618
    const-string/jumbo v3, "default_dns_server"

    .line 617
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "dns":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 620
    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 621
    const v3, 0x104004b

    .line 620
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "getDefaultDns::malformed default dns address"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 627
    return-object v4
.end method

.method private isDnsResponsePrivateAddress(Ljava/lang/String;)Z
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 853
    iget-object v8, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 854
    :try_start_0
    iget-object v7, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 855
    .local v5, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    if-eqz v5, :cond_5

    .line 856
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 857
    .local v6, "size":I
    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 858
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v9, 0x0

    aget-byte v7, v7, v9

    and-int/lit16 v1, v7, 0xff

    .line 859
    .local v1, "ipByte1st":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v9, 0x1

    aget-byte v7, v7, v9

    and-int/lit16 v2, v7, 0xff

    .line 860
    .local v2, "ipByte2nd":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v9, 0x2

    aget-byte v7, v7, v9

    and-int/lit16 v3, v7, 0xff

    .line 861
    .local v3, "ipByte3rd":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v9, 0x3

    aget-byte v7, v7, v9

    and-int/lit16 v4, v7, 0xff

    .line 862
    .local v4, "ipByte4th":I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_0

    .line 863
    const/16 v7, 0xc0

    if-ne v1, v7, :cond_2

    const/16 v7, 0xa8

    if-ne v2, v7, :cond_2

    .line 866
    :cond_0
    sget-boolean v7, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " - Dns Response with Private Network IP Address !!! - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 867
    const-string/jumbo v9, "."

    .line 866
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 867
    const-string/jumbo v9, "."

    .line 866
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 867
    const-string/jumbo v9, "."

    .line 866
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v8

    .line 868
    return v11

    .line 864
    :cond_2
    const/16 v7, 0xac

    if-ne v1, v7, :cond_3

    const/16 v7, 0x10

    if-lt v2, v7, :cond_3

    const/16 v7, 0x1f

    if-le v2, v7, :cond_0

    .line 865
    :cond_3
    if-ne v1, v11, :cond_4

    const/16 v7, 0x21

    if-ne v2, v7, :cond_4

    const/16 v7, 0xcb

    if-ne v3, v7, :cond_4

    const/16 v7, 0x27

    if-eq v4, v7, :cond_0

    .line 857
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v1    # "ipByte1st":I
    .end local v2    # "ipByte2nd":I
    .end local v3    # "ipByte3rd":I
    .end local v4    # "ipByte4th":I
    .end local v6    # "size":I
    :cond_5
    monitor-exit v8

    .line 873
    return v10

    .line 853
    .end local v5    # "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void
.end method

.method private sendResponse(III)V
    .locals 3
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I

    .prologue
    .line 515
    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 517
    const-string/jumbo v1, " externalId "

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 518
    const-string/jumbo v1, " and val "

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 520
    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 521
    iget-object v1, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const/4 v0, 0x0

    nop

    nop

    const v2, 0x85005

    invoke-virtual {p0, v2, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v1, 0x85000

    invoke-virtual {p0, v1, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendResponse(IIILjava/lang/String;)V
    .locals 8
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 545
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_0

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Responding to packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 547
    const-string/jumbo v3, " externalId "

    .line 546
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 548
    const-string/jumbo v3, " val "

    .line 546
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 549
    const-string/jumbo v3, " url "

    .line 546
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 551
    :cond_0
    const/4 v1, 0x0

    .line 552
    .local v1, "resultIp":Ljava/net/InetAddress;
    iget-object v3, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 553
    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    :try_start_0
    sget-object v2, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    sget-object v2, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPinger$DnsResult;

    .line 555
    .local v0, "res":Landroid/net/DnsPinger$DnsResult;
    if-eqz v0, :cond_1

    .line 556
    iget-object v1, v0, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 557
    .local v1, "resultIp":Ljava/net/InetAddress;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_1

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending most recent DNS result, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", expired "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Landroid/net/DnsPinger$DnsResult;->ttl:J

    sub-long/2addr v4, v6

    .line 558
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    const-string/jumbo v4, " msec ago."

    .line 558
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "res":Landroid/net/DnsPinger$DnsResult;
    .end local v1    # "resultIp":Ljava/net/InetAddress;
    :cond_1
    monitor-exit v3

    .line 564
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 565
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v3, 0x85005

    invoke-virtual {p0, v3, p1, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 544
    :goto_0
    return-void

    .line 552
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 567
    :cond_2
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v3, 0x85000

    invoke-virtual {p0, v3, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendResponse(IIILjava/lang/String;II)V
    .locals 8
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "delay"    # I

    .prologue
    .line 528
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_0

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Responding to packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    const-string/jumbo v3, " externalId "

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 531
    const-string/jumbo v3, " and val "

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPECIFIC DNS PING: url - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 533
    const-string/jumbo v3, ", responseVal : "

    .line 532
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 536
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :try_start_1
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/DnsPinger$DnsResult;

    iget-object v1, v2, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 538
    .local v1, "resultIp":Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v4, 0x85005

    invoke-virtual {p0, v4, p1, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v6, p6

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    .line 527
    .end local v1    # "resultIp":Ljava/net/InetAddress;
    :goto_0
    return-void

    .line 536
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 540
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private updateDnsDB([BILjava/lang/String;)V
    .locals 31
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 709
    .local v6, "currTime":J
    const/16 v27, 0x0

    .line 711
    aget-byte v27, p1, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    const/4 v4, 0x1

    .local v4, "currPos":I
    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v20, v27, v28

    .line 714
    .local v20, "packetId":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v10, v27, v28

    .line 717
    .local v10, "flag":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v19, v27, v28

    .line 720
    .local v19, "numOfQuestion":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v17, v27, v28

    .line 723
    .local v17, "numOfAnswerRR":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v18, v27, v28

    .line 726
    .local v18, "numOfAthorityRR":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v16, v27, v28

    .line 729
    .local v16, "numOfAdditionalRR":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v26, "url":Ljava/lang/StringBuilder;
    :goto_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    if-eqz v27, :cond_1

    .line 731
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1
    aget-byte v27, p1, v4

    move/from16 v0, v27

    if-gt v11, v0, :cond_0

    .line 732
    const-string/jumbo v27, "%c"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    add-int v29, v4, v11

    aget-byte v29, p1, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 734
    :cond_0
    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    aget-byte v27, p1, v4

    add-int v4, v4, v27

    goto :goto_0

    .line 737
    .end local v11    # "i":I
    :cond_1
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 745
    :cond_2
    add-int/lit8 v4, v4, 0x4

    .line 751
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v15, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .local v5, "dbgShowResult":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    add-int/lit8 v27, v4, 0xc

    const/16 v28, 0x200

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 757
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xc0

    move/from16 v27, v0

    const/16 v28, 0xc0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 758
    add-int/lit8 v4, v4, 0x1

    .line 764
    :cond_3
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v25, v27, v28

    .line 767
    .local v25, "rrType":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v21, v27, v28

    .line 770
    .local v21, "rrClass":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    shl-int/lit8 v28, v28, 0x10

    add-int v27, v27, v28

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    shl-int/lit8 v28, v28, 0x8

    add-int v27, v27, v28

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v24, v27, v28

    .line 773
    .local v24, "rrTtl":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v23, v27, v28

    .line 775
    .local v23, "rrLength":I
    add-int v27, v4, v23

    const/16 v28, 0x200

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_8

    .line 802
    .end local v21    # "rrClass":I
    .end local v23    # "rrLength":I
    .end local v24    # "rrTtl":I
    .end local v25    # "rrType":I
    :cond_4
    sget-boolean v27, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v27, :cond_5

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "DNS Result - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 805
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 806
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 814
    sget-object v28, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/DnsPinger$DnsResult;

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v27, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "dr$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v8, "dr":Ljava/lang/String;
    goto :goto_3

    .line 760
    .end local v8    # "dr":Ljava/lang/String;
    .end local v9    # "dr$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    if-eqz v27, :cond_3

    goto :goto_4

    .line 777
    .restart local v21    # "rrClass":I
    .restart local v23    # "rrLength":I
    .restart local v24    # "rrTtl":I
    .restart local v25    # "rrType":I
    :cond_8
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 778
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .local v12, "ipString":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const/16 v27, 0x2e

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 781
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const/16 v27, 0x2e

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const/16 v27, 0x2e

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 785
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    new-instance v14, Landroid/net/DnsPinger$DnsResult;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v27

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v28, v28, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/net/DnsPinger$DnsResult;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;J)V

    .line 788
    .local v14, "mDnsResult":Landroid/net/DnsPinger$DnsResult;
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    const-string/jumbo v27, "["

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    const-string/jumbo v27, "] "

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .end local v12    # "ipString":Ljava/lang/StringBuilder;
    .end local v14    # "mDnsResult":Landroid/net/DnsPinger$DnsResult;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 793
    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .local v22, "rrData":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    move/from16 v0, v23

    if-ge v13, v0, :cond_9

    .line 795
    const/16 v27, 0x5b

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    const-string/jumbo v27, "%02X"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v29, p1, v4

    invoke-static/range {v29 .. v29}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const/16 v27, 0x5d

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 809
    .end local v13    # "j":I
    .end local v21    # "rrClass":I
    .end local v22    # "rrData":Ljava/lang/StringBuilder;
    .end local v23    # "rrLength":I
    .end local v24    # "rrTtl":I
    .end local v25    # "rrType":I
    :cond_b
    const/4 v11, 0x0

    :goto_6
    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_6

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/DnsPinger$DnsResult;

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 819
    :cond_c
    sget-boolean v27, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v27, :cond_d

    .line 820
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Hashmap DnsResultMap contains "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " entries, url: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " IPs"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    monitor-exit v29

    .line 707
    return-void

    .line 805
    :catchall_0
    move-exception v27

    monitor-exit v29

    throw v27
.end method

.method private updateDnsQuery(Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x2e

    const/4 v11, 0x5

    const/16 v10, 0xc

    const/4 v9, 0x0

    .line 652
    new-array v1, v10, [B

    .local v1, "header":[B
    fill-array-data v1, :array_0

    .line 660
    new-array v7, v11, [B

    .local v7, "trailer":[B
    fill-array-data v7, :array_1

    .line 666
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 667
    .local v3, "length":I
    const/4 v0, 0x0

    .line 668
    .local v0, "blockSize":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    .local v4, "mid":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 672
    .local v5, "middle":[B
    move v2, v3

    .end local v0    # "blockSize":B
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 673
    aget-byte v8, v5, v2

    if-ne v8, v12, :cond_0

    .line 674
    aput-byte v0, v5, v2

    .line 675
    const/4 v0, 0x0

    .line 672
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 677
    :cond_0
    add-int/lit8 v8, v0, 0x1

    int-to-byte v0, v8

    .local v0, "blockSize":B
    goto :goto_1

    .line 681
    .end local v0    # "blockSize":B
    :cond_1
    add-int/lit8 v8, v3, 0x12

    new-array v6, v8, [B

    .line 682
    .local v6, "query":[B
    invoke-static {v1, v9, v6, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 683
    add-int/lit8 v8, v3, 0x1

    invoke-static {v5, v9, v6, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 684
    add-int/lit8 v8, v3, 0xd

    invoke-static {v7, v9, v6, v8, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 697
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, p0, Landroid/net/DnsPinger;->mDnsQuery:[B

    .line 651
    return-void

    .line 652
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 660
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private updateDnsResultMap(Ljava/lang/String;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 826
    iget-object v10, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 827
    :try_start_0
    iget-object v9, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 828
    .local v7, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 829
    .local v0, "currTime":J
    if-eqz v7, :cond_5

    .line 830
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 831
    .local v8, "size":I
    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 832
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x0

    aget-byte v9, v9, v11

    and-int/lit16 v3, v9, 0xff

    .line 833
    .local v3, "ipByte1st":I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    and-int/lit16 v4, v9, 0xff

    .line 834
    .local v4, "ipByte2nd":I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x2

    aget-byte v9, v9, v11

    and-int/lit16 v5, v9, 0xff

    .line 835
    .local v5, "ipByte3rd":I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x3

    aget-byte v9, v9, v11

    and-int/lit16 v6, v9, 0xff

    .line 836
    .local v6, "ipByte4th":I
    const/16 v9, 0xa

    if-eq v3, v9, :cond_0

    const/16 v9, 0xc0

    if-ne v3, v9, :cond_2

    const/16 v9, 0xa8

    if-ne v4, v9, :cond_2

    .line 840
    :cond_0
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 831
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 837
    :cond_2
    const/16 v9, 0xac

    if-ne v3, v9, :cond_3

    const/16 v9, 0x10

    if-lt v4, v9, :cond_3

    const/16 v9, 0x1f

    if-le v4, v9, :cond_0

    .line 838
    :cond_3
    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    const/16 v9, 0x21

    if-ne v4, v9, :cond_4

    const/16 v9, 0xcb

    if-ne v5, v9, :cond_4

    const/16 v9, 0x27

    if-eq v6, v9, :cond_0

    .line 841
    :cond_4
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-wide v12, v9, Landroid/net/DnsPinger$DnsResult;->ttl:J

    cmp-long v9, v0, v12

    if-lez v9, :cond_1

    .line 843
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 826
    .end local v0    # "currTime":J
    .end local v2    # "i":I
    .end local v3    # "ipByte1st":I
    .end local v4    # "ipByte2nd":I
    .end local v5    # "ipByte3rd":I
    .end local v6    # "ipByte4th":I
    .end local v7    # "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    .end local v8    # "size":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .restart local v0    # "currTime":J
    .restart local v7    # "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :cond_5
    monitor-exit v10

    .line 825
    return-void
.end method

.method private updateGatewayIp()V
    .locals 8

    .prologue
    .line 599
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    .line 600
    iget-object v6, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "route$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 601
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 602
    .local v2, "mGW":Ljava/net/InetAddress;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0.0.0.0/0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 603
    iput-object v2, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    .line 607
    .end local v2    # "mGW":Ljava/net/InetAddress;
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_1
    iget-object v6, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "la$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 608
    .local v0, "la":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 609
    .local v3, "mMyAddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    iput v6, p0, Landroid/net/DnsPinger;->mPrefixLength:I

    .line 610
    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    .line 598
    .end local v0    # "la":Landroid/net/LinkAddress;
    .end local v3    # "mMyAddr":Ljava/net/InetAddress;
    :cond_3
    return-void
.end method


# virtual methods
.method public cancelPings()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 511
    const v0, 0x85003

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 509
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 489
    iget-object v1, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 491
    sget-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 488
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDnsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 389
    .local v0, "curLinkProps":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCurLinkProperties:: LP for type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object v2

    .line 394
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 395
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 396
    :cond_1
    const-string/jumbo v2, "getDns::LinkProps has null dns - returning default"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object v2

    .line 400
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/net/DnsPinger$DnsArg;

    .line 196
    .local v17, "dnsArg":Landroid/net/DnsPinger$DnsArg;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/DnsPinger$DnsArg;->seq:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 200
    sget-boolean v2, Landroid/net/DnsPinger;->needInitialArpTest:Z

    if-eqz v2, :cond_1

    .line 201
    const-wide/16 v2, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/net/DnsPinger;->checkArpTableForGateway(J)V

    .line 202
    const/4 v2, 0x0

    sput-boolean v2, Landroid/net/DnsPinger;->needInitialArpTest:Z

    .line 205
    :cond_1
    :try_start_0
    new-instance v24, Landroid/net/DnsPinger$ActivePing;

    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$ActivePing;)V

    .line 206
    .local v24, "newActivePing":Landroid/net/DnsPinger$ActivePing;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    move-object/from16 v16, v0

    .line 207
    .local v16, "dnsAddress":Ljava/net/InetAddress;
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->updateDnsQuery(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    .line 209
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/net/DnsPinger$ActivePing;->timeout:I

    .line 210
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v2, v0, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 211
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v0, v24

    iput-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 213
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 218
    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :goto_1
    :try_start_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x85001

    if-ne v2, v3, :cond_3

    .line 228
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v24

    iput-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    .line 233
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mDnsQuery:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 234
    .local v13, "buf":[B
    move-object/from16 v0, v24

    iget-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v13, v3

    .line 235
    move-object/from16 v0, v24

    iget-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v13, v3

    .line 238
    new-instance v25, Ljava/net/DatagramPacket;

    .line 239
    array-length v2, v13

    const/16 v3, 0x35

    .line 238
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 240
    .local v25, "packet":Ljava/net/DatagramPacket;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_2

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending a ping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget v3, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    const-string/jumbo v3, " to "

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string/jumbo v3, " with packetId "

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    move-object/from16 v0, v24

    iget-short v3, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string/jumbo v3, "."

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 246
    :cond_2
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    .line 249
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const v3, 0x85002

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 250
    const-wide/16 v4, 0xc8

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 251
    .end local v13    # "buf":[B
    .end local v16    # "dnsAddress":Ljava/net/InetAddress;
    .end local v24    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    .end local v25    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v18

    .line 256
    .local v18, "e":Ljava/io/IOException;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x85001

    if-ne v2, v3, :cond_4

    .line 257
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270e

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_0

    .line 219
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v16    # "dnsAddress":Ljava/net/InetAddress;
    .restart local v24    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    :catch_1
    move-exception v19

    .line 220
    .local v19, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDnsPing::Error binding to socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v24

    iput-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 259
    .end local v16    # "dnsAddress":Ljava/net/InetAddress;
    .end local v24    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    .restart local v18    # "e":Ljava/io/IOException;
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270f

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_0

    .line 264
    .end local v17    # "dnsArg":Landroid/net/DnsPinger$DnsArg;
    .end local v18    # "e":Ljava/io/IOException;
    :pswitch_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/DnsPinger;->mEventCounter:I

    if-ne v2, v3, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "curPing$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/DnsPinger$ActivePing;

    .line 274
    .local v14, "curPing":Landroid/net/DnsPinger$ActivePing;
    const/16 v2, 0x200

    :try_start_4
    new-array v0, v2, [B

    move-object/from16 v27, v0

    .line 275
    .local v27, "responseBuf":[B
    new-instance v26, Ljava/net/DatagramPacket;

    const/16 v2, 0x200

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 281
    .local v26, "replyPacket":Ljava/net/DatagramPacket;
    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 284
    const/16 v21, 0x0

    .line 285
    .local v21, "isUsableResponse":Z
    const/4 v2, 0x0

    aget-byte v2, v27, v2

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_8

    .line 286
    const/4 v2, 0x1

    aget-byte v2, v27, v2

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    if-ne v2, v3, :cond_8

    .line 287
    const/16 v21, 0x1

    .line 301
    :cond_6
    :goto_4
    if-eqz v21, :cond_e

    .line 312
    const/4 v2, 0x3

    aget-byte v2, v27, v2

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_b

    const/4 v2, 0x6

    aget-byte v2, v27, v2

    if-nez v2, :cond_7

    const/4 v2, 0x7

    aget-byte v2, v27, v2

    if-eqz v2, :cond_b

    .line 316
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v14, Landroid/net/DnsPinger$ActivePing;->start:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 315
    iput-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 317
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iget-object v4, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->updateDnsDB([BILjava/lang/String;)V

    .line 318
    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 319
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_3

    .line 331
    .end local v21    # "isUsableResponse":Z
    .end local v26    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v27    # "responseBuf":[B
    :catch_2
    move-exception v20

    .local v20, "e":Ljava/net/SocketTimeoutException;
    goto :goto_3

    .line 289
    .end local v20    # "e":Ljava/net/SocketTimeoutException;
    .restart local v21    # "isUsableResponse":Z
    .restart local v26    # "replyPacket":Ljava/net/DatagramPacket;
    .restart local v27    # "responseBuf":[B
    :cond_8
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "response ID doesn\'t match with query ID."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 290
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "activePingForIdCheck$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/DnsPinger$ActivePing;

    .line 291
    .local v11, "activePingForIdCheck":Landroid/net/DnsPinger$ActivePing;
    const/4 v2, 0x0

    aget-byte v2, v27, v2

    iget-short v3, v11, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_a

    .line 292
    const/4 v2, 0x1

    aget-byte v2, v27, v2

    iget-short v3, v11, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    if-ne v2, v3, :cond_a

    .line 293
    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    iget-object v3, v11, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 291
    if-eqz v2, :cond_a

    .line 294
    const-string/jumbo v2, "response ID didn\'t match, but DNS response is usable."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 295
    const/16 v21, 0x1

    .line 296
    goto/16 :goto_4

    .line 321
    .end local v11    # "activePingForIdCheck":Landroid/net/DnsPinger$ActivePing;
    .end local v12    # "activePingForIdCheck$iterator":Ljava/util/Iterator;
    :cond_b
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "Reply code is not 0(No Error) or Answer Record Count is 0"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 322
    :cond_c
    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 333
    .end local v21    # "isUsableResponse":Z
    .end local v26    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v27    # "responseBuf":[B
    :catch_3
    move-exception v19

    .line 334
    .restart local v19    # "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_d

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DnsPinger.pingDns got socket exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 337
    :cond_d
    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 329
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v21    # "isUsableResponse":Z
    .restart local v26    # "replyPacket":Ljava/net/DatagramPacket;
    .restart local v27    # "responseBuf":[B
    :cond_e
    :try_start_5
    const-string/jumbo v2, "response ID didn\'t match, ignoring packet"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 340
    .end local v14    # "curPing":Landroid/net/DnsPinger$ActivePing;
    .end local v21    # "isUsableResponse":Z
    .end local v26    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v27    # "responseBuf":[B
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 341
    .local v22, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :cond_10
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 342
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/DnsPinger$ActivePing;

    .line 343
    .restart local v14    # "curPing":Landroid/net/DnsPinger$ActivePing;
    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    .line 344
    iget-short v2, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_13

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 346
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v3, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 347
    .local v23, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    if-eqz v23, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-lez v2, :cond_11

    .line 349
    :try_start_7
    iget v3, v14, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v4, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    sget-object v7, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v8, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    monitor-exit v28

    .line 360
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :goto_7
    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 361
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 353
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :cond_11
    :try_start_8
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "There are no results about "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_12
    iget v2, v14, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 345
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :catchall_0
    move-exception v2

    monitor-exit v28

    throw v2

    .line 358
    :cond_13
    iget v2, v14, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v4, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto :goto_7

    .line 362
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 363
    iget-wide v4, v14, Landroid/net/DnsPinger$ActivePing;->start:J

    iget v6, v14, Landroid/net/DnsPinger$ActivePing;->timeout:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 362
    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 364
    iget v2, v14, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v4, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v4}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;)V

    .line 365
    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 366
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_5

    .line 369
    .end local v14    # "curPing":Landroid/net/DnsPinger$ActivePing;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const v3, 0x85002

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 371
    const-wide/16 v4, 0xc8

    .line 370
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 375
    .end local v15    # "curPing$iterator":Ljava/util/Iterator;
    .end local v22    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "activePing$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$ActivePing;

    .line 376
    .local v9, "activePing":Landroid/net/DnsPinger$ActivePing;
    iget-object v2, v9, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_8

    .line 377
    .end local v9    # "activePing":Landroid/net/DnsPinger$ActivePing;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 350
    .end local v10    # "activePing$iterator":Ljava/util/Iterator;
    .restart local v14    # "curPing":Landroid/net/DnsPinger$ActivePing;
    .restart local v15    # "curPing$iterator":Ljava/util/Iterator;
    .restart local v22    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :catch_4
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x85001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .locals 4
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I

    .prologue
    .line 411
    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 412
    .local v0, "id":I
    const-string/jumbo v1, "www.google.com"

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    .line 414
    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v2, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string/jumbo v3, "www.google.com"

    invoke-direct {v1, p0, p1, v2, v3}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 413
    const v2, 0x85001

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 414
    int-to-long v2, p3

    .line 413
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 415
    return v0
.end method

.method public pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 14
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 446
    sget-object v2, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 449
    .local v3, "id":I
    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 450
    .local v9, "addr":Ljava/net/InetAddress;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "URL is already an IP address. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 451
    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v4, 0x85005

    .line 452
    const/4 v5, 0x3

    .line 451
    invoke-virtual {p0, v4, v3, v5, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 452
    const-wide/16 v12, 0x32

    .line 451
    invoke-virtual {v2, v4, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    return v3

    .line 454
    .end local v9    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v10

    .line 457
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    iget-object v12, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v12

    .line 458
    :try_start_1
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 459
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DNS Result Hashmap - NO HIT!!! SENDING DNS QUERY!  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 461
    :cond_1
    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v4, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v4, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 460
    const v4, 0x85004

    move/from16 v0, p2

    invoke-virtual {p0, v4, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 461
    move/from16 v0, p3

    int-to-long v4, v0

    .line 460
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v12

    .line 479
    return v3

    .line 463
    :cond_2
    :try_start_2
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    .line 464
    const/4 v11, 0x0

    .line 465
    .local v11, "numOfResults":I
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 466
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 468
    :cond_3
    if-nez v11, :cond_5

    .line 469
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DNS Result Hashmap - HIT!!! BUT NO RESULTS   ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 471
    :cond_4
    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v4, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v4, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 470
    const v4, 0x85004

    move/from16 v0, p2

    invoke-virtual {p0, v4, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 471
    move/from16 v0, p3

    int-to-long v4, v0

    .line 470
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 457
    .end local v11    # "numOfResults":I
    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2

    .line 473
    .restart local v11    # "numOfResults":I
    :cond_5
    :try_start_3
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DNS Result Hashmap - HIT!!! USE PREVIOUS RESULT   ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 474
    :cond_6
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 475
    .local v7, "index":I
    const/16 v4, -0x2b67

    const/4 v5, 0x1

    const/16 v8, 0x32

    move-object v2, p0

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 4
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 431
    .local v0, "id":I
    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v2, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, p0, p1, v2, p4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 430
    const v2, 0x85004

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 431
    int-to-long v2, p3

    .line 430
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 432
    return v0
.end method

.method public sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B
    .locals 22
    .param p1, "timeoutMillis"    # I
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "mMyAddr"    # Ljava/net/InetAddress;
    .param p4, "myMac"    # Ljava/lang/String;

    .prologue
    .line 937
    const/16 v18, 0x0

    .line 938
    .local v18, "success":Z
    const/4 v2, 0x6

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 941
    .local v17, "result":[B
    :try_start_0
    new-instance v2, Llibcore/net/RawSocket;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x806

    invoke-direct {v2, v4, v5}, Llibcore/net/RawSocket;-><init>(Ljava/lang/String;S)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    .line 942
    const/4 v2, 0x6

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/DnsPinger;->L2_BROADCAST:[B

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->L2_BROADCAST:[B

    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 944
    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 945
    .local v8, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 946
    .local v9, "desiredIp":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v0, p1

    int-to-long v6, v0

    add-long v20, v4, v6

    .line 947
    .local v20, "timeout":J
    const/4 v2, 0x6

    new-array v15, v2, [B

    .line 948
    .local v15, "mMyMac":[B
    if-eqz p4, :cond_0

    .line 949
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v14, v2, :cond_0

    .line 951
    mul-int/lit8 v2, v14, 0x3

    mul-int/lit8 v4, v14, 0x3

    add-int/lit8 v4, v4, 0x2

    .line 950
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 951
    const/16 v4, 0x10

    .line 950
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v15, v14

    .line 949
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 957
    .end local v14    # "i":I
    :cond_0
    invoke-virtual {v8}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 958
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 960
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 961
    const/16 v2, 0x800

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 962
    const/4 v2, 0x6

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 963
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 964
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 965
    invoke-virtual {v8, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 966
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 967
    const/4 v2, 0x6

    new-array v2, v2, [B

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 968
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 969
    invoke-virtual {v8}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/DnsPinger;->L2_BROADCAST:[B

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v7, v6}, Llibcore/net/RawSocket;->write([B[BII)I

    .line 973
    const/16 v2, 0x5dc

    new-array v3, v2, [B

    .line 975
    .local v3, "recvBuf":[B
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v4, v20

    if-gez v2, :cond_2

    .line 976
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v10, v20, v4

    .line 977
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    array-length v5, v3

    .line 978
    long-to-int v7, v10

    .line 977
    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v16

    .line 981
    .local v16, "readLen":I
    const/16 v2, 0x1c

    move/from16 v0, v16

    if-lt v0, v2, :cond_1

    .line 982
    const/4 v2, 0x0

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 983
    const/4 v2, 0x2

    aget-byte v2, v3, v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    .line 984
    const/4 v2, 0x4

    aget-byte v2, v3, v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 985
    const/4 v2, 0x5

    aget-byte v2, v3, v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 986
    const/4 v2, 0x6

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x7

    aget-byte v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 988
    const/16 v2, 0xe

    aget-byte v2, v3, v2

    const/4 v4, 0x0

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/16 v2, 0xf

    aget-byte v2, v3, v2

    const/4 v4, 0x1

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    .line 989
    const/16 v2, 0x10

    aget-byte v2, v3, v2

    const/4 v4, 0x2

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/16 v2, 0x11

    aget-byte v2, v3, v2

    const/4 v4, 0x3

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    .line 992
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, v17

    invoke-static {v3, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    const/16 v18, 0x1

    goto :goto_1

    .line 1000
    .end local v10    # "duration":J
    .end local v16    # "readLen":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v2, :cond_3

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v2}, Llibcore/net/RawSocket;->close()V

    .line 1003
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1007
    .end local v3    # "recvBuf":[B
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v9    # "desiredIp":[B
    .end local v15    # "mMyMac":[B
    .end local v20    # "timeout":J
    :goto_2
    if-eqz v18, :cond_6

    return-object v17

    .line 996
    :catch_0
    move-exception v12

    .line 997
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendArp Exception - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1000
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v2, :cond_4

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v2}, Llibcore/net/RawSocket;->close()V

    .line 1003
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1004
    :catch_1
    move-exception v13

    .local v13, "ex":Ljava/io/IOException;
    goto :goto_2

    .line 998
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1000
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_5

    .line 1001
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    .line 1003
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 998
    :goto_3
    throw v2

    .line 1008
    :cond_6
    const/4 v2, 0x0

    return-object v2

    .line 1004
    :catch_2
    move-exception v13

    .restart local v13    # "ex":Ljava/io/IOException;
    goto :goto_3

    .end local v13    # "ex":Ljava/io/IOException;
    .restart local v3    # "recvBuf":[B
    .restart local v8    # "buf":Ljava/nio/ByteBuffer;
    .restart local v9    # "desiredIp":[B
    .restart local v15    # "mMyMac":[B
    .restart local v20    # "timeout":J
    :catch_3
    move-exception v13

    .restart local v13    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method public setCurrentLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentLinkProperties: lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    iput-object p1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 580
    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/net/DnsPinger;->updateGatewayIp()V

    .line 581
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/DnsPinger;->needInitialArpTest:Z

    .line 575
    return-void
.end method
