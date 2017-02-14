.class Ljava/io/ObjectStreamClass$EntryFuture;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryFuture"
.end annotation


# static fields
.field private static final unset:Ljava/lang/Object;


# instance fields
.field private entry:Ljava/lang/Object;

.field private final owner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->owner:Ljava/lang/Thread;

    sget-object v0, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/ObjectStreamClass$EntryFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized get()Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    sget-object v3, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$EntryFuture;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    new-instance v2, Ljava/io/ObjectStreamClass$EntryFuture$1;

    invoke-direct {v2, p0}, Ljava/io/ObjectStreamClass$EntryFuture$1;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getOwner()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->owner:Ljava/lang/Thread;

    return-object v0
.end method

.method declared-synchronized set(Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    sget-object v1, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$EntryFuture;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
