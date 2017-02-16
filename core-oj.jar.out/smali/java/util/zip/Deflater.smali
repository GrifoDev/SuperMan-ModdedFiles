.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field public static final FULL_FLUSH:I = 0x3

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I = 0x0

.field public static final NO_FLUSH:I = 0x0

.field public static final SYNC_FLUSH:I = 0x2


# instance fields
.field private buf:[B

.field private bytesRead:J

.field private bytesWritten:J

.field private finish:Z

.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private len:I

.field private level:I

.field private off:I

.field private setParams:Z

.field private strategy:I

.field private final zsRef:Ljava/util/zip/ZStreamRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/zip/Deflater;->-assertionsDisabled:Z

    .line 76
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 187
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 179
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "nowrap"    # Z

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-array v0, v1, [B

    iput-object v0, p0, Ljava/util/zip/Deflater;->buf:[B

    .line 87
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    .line 168
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    .line 169
    iput v1, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 170
    new-instance v0, Ljava/util/zip/ZStreamRef;

    invoke-static {p1, v1, p2}, Ljava/util/zip/Deflater;->init(IIZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/zip/ZStreamRef;-><init>(J)V

    iput-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    .line 171
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private native deflateBytes(J[BIII)I
.end method

.method private static native end(J)V
.end method

.method private ensureOpen()V
    .locals 4

    .prologue
    .line 549
    sget-boolean v0, Ljava/util/zip/Deflater;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 550
    :cond_0
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 551
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Deflater has been closed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    return-void
.end method

.method private static native getAdler(J)I
.end method

.method private static native init(IIZ)J
.end method

.method private static native reset(J)V
.end method

.method private static native setDictionary(J[BII)V
.end method


# virtual methods
.method public deflate([B)I
    .locals 2
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 371
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    return v0
.end method

.method public deflate([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    return v0
.end method

.method public deflate([BIII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "flush"    # I

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 422
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 423
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 422
    :cond_2
    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_1

    .line 425
    iget-object v9, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v9

    .line 426
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 427
    if-eqz p4, :cond_3

    const/4 v1, 0x2

    if-ne p4, v1, :cond_4

    .line 429
    :cond_3
    iget v8, p0, Ljava/util/zip/Deflater;->len:I

    .line 430
    .local v8, "thisLen":I
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/zip/Deflater;->deflateBytes(J[BIII)I

    move-result v0

    .line 431
    .local v0, "n":I
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    .line 432
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J

    iget v1, p0, Ljava/util/zip/Deflater;->len:I

    sub-int v1, v8, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 433
    return v0

    .line 428
    .end local v0    # "n":I
    .end local v8    # "thisLen":I
    :cond_4
    const/4 v1, 0x3

    if-eq p4, v1, :cond_3

    .line 435
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public end()V
    .locals 6

    .prologue
    .line 525
    iget-object v3, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v3

    .line 526
    :try_start_0
    iget-object v2, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 528
    iget-object v2, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    .line 529
    .local v0, "addr":J
    iget-object v2, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->clear()V

    .line 530
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 531
    invoke-static {v0, v1}, Ljava/util/zip/Deflater;->end(J)V

    .line 532
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/zip/Deflater;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 524
    return-void

    .line 525
    .end local v0    # "addr":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 545
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    .line 540
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 318
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 316
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public finished()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-boolean v1, p0, Ljava/util/zip/Deflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAdler()I
    .locals 4

    .prologue
    .line 444
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 445
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 446
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/zip/Deflater;->getAdler(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBytesRead()J
    .locals 4

    .prologue
    .line 470
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 471
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 472
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBytesWritten()J
    .locals 4

    .prologue
    .line 496
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 497
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 498
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getTotalIn()I
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTotalOut()I
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public needsInput()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    iget v1, p0, Ljava/util/zip/Deflater;->len:I

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 507
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 508
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 509
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/zip/Deflater;->reset(J)V

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finish:Z

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->len:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->off:I

    .line 513
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 506
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDictionary([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 259
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    .line 258
    return-void
.end method

.method public setDictionary([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 239
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 239
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    .line 242
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 243
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 244
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Ljava/util/zip/Deflater;->setDictionary(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 235
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInput([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 220
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 219
    return-void
.end method

.method public setInput([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 203
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 203
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    .line 206
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 207
    :try_start_0
    iput-object p1, p0, Ljava/util/zip/Deflater;->buf:[B

    .line 208
    iput p2, p0, Ljava/util/zip/Deflater;->off:I

    .line 209
    iput p3, p0, Ljava/util/zip/Deflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 199
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 291
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid compression level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 295
    :try_start_0
    iget v0, p0, Ljava/util/zip/Deflater;->level:I

    if-eq v0, p1, :cond_2

    .line 296
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->setParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 290
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setStrategy(I)V
    .locals 2
    .param p1, "strategy"    # I

    .prologue
    .line 269
    packed-switch p1, :pswitch_data_0

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 277
    :pswitch_0
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 278
    :try_start_0
    iget v0, p0, Ljava/util/zip/Deflater;->strategy:I

    if-eq v0, p1, :cond_0

    .line 279
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->setParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 268
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
