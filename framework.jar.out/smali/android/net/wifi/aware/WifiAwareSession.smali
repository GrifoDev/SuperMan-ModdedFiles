.class public Landroid/net/wifi/aware/WifiAwareSession;
.super Ljava/lang/Object;
.source "WifiAwareSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareSession"

.field private static final VDBG:Z


# instance fields
.field private final mBinder:Landroid/os/Binder;

.field private final mClientId:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    iput p3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "destroy: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->disconnect(ILandroid/os/Binder;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method public createNetworkSpecifierOpen(I[B)Landroid/net/NetworkSpecifier;
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierOpen: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    move v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1
.end method

.method public createNetworkSpecifierPassphrase(I[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierPassphrase: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Passphrase must not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1
.end method

.method public createNetworkSpecifierPmk(I[B[B)Landroid/net/NetworkSpecifier;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierPmk: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "PMK must not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public publish(Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method

.method public subscribe(Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method
