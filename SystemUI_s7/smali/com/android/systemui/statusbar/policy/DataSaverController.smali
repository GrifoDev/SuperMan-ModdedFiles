.class public Lcom/android/systemui/statusbar/policy/DataSaverController;
.super Ljava/lang/Object;
.source "DataSaverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DataSaverController$1;,
        Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/DataSaverController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/DataSaverController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/DataSaverController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController$1;-><init>(Lcom/android/systemui/statusbar/policy/DataSaverController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDataSaverEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public remListener(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDataSaverEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
