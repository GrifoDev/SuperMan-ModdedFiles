.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# static fields
.field private static defaultCharBufferSize:I


# instance fields
.field private cb:[C

.field private lineSeparator:Ljava/lang/String;

.field private nChars:I

.field private nextChar:I

.field private out:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 88
    sget v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "sz"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 102
    if-gtz p2, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 105
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 106
    iput p2, p0, Ljava/io/BufferedWriter;->nChars:I

    .line 107
    iput v1, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 110
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "line.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method private min(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 153
    if-ge p1, p2, :cond_0

    return p1

    .line 154
    :cond_0
    return p2
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit v1

    .line 261
    return-void

    .line 264
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 258
    return-void

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 267
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 268
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 265
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 254
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 251
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method flushBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 127
    iget v0, p0, Ljava/io/BufferedWriter;->nextChar:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 128
    return-void

    .line 129
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedWriter;->nextChar:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public newLine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 142
    iget v0, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v2, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v0, v2, :cond_0

    .line 143
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 144
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v2, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    int-to-char v3, p1

    aput-char v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 221
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 223
    move v0, p2

    .local v0, "b":I
    add-int v2, p2, p3

    .line 224
    .local v2, "t":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    .line 225
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v5

    sub-int v5, v2, v0

    invoke-direct {p0, v3, v5}, Ljava/io/BufferedWriter;->min(II)I

    move-result v1

    .line 226
    .local v1, "d":I
    add-int v3, v0, v1

    iget-object v5, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v6, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-virtual {p1, v0, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 227
    add-int/2addr v0, v1

    .line 228
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 229
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v3, v5, :cond_0

    .line 230
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "b":I
    .end local v1    # "d":I
    .end local v2    # "t":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "b":I
    .restart local v2    # "t":I
    :cond_1
    monitor-exit v4

    .line 219
    return-void
.end method

.method public write([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 175
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 176
    if-ltz p2, :cond_0

    array-length v3, p1

    if-le p2, v3, :cond_1

    .line 178
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 176
    :cond_1
    if-ltz p3, :cond_0

    .line 177
    add-int v3, p2, p3

    :try_start_1
    array-length v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, v5, :cond_0

    add-int v3, p2, p3

    if-ltz v3, :cond_0

    .line 179
    if-nez p3, :cond_2

    monitor-exit v4

    .line 180
    return-void

    .line 183
    :cond_2
    :try_start_2
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt p3, v3, :cond_3

    .line 187
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 188
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 189
    return-void

    .line 192
    :cond_3
    move v0, p2

    .local v0, "b":I
    add-int v2, p2, p3

    .line 193
    .local v2, "t":I
    :cond_4
    :goto_0
    if-ge v0, v2, :cond_5

    .line 194
    :try_start_3
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v5

    sub-int v5, v2, v0

    invoke-direct {p0, v3, v5}, Ljava/io/BufferedWriter;->min(II)I

    move-result v1

    .line 195
    .local v1, "d":I
    iget-object v3, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-static {p1, v0, v3, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 196
    add-int/2addr v0, v1

    .line 197
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 198
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v3, v5, :cond_4

    .line 199
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "d":I
    :cond_5
    monitor-exit v4

    .line 173
    return-void
.end method
