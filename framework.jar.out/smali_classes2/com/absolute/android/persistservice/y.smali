.class public Lcom/absolute/android/persistservice/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/absolute/android/persistservice/v;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Hashtable;

.field private e:Ljava/util/Hashtable;

.field private f:Lcom/absolute/android/persistservice/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/absolute/android/persistservice/y;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/y;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/absolute/android/persistservice/y;->c:Landroid/content/Context;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    return-void
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/ab;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ab;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/absolute/android/persistservice/ac;)V
    .locals 8

    iget-object v5, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    iget-object v6, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    new-instance v7, Lcom/absolute/android/persistservice/ab;

    invoke-direct {v7, p0, p1}, Lcom/absolute/android/persistservice/ab;-><init>(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ac;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    iget-object v5, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    new-instance v6, Lcom/absolute/android/persistservice/z;

    invoke-direct {v6, p0, v2}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    new-instance v6, Lcom/absolute/android/persistservice/z;

    invoke-direct {v6, p0, v4}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/absolute/android/persistservice/y;->c()V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->b(Lcom/absolute/android/persistservice/ab;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/z;Z)V
    .locals 3

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/z;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/z;->stopWatching()V

    new-instance v0, Lcom/absolute/android/persistservice/z;

    invoke-static {p1}, Lcom/absolute/android/persistservice/z;->a(Lcom/absolute/android/persistservice/z;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/absolute/android/persistservice/z;->a(Lcom/absolute/android/persistservice/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/z;->startWatching()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v3, 0x3

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to restore persisted file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v3, "Persisted directory has been removed."

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    if-nez p2, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has been removed / modified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v2, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v2

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v3

    iget-object v3, v3, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/ac;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_7
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/z;

    invoke-direct {p0, v1, p1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/z;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/ab;

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized b(Lcom/absolute/android/persistservice/ab;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ac;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/y;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/ab;

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/y;->b(Lcom/absolute/android/persistservice/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No longer have access to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to restore access to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v1, "600"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "chown system:system "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/y;->c:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "chmod "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/y;->c:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v3, :cond_6

    :goto_3
    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doResetPermissions for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " threw exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    :try_start_5
    const-string/jumbo v1, "750"

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    :cond_5
    :try_start_6
    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->c:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Absolute Persistence Service unable to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_7
    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to reboot to reset access to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Got exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to set permission of persisted file / folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Deleting file ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception v3

    goto/16 :goto_2
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/y;->b()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/y;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ABT_PersistedStorageManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/absolute/android/persistservice/aa;-><init>(Lcom/absolute/android/persistservice/y;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized a(Lcom/absolute/android/persistservice/ac;ZZ)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_c

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    iget-object v7, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, p0}, Lcom/absolute/android/persistservice/ac;->a(Lcom/absolute/android/persistservice/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :catch_0
    move-exception v2

    :try_start_2
    instance-of v6, v2, Ljava/io/FileNotFoundException;

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v6, :cond_8

    :goto_2
    :try_start_3
    iget-object v6, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/absolute/android/persistservice/ac;->l(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->e()Z

    move-result v1

    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v6, :cond_9

    :cond_3
    :goto_3
    if-eqz v0, :cond_b

    :cond_4
    :goto_4
    const/4 v5, 0x0

    if-eqz v0, :cond_d

    :cond_5
    if-eqz p3, :cond_1

    :try_start_4
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_6
    :try_start_5
    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Persisted storage file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not exist. 1st boot?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    :cond_7
    if-nez p3, :cond_f

    :goto_5
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    :try_start_7
    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Got exception reading persisted data file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :cond_9
    if-nez v1, :cond_a

    :try_start_8
    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loaded data from pre-3118 format data file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", but failed to save in new format."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    :try_start_9
    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to read persisted data file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in pre-3118 format."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    :cond_a
    :try_start_a
    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Successfully migrated pre-3118 format data file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    :cond_b
    if-eqz p2, :cond_4

    :try_start_b
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->c()V

    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->e()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to save initialized storage file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_4

    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;)V

    goto/16 :goto_1

    :cond_d
    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_e
    if-nez v1, :cond_7

    goto/16 :goto_5

    :cond_f
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5
.end method

.method protected a(Lcom/absolute/android/persistservice/v;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/absolute/android/persistservice/y;->a:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v1

    if-eqz v1, :cond_0

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
    const/4 v1, 0x1

    :try_start_2
    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Z)Z

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ab;->stopWatching()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized a(Ljava/lang/String;ZZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/absolute/android/persistservice/y;->a:Z

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Z)Z

    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    if-eqz v2, :cond_4

    if-nez p2, :cond_5

    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    if-nez p3, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ab;->startWatching()V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ab;->stopWatching()V

    new-instance v1, Lcom/absolute/android/persistservice/ab;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/absolute/android/persistservice/ab;-><init>(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ac;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v3

    iget-object v3, v3, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/ab;->startWatching()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PersistedFileObserver.onSelfUpdateEnd(), failed to save to path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
