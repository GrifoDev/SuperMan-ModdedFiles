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

    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Ljava/lang/UNIXProcess;->newFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private static drainInputStream(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    if-nez v0, :cond_1

    new-array v0, v1, [B

    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    add-int v3, v2, v1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_1

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

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->drainInputStream(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-nez v2, :cond_1

    sget-object v3, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    :goto_0
    iput-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->buf:[B

    if-nez v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
