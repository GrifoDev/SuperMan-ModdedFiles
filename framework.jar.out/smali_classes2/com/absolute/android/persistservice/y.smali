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

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/absolute/android/persistservice/y;

    .line 25
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

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/absolute/android/persistservice/y;->c:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    .line 51
    return-void
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/ab;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 215
    :try_start_0
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 216
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/absolute/android/persistservice/ac;)V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    new-instance v2, Lcom/absolute/android/persistservice/ab;

    invoke-direct {v2, p0, p1}, Lcom/absolute/android/persistservice/ab;-><init>(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ac;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 158
    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    new-instance v3, Lcom/absolute/android/persistservice/z;

    invoke-direct {v3, p0, v1}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    new-instance v2, Lcom/absolute/android/persistservice/z;

    invoke-direct {v2, p0, v0}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/absolute/android/persistservice/y;->c()V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ab;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->b(Lcom/absolute/android/persistservice/ab;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/z;Z)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 244
    if-nez p2, :cond_0

    .line 251
    :try_start_0
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 253
    return-void

    .line 245
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    .line 246
    new-instance v0, Lcom/absolute/android/persistservice/z;

    invoke-static {p1}, Lcom/absolute/android/persistservice/z;->a(Lcom/absolute/android/persistservice/z;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/absolute/android/persistservice/z;->a(Lcom/absolute/android/persistservice/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v0, :cond_3

    .line 463
    :goto_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 483
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to restore persisted file: "

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

    goto :goto_0

    .line 460
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v1, "Persisted directory has been removed."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    .line 468
    if-nez p2, :cond_6

    .line 476
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been removed / modified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v2, :cond_7

    .line 480
    :goto_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 469
    :cond_6
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v1

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v2

    iget-object v2, v2, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/ac;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 473
    return-void

    .line 478
    :cond_7
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 227
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 230
    return-void

    .line 228
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/z;

    invoke-direct {p0, v0, p1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/z;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 200
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 203
    return-void

    .line 201
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/absolute/android/persistservice/ab;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 496
    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    .line 502
    return-void

    .line 500
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

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 514
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 516
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 518
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 520
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 528
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/y;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 535
    return-void

    .line 529
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    .line 530
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/y;->b(Lcom/absolute/android/persistservice/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 551
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v0, :cond_3

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 564
    :cond_1
    :goto_1
    return-void

    .line 552
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No longer have access to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 560
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_1

    .line 561
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
    .locals 4

    .prologue
    monitor-enter p0

    .line 573
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 622
    return-void

    .line 575
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "600"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "chown system:system "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_4

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 610
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v0, :cond_6

    .line 613
    :goto_3
    invoke-static {v1}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 618
    :try_start_4
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doResetPermissions for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " threw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_5
    const-string/jumbo v0, "750"

    goto :goto_1

    .line 590
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 599
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->c:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Absolute Persistence Service unable to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 605
    :catch_1
    move-exception v0

    .line 602
    :try_start_7
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to reboot to reset access to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 611
    :cond_6
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to set permission of persisted file / folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Deleting file ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 586
    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/y;->b()V

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/y;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 193
    return-void

    .line 186
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ABT_PersistedStorageManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    new-instance v1, Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/aa;-><init>(Lcom/absolute/android/persistservice/y;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lcom/absolute/android/persistservice/ac;ZZ)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 74
    if-nez p3, :cond_2

    .line 84
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    if-nez p3, :cond_d

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 77
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Lcom/absolute/android/persistservice/ac;->a(Lcom/absolute/android/persistservice/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :catch_0
    move-exception v0

    .line 90
    :try_start_2
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_5

    .line 97
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_7

    .line 103
    :goto_2
    :try_start_3
    iget-object v0, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/absolute/android/persistservice/ac;->l(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x1

    .line 105
    :try_start_4
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->e()Z

    move-result v1

    .line 106
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v0, :cond_9

    :goto_3
    move v0, v1

    .line 124
    :goto_4
    if-eqz v2, :cond_c

    .line 139
    :cond_3
    :goto_5
    if-eqz v2, :cond_e

    :cond_4
    if-eqz p3, :cond_1

    :try_start_5
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 92
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-nez v0, :cond_6

    move v0, v1

    move v2, v1

    goto :goto_4

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Persisted storage file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not exist. 1st boot?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    goto :goto_4

    .line 98
    :cond_7
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got exception reading persisted data file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 141
    :catchall_1
    move-exception v0

    move v2, v1

    .line 139
    :goto_6
    if-eqz v2, :cond_f

    :cond_8
    if-nez p3, :cond_10

    .line 138
    :goto_7
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 107
    :cond_9
    if-nez v1, :cond_a

    .line 111
    :try_start_8
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Loaded data from pre-3118 format data file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", but failed to save in new format."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_3

    .line 119
    :catch_1
    move-exception v0

    .line 116
    :goto_8
    :try_start_9
    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v3, :cond_b

    move v0, v1

    goto/16 :goto_4

    .line 108
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Successfully migrated pre-3118 format data file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_3

    .line 141
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 117
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read persisted data file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in pre-3118 format."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move v0, v1

    goto/16 :goto_4

    .line 124
    :cond_c
    if-eqz p2, :cond_3

    .line 128
    :try_start_c
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->c()V

    .line 129
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->e()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v0

    .line 130
    if-nez v0, :cond_3

    .line 131
    :try_start_d
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to save initialized storage file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_5

    .line 141
    :catchall_3
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto/16 :goto_6

    .line 139
    :cond_d
    :try_start_e
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;)V

    goto/16 :goto_1

    :cond_e
    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_f
    if-nez v1, :cond_8

    goto/16 :goto_7

    :cond_10
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_7

    .line 141
    :catchall_4
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto/16 :goto_6

    .line 119
    :catch_2
    move-exception v0

    move v2, v1

    goto/16 :goto_8
.end method

.method protected a(Lcom/absolute/android/persistservice/v;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    .line 55
    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    .line 266
    if-eqz v0, :cond_1

    .line 270
    sget-boolean v1, Lcom/absolute/android/persistservice/y;->a:Z

    if-eqz v1, :cond_2

    .line 271
    :cond_0
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    monitor-exit p0

    .line 285
    return-void

    :cond_1
    monitor-exit p0

    .line 267
    return-void

    .line 270
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Z)Z

    .line 278
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized a(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    .line 300
    if-eqz v0, :cond_1

    .line 304
    sget-boolean v1, Lcom/absolute/android/persistservice/y;->a:Z

    if-eqz v1, :cond_2

    .line 305
    :cond_0
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Z)Z

    .line 316
    iget-object v1, p0, Lcom/absolute/android/persistservice/y;->f:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_4

    .line 320
    if-nez p2, :cond_5

    .line 347
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_7

    :goto_0
    monitor-exit p0

    .line 351
    return-void

    :cond_1
    monitor-exit p0

    .line 301
    return-void

    .line 304
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    monitor-exit p0

    .line 309
    return-void

    :cond_4
    monitor-exit p0

    .line 317
    return-void

    .line 325
    :cond_5
    if-nez p3, :cond_6

    .line 342
    :try_start_2
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    .line 331
    :cond_6
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 334
    new-instance v1, Lcom/absolute/android/persistservice/ab;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/absolute/android/persistservice/ab;-><init>(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ac;)V

    .line 335
    iget-object v2, p0, Lcom/absolute/android/persistservice/y;->d:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    .line 348
    :cond_7
    iget-object v0, p0, Lcom/absolute/android/persistservice/y;->b:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PersistedFileObserver.onSelfUpdateEnd(), failed to save to path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
