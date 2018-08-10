.class public Landroid/net/wifi/aware/WifiAwareManager;
.super Ljava/lang/Object;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;,
        Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_AWARE_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareManager"

.field private static final VDBG:Z = false

.field public static final WIFI_AWARE_DATA_PATH_ROLE_INITIATOR:I = 0x0

.field public static final WIFI_AWARE_DATA_PATH_ROLE_RESPONDER:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mRangingListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/wifi/RttManager$RttListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/wifi/aware/IWifiAwareManager;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/aware/WifiAwareManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/aware/WifiAwareManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mRangingListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/aware/IWifiAwareManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mRangingListeners:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    return-void
.end method


# virtual methods
.method public attach(Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    return-void
.end method

.method public attach(Landroid/net/wifi/aware/AttachCallback;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, v0}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    return-void
.end method

.method public attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 12

    iget-object v11, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :goto_0
    :try_start_1
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iget-object v7, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    move-object v1, p0

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    if-eqz p4, :cond_1

    const/4 v9, 0x1

    :goto_1
    move-object v4, v7

    move-object v5, v3

    move-object v7, v0

    move-object v8, p2

    invoke-interface/range {v4 .. v9}, Landroid/net/wifi/aware/IWifiAwareManager;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 9

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "createNetworkSpecifier: Invalid \'role\' argument when creating a network specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "createNetworkSpecifier: Invalid peer handle (value of null) - not permitted on INITIATOR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-nez p4, :cond_3

    :goto_0
    if-eqz p4, :cond_2

    iget v5, p4, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    :cond_2
    move v2, p2

    move v3, p1

    move v4, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;)V

    return-object v0

    :cond_3
    move v1, v5

    goto :goto_0
.end method

.method public createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 9

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "createNetworkSpecifier: Invalid \'role\' argument when creating a network specifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "createNetworkSpecifier: Invalid peer MAC address - null not permitted on INITIATOR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "createNetworkSpecifier: Invalid peer MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-nez p3, :cond_3

    const/4 v1, 0x3

    :goto_0
    move v2, p2

    move v3, p1

    move v5, v4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;)V

    return-object v0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public disconnect(ILandroid/os/Binder;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->disconnect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1}, Landroid/net/wifi/aware/IWifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;
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

.method public isAvailable()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1}, Landroid/net/wifi/aware/IWifiAwareManager;->isUsageEnabled()Z
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

.method public publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .locals 8

    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V

    invoke-interface {v7, p1, p3, v0}, Landroid/net/wifi/aware/IWifiAwareManager;->publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public sendMessage(IILandroid/net/wifi/aware/PeerHandle;[BII)V
    .locals 8

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sendMessage: invalid peerHandle - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget v3, p3, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager;->sendMessage(III[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public startRanging(II[Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v3, p3}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/net/wifi/aware/IWifiAwareManager;->startRanging(IILandroid/net/wifi/RttManager$ParcelableRttParams;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mRangingListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .locals 8

    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V

    invoke-interface {v7, p1, p3, v0}, Landroid/net/wifi/aware/IWifiAwareManager;->subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public terminateSession(II)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->terminateSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
