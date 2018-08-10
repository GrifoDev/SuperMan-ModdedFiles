.class public Landroid/net/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetManager$1;,
        Landroid/net/EthernetManager$2;,
        Landroid/net/EthernetManager$Listener;
    }
.end annotation


# static fields
.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final ETH_ENABLE_TRAFFIC_STATS_POLL:I = 0x0

.field public static final ETH_STATE_CHANGED_ACTION:Ljava/lang/String; = "samsung.net.ethernet.ETH_STATE_CHANGED"

.field public static final ETH_TRAFFIC_STATS_POLL:I = 0x1

.field public static final EXTRA_ETH_STATE:Ljava/lang/String; = "eth_state"

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/EthernetManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IEthernetManager;

.field private final mServiceListener:Landroid/net/IEthernetServiceListener$Stub;


# direct methods
.method static synthetic -get0(Landroid/net/EthernetManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/EthernetManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/EthernetManager$1;

    invoke-direct {v0, p0}, Landroid/net/EthernetManager$1;-><init>(Landroid/net/EthernetManager;)V

    iput-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/net/EthernetManager$2;

    invoke-direct {v0, p0}, Landroid/net/EthernetManager$2;-><init>(Landroid/net/EthernetManager;)V

    iput-object v0, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    iput-object p1, p0, Landroid/net/EthernetManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    return-void
.end method


# virtual methods
.method public UpdateEthDevInfo(Landroid/net/EthernetDevInfo;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/net/IEthernetManager;->UpdateEthDevInfo(Landroid/net/EthernetDevInfo;ILandroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EthernetManager"

    const-string/jumbo v2, "Can not update ethernet device info"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public UpdateEthDevInfo(Landroid/net/EthernetDevInfo;ILandroid/net/ProxyInfo;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IEthernetManager;->UpdateEthDevInfo(Landroid/net/EthernetDevInfo;ILandroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EthernetManager"

    const-string/jumbo v2, "Can not update ethernet device info"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addListener(Landroid/net/EthernetManager$Listener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    iget-object v2, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    invoke-interface {v1, v2}, Landroid/net/IEthernetManager;->addListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConfiguration()Landroid/net/IpConfiguration;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getConfiguration()Landroid/net/IpConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEthernetServiceMessenger()Landroid/os/Messenger;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v2}, Landroid/net/IEthernetManager;->getEthernetServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    return-object v3

    :catch_1
    move-exception v0

    return-object v3
.end method

.method public getSavedEthConfig()Landroid/net/EthernetDevInfo;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getSavedEthConfig()Landroid/net/EthernetDevInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EthernetManager"

    const-string/jumbo v2, "Can not get eth config"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getSavedProxyInfo()Landroid/net/ProxyInfo;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getSavedProxyInfo()Landroid/net/ProxyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EthernetManager"

    const-string/jumbo v2, "Can not get proxyinfo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getSavedProxySettings()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getSavedProxySettings()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EthernetManager"

    const-string/jumbo v2, "Can not get proxysettings"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getUserDisabled()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getUserDisabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EthernetManager"

    const-string/jumbo v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isAvailable()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->isAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEthConnected()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->isEthConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public removeListener(Landroid/net/EthernetManager$Listener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    iget-object v2, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    invoke-interface {v1, v2}, Landroid/net/IEthernetManager;->removeListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->setConfiguration(Landroid/net/IpConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserDisabled(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->setUserDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EthernetManager"

    const-string/jumbo v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
