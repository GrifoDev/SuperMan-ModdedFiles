.class public final Lcom/a/a/j/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/a/a/j/a;


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/j/a;

    invoke-direct {v0}, Lcom/a/a/j/a;-><init>()V

    sput-object v0, Lcom/a/a/j/a;->b:Lcom/a/a/j/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/a/j/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j/a;->a:Ljava/util/Queue;

    return-void
.end method

.method public static a()Lcom/a/a/j/a;
    .locals 1

    sget-object v0, Lcom/a/a/j/a;->b:Lcom/a/a/j/a;

    return-object v0
.end method


# virtual methods
.method public a([B)Z
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/j/a;->a:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/a/a/j/a;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/a/a/j/a;->a:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()[B
    .locals 3

    iget-object v1, p0, Lcom/a/a/j/a;->a:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/a/a/j/a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    const-string v1, "ByteArrayPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ByteArrayPool"

    const-string v2, "Created temp bytes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
