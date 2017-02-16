.class Ljava/lang/UNIXProcess$ProcessPipeInputStream;
.super Ljava/io/BufferedInputStream;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/UNIXProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessPipeInputStream"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "fd"    # I

    .prologue
    .line 270
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Ljava/lang/UNIXProcess;->newFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    return-void
.end method

.method private static drainInputStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 275
    if-nez p0, :cond_0

    return-object v3

    .line 276
    :cond_0
    const/4 v2, 0x0

    .line 278
    .local v2, "n":I
    const/4 v0, 0x0

    .line 279
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .local v1, "j":I
    if-lez v1, :cond_2

    .line 280
    if-nez v0, :cond_1

    new-array v0, v1, [B

    .line 281
    .local v0, "a":[B
    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 280
    .end local v0    # "a":[B
    :cond_1
    add-int v3, v2, v1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_1

    .line 283
    :cond_2
    if-eqz v0, :cond_3

    array-length v3, v0

    if-ne v2, v3, :cond_4

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method declared-synchronized processExited()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v1, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;

    .line 292
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 293
    invoke-static {v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->drainInputStream(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 294
    .local v2, "stragglers":[B
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 295
    if-nez v2, :cond_1

    .line 296
    sget-object v3, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    .line 295
    :goto_0
    iput-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;

    .line 298
    iget-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->buf:[B

    if-nez v3, :cond_0

    .line 299
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "stragglers":[B
    :cond_0
    :goto_1
    monitor-exit p0

    .line 287
    return-void

    .line 297
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "stragglers":[B
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "stragglers":[B
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_1

    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
