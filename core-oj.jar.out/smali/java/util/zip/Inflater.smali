.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final defaultBuf:[B


# instance fields
.field private buf:[B

.field private bytesRead:J

.field private bytesWritten:J

.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private len:I

.field private needDict:Z

.field private off:I

.field private final zsRef:Ljava/util/zip/ZStreamRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/util/zip/Inflater;->-assertionsDisabled:Z

    new-array v0, v1, [B

    sput-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    iput-object v0, p0, Ljava/util/zip/Inflater;->buf:[B

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/util/zip/ZStreamRef;

    invoke-static {p1}, Ljava/util/zip/Inflater;->init(Z)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/zip/ZStreamRef;-><init>(J)V

    iput-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private static native end(J)V
.end method

.method private ensureOpen()V
    .locals 4

    sget-boolean v0, Ljava/util/zip/Inflater;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Inflater has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static native getAdler(J)I
.end method

.method private native inflateBytes(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method private static native init(Z)J
.end method

.method private static native reset(J)V
.end method

.method private static native setDictionary(J[BII)V
.end method


# virtual methods
.method public end()V
    .locals 6

    iget-object v3, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    iget-object v2, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    iget-object v2, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->clear()V

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/util/zip/Inflater;->end(J)V

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/zip/Inflater;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method ended()Z
    .locals 6

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    return-void
.end method

.method public finished()Z
    .locals 2

    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAdler()I
    .locals 4

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/zip/Inflater;->getAdler(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBytesRead()J
    .locals 4

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBytesWritten()J
    .locals 4

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRemaining()I
    .locals 2

    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getTotalIn()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTotalOut()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public inflate([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    return v0
.end method

.method public inflate([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_1

    iget-object v8, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    iget v7, p0, Ljava/util/zip/Inflater;->len:I

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/zip/Inflater;->inflateBytes(J[BII)I

    move-result v0

    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J

    iget v1, p0, Ljava/util/zip/Inflater;->len:I

    sub-int v1, v7, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public needsDictionary()Z
    .locals 2

    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public needsInput()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .locals 4

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/zip/Inflater;->reset(J)V

    sget-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    iput-object v0, p0, Ljava/util/zip/Inflater;->buf:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needDict:Z

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->len:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->off:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDictionary([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setDictionary([BII)V

    return-void
.end method

.method public setDictionary([BII)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Ljava/util/zip/Inflater;->setDictionary(J[BII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needDict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInput([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    return-void
.end method

.method public setInput([BII)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Ljava/util/zip/Inflater;->buf:[B

    iput p2, p0, Ljava/util/zip/Inflater;->off:I

    iput p3, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
