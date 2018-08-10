.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
.super Ljava/lang/Object;
.source "CaTimeChangeManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;,
        Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;
    }
.end annotation


# static fields
.field private static final LOG_CONTEXT_NULL:I = 0x1011

.field private static final LOG_INTENT_NULL:I = 0x1012

.field private static final TIME_CHANGED:I = 0x1013

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;


# instance fields
.field private mAutoCheck:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->notifyObservers()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkTimeChange()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyObservers()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;->onTimeChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->checkTimeChange()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "settings not found"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public terminateManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
