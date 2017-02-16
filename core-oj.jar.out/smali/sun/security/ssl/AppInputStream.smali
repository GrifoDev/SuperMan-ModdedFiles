.class Lsun/security/ssl/AppInputStream;
.super Ljava/io/InputStream;
.source "AppInputStream.java"


# static fields
.field private static final SKIP_ARRAY:[B


# instance fields
.field private c:Lsun/security/ssl/SSLSocketImpl;

.field private final oneByte:[B

.field r:Lsun/security/ssl/InputRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lsun/security/ssl/AppInputStream;->SKIP_ARRAY:[B

    .line 38
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;)V
    .locals 1
    .param p1, "conn"    # Lsun/security/ssl/SSLSocketImpl;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/ssl/AppInputStream;->oneByte:[B

    .line 50
    new-instance v0, Lsun/security/ssl/InputRecord;

    invoke-direct {v0}, Lsun/security/ssl/InputRecord;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    .line 51
    iput-object p1, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    .line 49
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->isAppDataValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->close()V

    .line 144
    return-void
.end method

.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/AppInputStream;->oneByte:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lsun/security/ssl/AppInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 70
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 71
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/security/ssl/AppInputStream;->oneByte:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v1, v1, 0xff

    monitor-exit p0

    return v1

    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 84
    if-nez p1, :cond_0

    .line 85
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 86
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 87
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 86
    :cond_2
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, p2

    if-gt p3, v2, :cond_1

    .line 88
    if-nez p3, :cond_3

    monitor-exit p0

    .line 89
    return v3

    .line 92
    :cond_3
    :try_start_2
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    monitor-exit p0

    .line 93
    return v4

    .line 101
    :cond_4
    :try_start_3
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-nez v2, :cond_5

    .line 102
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    iget-object v3, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLSocketImpl;->readDataRecord(Lsun/security/ssl/InputRecord;)V

    .line 103
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    monitor-exit p0

    .line 104
    return v4

    .line 108
    :cond_5
    :try_start_4
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 109
    .local v1, "howmany":I
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    monitor-exit p0

    .line 110
    return v1

    .line 111
    .end local v1    # "howmany":I
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v2, v0}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 115
    return v4
.end method

.method public declared-synchronized skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 128
    const-wide/16 v2, 0x0

    .line 129
    .local v2, "skipped":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    .line 130
    :try_start_0
    sget-object v4, Lsun/security/ssl/AppInputStream;->SKIP_ARRAY:[B

    array-length v4, v4

    int-to-long v4, v4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 131
    .local v0, "len":I
    sget-object v4, Lsun/security/ssl/AppInputStream;->SKIP_ARRAY:[B

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lsun/security/ssl/AppInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 132
    .local v1, "r":I
    if-gtz v1, :cond_1

    .end local v0    # "len":I
    .end local v1    # "r":I
    :cond_0
    monitor-exit p0

    .line 138
    return-wide v2

    .line 135
    .restart local v0    # "len":I
    .restart local v1    # "r":I
    :cond_1
    int-to-long v4, v1

    sub-long/2addr p1, v4

    .line 136
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .end local v0    # "len":I
    .end local v1    # "r":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
