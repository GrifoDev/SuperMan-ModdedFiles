.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/EnterpriseVpn$1;,
        Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final BIND_VPN_SERVICE:Ljava/lang/String; = "android.permission.BIND_VPN_SERVICE"

.field private static final DBG:Z

.field private static final INVALID_PACKAGE_UID:I = -0x1

.field private static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field private static final NETWORKTYPE:Ljava/lang/String; = "Knox_VPN"

.field private static final NOTIFICATION_SIZE:I = 0x48

.field private static final PER_APP_VPN:Z = false

.field private static final REMOVE:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "EnterpriseVpn"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static final VPN_NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private isMetaDataEnabled:Z

.field private mAddress:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConfig:Lcom/android/internal/net/VpnConfig;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

.field private mLabel:Ljava/lang/String;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mProfileName:Ljava/lang/String;

.field private mRouteInfo:Z

.field private final mUserId:I

.field private mV6Address:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/EnterpriseVpn;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->getUIDForPackage(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLabel:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move/from16 v0, p6

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->getAppUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    const-string/jumbo v2, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOwnerUID value is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    iget v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {v2, v4}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    new-instance v3, Lcom/android/server/connectivity/EnterpriseVpn$2;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/net/NetworkInfo;

    const-string/jumbo v4, "Knox_VPN"

    const-string/jumbo v6, ""

    const/16 v7, 0x11

    const/4 v9, 0x0

    invoke-direct {v2, v7, v9, v4, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    return-void

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v2, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to register mObserver : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private agentConnect(Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v9, Landroid/net/LinkProperties;

    invoke-direct {v9}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    invoke-virtual {v9, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_2

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    const-string/jumbo v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The ipv4 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    const-string/jumbo v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The ipv6 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/net/NetworkMisc;

    invoke-direct {v11}, Landroid/net/NetworkMisc;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->allowBypass:Z

    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->knoxProfile:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_0
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "Knox_VPN"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .locals 2

    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EnterpriseVpn"

    const-string/jumbo v1, "agentDisconnect() : send "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_1
    return-void
.end method

.method private closeInterface()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EnterpriseVpn"

    const-string/jumbo v1, "closeInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private enforceControlPermission()V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v6, "com.android.vpndialogs"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v6, :cond_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Unauthorized Caller"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .locals 4

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private declared-synchronized getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "EnterpriseVpn"

    const-string/jumbo v3, "getDomainsByProfileName()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    const-string/jumbo v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method private getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 3

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_1

    const-string/jumbo v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private getUIDForPackage(ILjava/lang/String;)I
    .locals 9

    const/4 v3, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/16 v6, 0x2080

    invoke-interface {v2, p2, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "application uid for info :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_2

    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "EnterpriseVpn"

    const-string/jumbo v7, "application uid for info : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "application uid for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in getUIDForPackage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendInterfaceStateToKnoxVpn(I)V
    .locals 6

    sget-boolean v1, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInterfaceStateToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.TUN_ADDRESS_INTERNAL"

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.TUNV6_ADDRESS_INTERNAL"

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInterfaceStateToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public agentDisconnect()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "agentDisconnect() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    :cond_1
    return-void
.end method

.method public createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 5

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v4, 0x104062e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v4, 0x104062f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080afc

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 31

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v21

    const/4 v8, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v28, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    :cond_0
    const/16 v27, 0x0

    monitor-exit p0

    return-object v27

    :catch_0
    move-exception v12

    const/16 v27, 0x0

    monitor-exit p0

    return-object v27

    :cond_1
    :try_start_2
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v27, "android.net.VpnService"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v22

    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v27

    if-nez v27, :cond_2

    const-string/jumbo v27, "no_config_vpn"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    :cond_2
    new-instance v27, Ljava/lang/SecurityException;

    const-string/jumbo v28, "Restricted users cannot establish VPNs"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v11

    :try_start_4
    new-instance v27, Ljava/lang/SecurityException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Cannot find "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v27

    :try_start_5
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v27

    monitor-exit p0

    throw v27

    :cond_3
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v17

    if-nez v17, :cond_4

    new-instance v27, Ljava/lang/SecurityException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Cannot find "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_4
    const-string/jumbo v27, "android.permission.BIND_VPN_SERVICE"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    new-instance v27, Ljava/lang/SecurityException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " does not require "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :try_start_7
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mLabel:Ljava/lang/String;

    const/16 v26, -0x1

    const/4 v15, -0x1

    const/4 v14, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCreate(IZ)I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v24

    :try_start_8
    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v28, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    const-string/jumbo v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v12

    :try_start_9
    const-string/jumbo v27, "EnterpriseVpn"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Exception in creating tun interface"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_1
    const/16 v27, 0x0

    monitor-exit p0

    return-object v27

    :cond_6
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v28, "At least one address must be specified"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_7
    new-instance v10, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$Connection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    new-instance v28, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v27

    if-nez v27, :cond_8

    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Cannot bind "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->agentConnect(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Lcom/android/internal/net/VpnConfig;Z)V

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->sendInterfaceStateToKnoxVpn(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    const-string/jumbo v27, "EnterpriseVpn"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Established by "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " on "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit p0

    return-object v24

    :cond_b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    :catch_3
    move-exception v13

    :try_start_e
    const-string/jumbo v27, "EnterpriseVpn"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Exception in closing tun interface"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataStateInIP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaUserIds()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPersonaUserIds > mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPersonaUserIds > persona size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v4, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "EnterpriseVpn"

    const-string/jumbo v5, "getPersonaUserIds > Does not created any persona!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method public hideNotification()V
    .locals 10

    const/4 v9, 0x0

    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "EnterpriseVpn"

    const-string/jumbo v7, "hideNotification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hideNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit16 v6, v0, 0x3e9

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    return-void
.end method

.method public hideNotification(I)V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hideNotification > domain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    add-int/lit16 v3, p1, 0x3e9

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v6, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    return-void
.end method

.method public declared-synchronized prepare()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->sendInterfaceStateToKnoxVpn(I)V

    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->closeInterface()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v0, 0x1

    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v2, "disconnected"

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public refreshNotification(ZI)V
    .locals 8

    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshNotification > domain : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", optionAdd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v5, v6, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v4

    add-int/lit16 v5, p2, 0x3e9

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5, v4, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMetaDataStateInIP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    return-void
.end method

.method public showNotification(Lcom/android/internal/net/VpnConfig;Z)V
    .locals 16

    sget-boolean v13, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "EnterpriseVpn"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "showNotification > profileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " , optionAdd : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    if-nez v10, :cond_2

    :cond_1
    const-string/jumbo v13, "EnterpriseVpn"

    const-string/jumbo v14, "Error : can not init"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    if-eqz v10, :cond_6

    if-eqz p1, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    sget-boolean v13, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v13, :cond_3

    const-string/jumbo v13, "EnterpriseVpn"

    const-string/jumbo v14, "showNotification > KNOX 2.0 enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-eqz v13, :cond_7

    sget-boolean v13, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v13, :cond_4

    const-string/jumbo v13, "EnterpriseVpn"

    const-string/jumbo v14, "showNotification > vpn type is system"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v0, v1, v14}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/lit16 v13, v13, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v13, v11, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-boolean v13, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v13, :cond_5

    const-string/jumbo v13, "EnterpriseVpn"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "showNotification > domain : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    return-void

    :cond_7
    sget-boolean v13, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v13, :cond_8

    const-string/jumbo v13, "EnterpriseVpn"

    const-string/jumbo v14, "showNotification > vpn type is per-app"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_a

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v0, v1, v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v11

    add-int/lit16 v13, v2, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v13, v11, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-boolean v13, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v13, :cond_9

    const-string/jumbo v13, "EnterpriseVpn"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "showNotification > keyicon notified to user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v13, "EnterpriseVpn"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v5}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v11

    add-int/lit16 v13, v5, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v13, v11, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-boolean v13, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v13, :cond_b

    const-string/jumbo v13, "EnterpriseVpn"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "showNotification > keyicon notified to user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public declared-synchronized updateNotification()V
    .locals 13

    monitor-enter p0

    :try_start_0
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > user : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v11, 0x104062e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v11, 0x104062f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > KNOX 2.0 enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-eqz v10, :cond_5

    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is system"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v10, v11}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    iget v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/lit16 v10, v10, 0x3e9

    new-instance v11, Landroid/os/UserHandle;

    iget v12, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v10, v7, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > domain : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_6

    const-string/jumbo v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is per-app"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    add-int/lit16 v10, v0, 0x3e9

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v10, v7, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method
