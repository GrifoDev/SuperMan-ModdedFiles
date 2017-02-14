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

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/DnsPinger;->needInitialArpTest:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iput-object v1, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    iput v2, p0, Landroid/net/DnsPinger;->mPrefixLength:I

    iput-object v1, p0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    iput-object v1, p0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v0, 0x5dc

    iput v0, p0, Landroid/net/DnsPinger;->MAX_LENGTH:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/DnsPinger;->ETHERNET_TYPE:I

    const/16 v0, 0x1c

    iput v0, p0, Landroid/net/DnsPinger;->ARP_LENGTH:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/net/DnsPinger;->MAC_ADDR_LENGTH:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/net/DnsPinger;->IPV4_LENGTH:I

    iput-object p2, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    iput p5, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-static {p5}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

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

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/net/DnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, p0, Landroid/net/DnsPinger;->mEventCounter:I

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private checkArpTableForGateway(J)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    if-nez v14, :cond_0

    const-string/jumbo v14, "checkArpTableForGateway - Cannot find Gateway."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

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

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v14, :cond_2

    const-string/jumbo v14, "checkArpTableForGateway - WifiInfo is null."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v14, "checkArpTableForGateway - wlan0 LinkProperties not ready."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v14

    invoke-static {v14}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    if-nez v6, :cond_3

    const-string/jumbo v14, "checkArpTableForGateway - myAddr is null."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v14, "/"

    const-string/jumbo v15, ""

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v11, 0x0

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v2

    cmp-long v14, v14, p1

    if-gez v14, :cond_7

    const/4 v7, 0x0

    add-int/lit8 v11, v11, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    rem-int/lit8 v14, v11, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

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

    :goto_1
    if-eqz v7, :cond_6

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

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v7

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v12, v14, v8

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_4

    const-wide/16 v14, 0x64

    cmp-long v14, v12, v14

    if-gez v14, :cond_4

    long-to-int v14, v12

    rsub-int/lit8 v14, v14, 0x64

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

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

    :cond_8
    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "getDefaultDns::malformed default dns address"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    return-object v4
.end method

.method private isDnsResponsePrivateAddress(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v9, 0x0

    aget-byte v7, v7, v9

    and-int/lit16 v1, v7, 0xff

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v9, 0x1

    aget-byte v7, v7, v9

    and-int/lit16 v2, v7, 0xff

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v9, 0x2

    aget-byte v7, v7, v9

    and-int/lit16 v3, v7, 0xff

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v9, 0x3

    aget-byte v7, v7, v9

    and-int/lit16 v4, v7, 0xff

    const/16 v7, 0xa

    if-eq v1, v7, :cond_0

    const/16 v7, 0xc0

    if-ne v1, v7, :cond_2

    const/16 v7, 0xa8

    if-ne v2, v7, :cond_2

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

    const-string/jumbo v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "."

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

    return v11

    :cond_2
    const/16 v7, 0xac

    if-ne v1, v7, :cond_3

    const/16 v7, 0x10

    if-lt v2, v7, :cond_3

    const/16 v7, 0x1f

    if-le v2, v7, :cond_0

    :cond_3
    if-ne v1, v11, :cond_4

    const/16 v7, 0x21

    if-ne v2, v7, :cond_4

    const/16 v7, 0xcb

    if-ne v3, v7, :cond_4

    const/16 v7, 0x27

    if-eq v4, v7, :cond_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    monitor-exit v8

    return v10

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendResponse(III)V
    .locals 3

    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const/4 v0, 0x0

    nop

    nop

    const v2, 0x85005

    invoke-virtual {p0, v2, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

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

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Responding to packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " externalId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " val "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    :try_start_0
    sget-object v2, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPinger$DnsResult;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_1

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Landroid/net/DnsPinger$DnsResult;->ttl:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " msec ago."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v3, 0x85005

    invoke-virtual {p0, v3, p1, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

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

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Responding to packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " externalId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and val "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPECIFIC DNS PING: url - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", responseVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/DnsPinger$DnsResult;

    iget-object v1, v2, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

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

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateDnsDB([BILjava/lang/String;)V
    .locals 31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v27, 0x0

    aget-byte v27, p1, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    const/4 v4, 0x1

    aget-byte v28, p1, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v20, v27, v28

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

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    if-eqz v27, :cond_1

    const/4 v11, 0x1

    :goto_1
    aget-byte v27, p1, v4

    move/from16 v0, v27

    if-gt v11, v0, :cond_0

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

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v27, p1, v4

    add-int v4, v4, v27

    goto :goto_0

    :cond_1
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    :cond_2
    add-int/lit8 v4, v4, 0x4

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    add-int/lit8 v27, v4, 0xc

    const/16 v28, 0x200

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xc0

    move/from16 v27, v0

    const/16 v28, 0xc0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    add-int/lit8 v4, v4, 0x1

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

    add-int v27, v4, v23

    const/16 v28, 0x200

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_8

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

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_c

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

    sget-object v27, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    if-eqz v27, :cond_3

    goto :goto_4

    :cond_8
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v27, 0x2e

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v27, 0x2e

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v27, 0x2e

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v27, "["

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v27, "] "

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v23

    if-ge v13, v0, :cond_9

    const/16 v27, 0x5b

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    const/16 v27, 0x5d

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    :goto_6
    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_6

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

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    sget-boolean v27, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v27, :cond_d

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

    return-void

    :catchall_0
    move-exception v27

    monitor-exit v29

    throw v27
.end method

.method private updateDnsQuery(Ljava/lang/String;)V
    .locals 13

    const/16 v12, 0x2e

    const/4 v11, 0x5

    const/16 v10, 0xc

    const/4 v9, 0x0

    new-array v1, v10, [B

    fill-array-data v1, :array_0

    new-array v7, v11, [B

    fill-array-data v7, :array_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move v2, v3

    :goto_0
    if-ltz v2, :cond_1

    aget-byte v8, v5, v2

    if-ne v8, v12, :cond_0

    aput-byte v0, v5, v2

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v0, 0x1

    int-to-byte v0, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v3, 0x12

    new-array v6, v8, [B

    invoke-static {v1, v9, v6, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v8, v3, 0x1

    invoke-static {v5, v9, v6, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v8, v3, 0xd

    invoke-static {v7, v9, v6, v8, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, p0, Landroid/net/DnsPinger;->mDnsQuery:[B

    return-void

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

    iget-object v10, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_0
    if-ltz v2, :cond_5

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x0

    aget-byte v9, v9, v11

    and-int/lit16 v3, v9, 0xff

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    and-int/lit16 v4, v9, 0xff

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x2

    aget-byte v9, v9, v11

    and-int/lit16 v5, v9, 0xff

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x3

    aget-byte v9, v9, v11

    and-int/lit16 v6, v9, 0xff

    const/16 v9, 0xa

    if-eq v3, v9, :cond_0

    const/16 v9, 0xc0

    if-ne v3, v9, :cond_2

    const/16 v9, 0xa8

    if-ne v4, v9, :cond_2

    :cond_0
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/16 v9, 0xac

    if-ne v3, v9, :cond_3

    const/16 v9, 0x10

    if-lt v4, v9, :cond_3

    const/16 v9, 0x1f

    if-le v4, v9, :cond_0

    :cond_3
    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    const/16 v9, 0x21

    if-ne v4, v9, :cond_4

    const/16 v9, 0xcb

    if-ne v5, v9, :cond_4

    const/16 v9, 0x27

    if-eq v6, v9, :cond_0

    :cond_4
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-wide v12, v9, Landroid/net/DnsPinger$DnsResult;->ttl:J

    cmp-long v9, v0, v12

    if-lez v9, :cond_1

    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_5
    monitor-exit v10

    return-void
.end method

.method private updateGatewayIp()V
    .locals 8

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    iget-object v6, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0.0.0.0/0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-object v2, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    :cond_1
    iget-object v6, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    iput v6, p0, Landroid/net/DnsPinger;->mPrefixLength:I

    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    :cond_3
    return-void
.end method


# virtual methods
.method public cancelPings()V
    .locals 1

    iget-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const v0, 0x85003

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v1, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

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

    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_0

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

    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string/jumbo v2, "getDns::LinkProps has null dns - returning default"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object v2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/net/DnsPinger$DnsArg;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/DnsPinger$DnsArg;->seq:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-boolean v2, Landroid/net/DnsPinger;->needInitialArpTest:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/net/DnsPinger;->checkArpTableForGateway(J)V

    const/4 v2, 0x0

    sput-boolean v2, Landroid/net/DnsPinger;->needInitialArpTest:Z

    :cond_1
    :try_start_0
    new-instance v24, Landroid/net/DnsPinger$ActivePing;

    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$ActivePing;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->updateDnsQuery(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/net/DnsPinger$ActivePing;->timeout:I

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v2, v0, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v0, v24

    iput-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x85001

    if-ne v2, v3, :cond_3

    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v24

    iput-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mDnsQuery:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object/from16 v0, v24

    iget-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v13, v3

    move-object/from16 v0, v24

    iget-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v13, v3

    new-instance v25, Ljava/net/DatagramPacket;

    array-length v2, v13

    const/16 v3, 0x35

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending a ping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget v3, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with packetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget-short v3, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const v3, 0x85002

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v18

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x85001

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270e

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_0

    :catch_1
    move-exception v19

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

    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270f

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/DnsPinger;->mEventCounter:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/DnsPinger$ActivePing;

    const/16 v2, 0x200

    :try_start_4
    new-array v0, v2, [B

    move-object/from16 v27, v0

    new-instance v26, Ljava/net/DatagramPacket;

    const/16 v2, 0x200

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    const/16 v21, 0x0

    const/4 v2, 0x0

    aget-byte v2, v27, v2

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    aget-byte v2, v27, v2

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    if-ne v2, v3, :cond_8

    const/16 v21, 0x1

    :cond_6
    :goto_4
    if-eqz v21, :cond_e

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

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v14, Landroid/net/DnsPinger$ActivePing;->start:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iget-object v4, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->updateDnsDB([BILjava/lang/String;)V

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_3

    :catch_2
    move-exception v20

    goto :goto_3

    :cond_8
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "response ID doesn\'t match with query ID."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/DnsPinger$ActivePing;

    const/4 v2, 0x0

    aget-byte v2, v27, v2

    iget-short v3, v11, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    aget-byte v2, v27, v2

    iget-short v3, v11, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    if-ne v2, v3, :cond_a

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    iget-object v3, v11, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "response ID didn\'t match, but DNS response is usable."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    const/16 v21, 0x1

    goto/16 :goto_4

    :cond_b
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "Reply code is not 0(No Error) or Answer Record Count is 0"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    :cond_c
    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v19

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_d

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

    :cond_d
    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto/16 :goto_3

    :cond_e
    :try_start_5
    const-string/jumbo v2, "response ID didn\'t match, ignoring packet"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_10
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/DnsPinger$ActivePing;

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    iget-short v2, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v3, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    if-eqz v23, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-lez v2, :cond_11

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

    :goto_7
    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->remove()V

    goto :goto_5

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

    :cond_12
    iget v2, v14, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v2

    monitor-exit v28

    throw v2

    :cond_13
    iget v2, v14, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v4, v14, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto :goto_7

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v14, Landroid/net/DnsPinger$ActivePing;->start:J

    iget v6, v14, Landroid/net/DnsPinger$ActivePing;->timeout:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    iget v2, v14, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v14, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v4, v14, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v4}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;)V

    iget-object v2, v14, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const v3, 0x85002

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$ActivePing;

    iget-object v2, v9, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :catch_4
    move-exception v19

    goto/16 :goto_6

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

    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string/jumbo v1, "www.google.com"

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v2, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string/jumbo v3, "www.google.com"

    invoke-direct {v1, p0, p1, v2, v3}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    const v2, 0x85001

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 14

    sget-object v2, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

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

    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v4, 0x85005

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v3, v5, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v12, 0x32

    invoke-virtual {v2, v4, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v10

    iget-object v12, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

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

    :cond_1
    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v4, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v4, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    const v4, 0x85004

    move/from16 v0, p2

    invoke-virtual {p0, v4, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v12

    return v3

    :cond_2
    :try_start_2
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    const/4 v11, 0x0

    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    :cond_3
    if-nez v11, :cond_5

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

    :cond_4
    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v4, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v4, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    const v4, 0x85004

    move/from16 v0, p2

    invoke-virtual {p0, v4, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2

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

    :cond_6
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v7

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

    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v2, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, p0, p1, v2, p4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    const v2, 0x85004

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B
    .locals 22

    const/16 v18, 0x0

    const/4 v2, 0x6

    new-array v0, v2, [B

    move-object/from16 v17, v0

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

    const/4 v2, 0x6

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/DnsPinger;->L2_BROADCAST:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->L2_BROADCAST:[B

    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v0, p1

    int-to-long v6, v0

    add-long v20, v4, v6

    const/4 v2, 0x6

    new-array v15, v2, [B

    if-eqz p4, :cond_0

    const/4 v14, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v14, v2, :cond_0

    mul-int/lit8 v2, v14, 0x3

    mul-int/lit8 v4, v14, 0x3

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v2, 0x800

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    new-array v2, v2, [B

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

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

    const/16 v2, 0x5dc

    new-array v3, v2, [B

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v4, v20

    if-gez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v10, v20, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    array-length v5, v3

    long-to-int v7, v10

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v16

    const/16 v2, 0x1c

    move/from16 v0, v16

    if-lt v0, v2, :cond_1

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x2

    aget-byte v2, v3, v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    aget-byte v2, v3, v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    const/4 v2, 0x5

    aget-byte v2, v3, v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x7

    aget-byte v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

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

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, v17

    invoke-static {v3, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v2}, Llibcore/net/RawSocket;->close()V

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    if-eqz v18, :cond_6

    return-object v17

    :catch_0
    move-exception v12

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

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v2}, Llibcore/net/RawSocket;->close()V

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v13

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    throw v2

    :cond_6
    const/4 v2, 0x0

    return-object v2

    :catch_2
    move-exception v13

    goto :goto_3

    :catch_3
    move-exception v13

    goto :goto_2
.end method

.method public setCurrentLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3

    if-eqz p1, :cond_0

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

    :cond_0
    iput-object p1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/net/DnsPinger;->updateGatewayIp()V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/DnsPinger;->needInitialArpTest:Z

    return-void
.end method
