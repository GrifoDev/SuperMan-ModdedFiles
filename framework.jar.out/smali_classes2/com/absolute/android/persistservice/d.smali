.class Lcom/absolute/android/persistservice/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/d;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-boolean v1, p0, Lcom/absolute/android/persistservice/d;->b:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/absolute/android/persistservice/d;->b:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/absolute/android/persistservice/d;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/absolute/android/persistservice/d;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/absolute/android/persistservice/d;->b:Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v6, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    invoke-direct {p0}, Lcom/absolute/android/persistservice/d;->b()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/absolute/android/persistservice/d;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-static {v6, v4, v7, v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
