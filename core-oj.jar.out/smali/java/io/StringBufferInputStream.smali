.class public Ljava/io/StringBufferInputStream;
.super Ljava/io/InputStream;
.source "StringBufferInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected count:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 73
    iput-object p1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->count:I

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 162
    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3

    .prologue
    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 112
    if-nez p1, :cond_0

    .line 113
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit p0

    throw v3

    .line 114
    :cond_0
    if-ltz p2, :cond_1

    :try_start_1
    array-length v3, p1

    if-le p2, v3, :cond_2

    .line 116
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 114
    :cond_2
    if-ltz p3, :cond_1

    .line 115
    add-int v3, p2, p3

    array-length v4, p1

    if-gt v3, v4, :cond_1

    add-int v3, p2, p3

    if-ltz v3, :cond_1

    .line 118
    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v4, p0, Ljava/io/StringBufferInputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v3, v4, :cond_3

    .line 119
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 121
    :cond_3
    :try_start_2
    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/2addr v3, p3

    iget v4, p0, Ljava/io/StringBufferInputStream;->count:I

    if-le v3, v4, :cond_4

    .line 122
    iget v3, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v4, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int p3, v3, v4

    .line 124
    :cond_4
    if-gtz p3, :cond_5

    monitor-exit p0

    .line 125
    return v5

    .line 127
    :cond_5
    :try_start_3
    iget-object v2, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    .local v2, "s":Ljava/lang/String;
    move v0, p3

    .line 129
    .local v0, "cnt":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 130
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    :try_start_4
    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    :cond_6
    monitor-exit p0

    .line 133
    return p3

    .end local p2    # "off":I
    .restart local v1    # "off":I
    :catchall_1
    move-exception v3

    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 170
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 169
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5
    .param p1, "n"    # J

    .prologue
    const-wide/16 v2, 0x0

    monitor-enter p0

    .line 144
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    monitor-exit p0

    .line 145
    return-wide v2

    .line 147
    :cond_0
    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 148
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 150
    :cond_1
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 151
    return-wide p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
