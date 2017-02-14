.class public Lcom/android/server/tv/TvRemoteService;
.super Lcom/android/server/SystemService;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteService$UserHandler;,
        Lcom/android/server/tv/TvRemoteService$UserProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_KEYS:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRemoteService"


# instance fields
.field private mBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/UinputBridge;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

.field private final mLock:Ljava/lang/Object;

.field private mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->clearInputBridgeInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->closeInputBridgeInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/tv/TvRemoteService;->openInputBridgeInternalLocked(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendKeyDownInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendKeyUpInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvRemoteService;->sendPointerDownInternalLocked(Landroid/os/IBinder;III)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->sendPointerSyncInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendPointerUpInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvRemoteService;->sendTimeStampInternalLocked(Landroid/os/IBinder;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/tv/TvRemoteService$UserHandler;

    new-instance v1, Lcom/android/server/tv/TvRemoteService$UserProvider;

    invoke-direct {v1, p0, p0}, Lcom/android/server/tv/TvRemoteService$UserProvider;-><init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/tv/TvRemoteService$UserHandler;-><init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService$UserProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method

.method private clearInputBridgeInternalLocked(Landroid/os/IBinder;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private closeInputBridgeInternalLocked(Landroid/os/IBinder;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private informInputBridgeConnected(Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/server/tv/TvRemoteService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private openInputBridgeInternalLocked(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvRemoteService;->informInputBridgeConnected(Landroid/os/IBinder;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/tv/UinputBridge;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;Ljava/lang/String;III)V

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvRemoteService;->informInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v1, "TvRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot create device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendKeyDownInternalLocked(Landroid/os/IBinder;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyDown(Landroid/os/IBinder;I)V

    :cond_0
    return-void
.end method

.method private sendKeyUpInternalLocked(Landroid/os/IBinder;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyUp(Landroid/os/IBinder;I)V

    :cond_0
    return-void
.end method

.method private sendPointerDownInternalLocked(Landroid/os/IBinder;III)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->sendPointerDown(Landroid/os/IBinder;III)V

    :cond_0
    return-void
.end method

.method private sendPointerSyncInternalLocked(Landroid/os/IBinder;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->sendPointerSync(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private sendPointerUpInternalLocked(Landroid/os/IBinder;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendPointerUp(Landroid/os/IBinder;I)V

    :cond_0
    return-void
.end method

.method private sendTimeStampInternalLocked(Landroid/os/IBinder;J)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->sendTimestamp(Landroid/os/IBinder;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public monitor()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/TvRemoteService$UserHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
