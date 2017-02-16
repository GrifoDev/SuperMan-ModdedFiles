.class public Lcom/thoughtworks/xstream/core/util/QuickWriter;
.super Ljava/lang/Object;
.source "QuickWriter.java"


# instance fields
.field private buffer:[C

.field private pointer:I

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 26
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;-><init>(Ljava/io/Writer;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    .line 31
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    .line 32
    return-void
.end method

.method private raw(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 103
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private raw([C)V
    .locals 2
    .param p1, "c"    # [C

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write([C)V

    .line 94
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    .line 85
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    .line 75
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 48
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 50
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v0, v0

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->raw(C)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    aput-char p1, v0, v1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 36
    .local v0, "len":I
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 38
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->raw([C)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    iget v3, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 44
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    goto :goto_0
.end method

.method public write([C)V
    .locals 4
    .param p1, "c"    # [C

    .prologue
    .line 59
    array-length v0, p1

    .line 60
    .local v0, "len":I
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 62
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->raw([C)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    iget v3, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    goto :goto_0
.end method
