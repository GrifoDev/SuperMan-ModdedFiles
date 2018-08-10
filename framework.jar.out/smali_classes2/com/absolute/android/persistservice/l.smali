.class public Lcom/absolute/android/persistservice/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic b:Z


# instance fields
.field protected a:Lcom/absolute/android/persistservice/v;

.field private c:Landroid/content/Context;

.field private d:Lcom/absolute/android/persistservice/k;

.field private e:Lcom/absolute/android/persistservice/q;

.field private f:Lcom/absolute/android/persistservice/n;

.field private g:Ljava/util/Hashtable;

.field private h:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/absolute/android/persistservice/l;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/l;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Lcom/absolute/android/persistservice/k;Lcom/absolute/android/persistservice/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/absolute/android/persistservice/l;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    iput-object p3, p0, Lcom/absolute/android/persistservice/l;->d:Lcom/absolute/android/persistservice/k;

    new-instance v0, Lcom/absolute/android/persistservice/q;

    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    invoke-direct {v0, p0, v1, v2}, Lcom/absolute/android/persistservice/q;-><init>(Lcom/absolute/android/persistservice/l;Landroid/content/Context;Lcom/absolute/android/persistservice/v;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    iget-object v0, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v1, v2}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/l;->g:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/l;->h:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/l;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/absolute/android/persistservice/l;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    if-nez p1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/absolute/android/persistservice/l;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    if-nez p1, :cond_0

    :try_start_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v4, v0}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_1
    const/4 v4, 0x1

    if-eq p2, v4, :cond_6

    :goto_2
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v4

    if-gtz v4, :cond_7

    :goto_3
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->g:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/absolute/android/persistservice/p;

    if-nez v3, :cond_9

    :goto_4
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    new-instance v3, Lcom/absolute/android/persistservice/p;

    invoke-direct {v3, p0, v0, v2}, Lcom/absolute/android/persistservice/p;-><init>(Lcom/absolute/android/persistservice/l;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->g:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    new-instance v1, Lcom/absolute/android/persistservice/WatchdogInfo;

    invoke-direct {v1}, Lcom/absolute/android/persistservice/WatchdogInfo;-><init>()V

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v4, v0, v1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v4, v0}, Lcom/absolute/android/persistservice/q;->b(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    if-eqz v4, :cond_8

    :goto_5
    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    new-instance v4, Lcom/absolute/android/persistservice/n;

    invoke-direct {v4, p0}, Lcom/absolute/android/persistservice/n;-><init>(Lcom/absolute/android/persistservice/l;)V

    iput-object v4, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v4}, Lcom/absolute/android/persistservice/n;->start()V

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v4}, Lcom/absolute/android/persistservice/n;->a()V

    goto :goto_5

    :cond_9
    invoke-static {v3}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistservice/p;)V

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->g:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/l;->g:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/p;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/absolute/android/persistservice/l;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v2, p1}, Lcom/absolute/android/persistservice/q;->c(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_2
    invoke-static {v0}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistservice/p;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/l;->g:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/absolute/android/persistservice/l;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating Ping Thread for application package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with ping interval of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/absolute/android/persistservice/ae;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ae;-><init>(Lcom/absolute/android/persistservice/l;Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ae;->start()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ae;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/absolute/android/persistservice/l;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_1

    :goto_0
    if-nez p2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, p1, v7, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AppWatchdog was unable to start application with start intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string/jumbo v6, ";service="

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting application: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " by broadcasting intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/absolute/android/persistservice/l;->c:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object v2, p2

    :goto_2
    move-object v2, p0

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v6, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v6, p1}, Lcom/absolute/android/persistservice/q;->f(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5

    :cond_3
    const-string/jumbo v6, ";service="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " using intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/absolute/android/persistservice/l;->c:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method protected declared-synchronized a(Ljava/lang/String;Z)V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v7, p1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v4

    sget-boolean v7, Lcom/absolute/android/persistservice/l;->b:Z

    if-eqz v7, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/absolute/android/persistservice/l;->d:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v5

    sget-boolean v7, Lcom/absolute/android/persistservice/l;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    :cond_1
    if-nez v4, :cond_5

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    if-nez v4, :cond_0

    :try_start_1
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v4

    :try_start_2
    iget-object v7, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AppWatchdog got exception in handleAppDied(), unable to re-start application "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_4
    if-nez v5, :cond_1

    :try_start_3
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_5
    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v6

    invoke-virtual {v4}, Lcom/absolute/android/persistservice/WatchdogInfo;->g()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/absolute/android/persistservice/l;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/absolute/android/persistservice/l;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v2, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v7, :cond_7

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_6
    iget-object v7, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to restart "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " because the AppProfile re-start intent is empty."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_8
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    if-nez p2, :cond_9

    :goto_2
    iget-object v7, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v7, p1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v4

    iget-object v7, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Re-starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " using intent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", consecutive restarts = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", total = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v7, p1}, Lcom/absolute/android/persistservice/q;->d(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stopping and removing Ping Thread for application package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ae;->b()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v1, p1}, Lcom/absolute/android/persistservice/q;->e(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AppWatchdog got exception in handleAppRunning(), unable to clear re-start counter for application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->h:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/ae;

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ping thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/ae;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    if-nez v4, :cond_1

    :goto_1
    if-nez v2, :cond_2

    const-string/jumbo v4, "No running services check\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->g:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "No broadcast receiver for monitored intents\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->e:Lcom/absolute/android/persistservice/q;

    invoke-static {v4, p1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v3

    if-nez v3, :cond_4

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    :cond_0
    :try_start_1
    const-string/jumbo v4, "No registered ping\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/absolute/android/persistservice/l;->f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v4, p1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Running services check interval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " secs\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "Broadcast receiver for monitored intents is active\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/absolute/android/persistservice/WatchdogInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method
