.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Builder;,
        Landroid/net/VpnService$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOXVPN_CONTAINER_ENABLED:I = 0x2

.field private static KNOXVPN_FEATURE:I = 0x0

.field private static final KNOXVPN_MDM_ENABLED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field private static final SYSTEM_VPN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VpnService"


# direct methods
.method static synthetic -wrap0()Landroid/net/IConnectivityManager;
    .locals 1

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/VpnService;->DBG:Z

    const/4 v0, -0x1

    sput v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static check(Ljava/net/InetAddress;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    const/16 v0, 0x20

    if-le p1, v0, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_3

    const/16 v0, 0x80

    if-le p1, v0, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method private static getKnoxVpnFeature()I
    .locals 1

    const/4 v0, 0x2

    sput v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    sget v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    return v0
.end method

.method private static getService()Landroid/net/IConnectivityManager;
    .locals 1

    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static prepare(Landroid/content/Context;)Landroid/content/Intent;
    .locals 12

    const/4 v7, 0x0

    invoke-static {}, Landroid/net/VpnService;->getKnoxVpnFeature()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_4

    instance-of v8, p0, Lcom/sec/vpn/knox/GenericVpnContext;

    if-eqz v8, :cond_2

    const-string/jumbo v8, "VpnService"

    const-string/jumbo v9, "prepare function with generic vpn context is called for knox vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    nop

    nop

    invoke-virtual {v3}, Lcom/sec/vpn/knox/GenericVpnContext;->getVPNProfile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/vpn/knox/GenericVpnContext;->getVPNState()Z

    move-result v1

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/vpn/knox/GenericVpnContext;->isMetaEnabled()Z

    move-result v2

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/net/IConnectivityManager;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-interface {v8, v4, v5, v1, v2}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    return-object v7

    :catch_0
    move-exception v0

    const-string/jumbo v8, "VpnService"

    const-string/jumbo v9, "Exception occured while trying to prepare knox vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v7

    :cond_1
    return-object v7

    :cond_2
    const-string/jumbo v8, "VpnService"

    const-string/jumbo v9, "prepare function with android vpn context is called for non knox vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v11, v10}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_3

    return-object v7

    :catch_1
    move-exception v0

    const-string/jumbo v7, "VpnService"

    const-string/jumbo v8, "Exception occured while trying to prepare non knox vpn profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v7

    return-object v7

    :cond_4
    :try_start_2
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v11, v10}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-eqz v8, :cond_5

    return-object v7

    :catch_2
    move-exception v0

    :cond_5
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v7

    return-object v7
.end method

.method public static prepareAndAuthorize(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .locals 3

    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->addVpnAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/net/VpnService$Callback;

    invoke-direct {v0, p0, v2}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$Callback;)V

    return-object v0

    :cond_0
    return-object v2
.end method

.method public onRevoke()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public protect(I)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v1

    return v1

    :cond_0
    sget-boolean v1, Landroid/net/VpnService;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "VpnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protect is not going to be called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .locals 3

    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->removeVpnAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
