.class public abstract Ljava/io/InputStream;
.super Ljava/lang/Object;
.source "InputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MAX_SKIP_BUFFER_SIZE:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 299
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 164
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 165
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 164
    :cond_2
    array-length v3, p1

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_1

    .line 166
    if-nez p3, :cond_3

    .line 167
    return v4

    .line 170
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 171
    .local v0, "c":I
    if-ne v0, v5, :cond_4

    .line 172
    return v5

    .line 174
    :cond_4
    int-to-byte v3, v0

    aput-byte v3, p1, p2

    .line 176
    const/4 v2, 0x1

    .line 178
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_5

    .line 179
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 180
    if-ne v0, v5, :cond_6

    .line 187
    :cond_5
    :goto_1
    return v2

    .line 183
    :cond_6
    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .local v1, "ee":Ljava/io/IOException;
    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 347
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 212
    move-wide v2, p1

    .line 215
    .local v2, "remaining":J
    cmp-long v5, p1, v8

    if-gtz v5, :cond_0

    .line 216
    return-wide v8

    .line 219
    :cond_0
    const-wide/16 v6, 0x800

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    .line 220
    .local v1, "size":I
    new-array v4, v1, [B

    .line 221
    .local v4, "skipBuffer":[B
    :goto_0
    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 222
    int-to-long v6, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p0, v4, v10, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 223
    .local v0, "nr":I
    if-gez v0, :cond_2

    .line 229
    .end local v0    # "nr":I
    :cond_1
    sub-long v6, p1, v2

    return-wide v6

    .line 226
    .restart local v0    # "nr":I
    :cond_2
    int-to-long v6, v0

    sub-long/2addr v2, v6

    goto :goto_0
.end method
