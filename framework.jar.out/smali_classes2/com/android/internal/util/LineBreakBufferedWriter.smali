.class public Lcom/android/internal/util/LineBreakBufferedWriter;
.super Ljava/io/PrintWriter;
.source "LineBreakBufferedWriter.java"


# instance fields
.field private buffer:[C

.field private bufferIndex:I

.field private final bufferSize:I

.field private lastNewline:I

.field private final lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;II)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iput p2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method private appendToBuffer(Ljava/lang/String;II)V
    .locals 3

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    :cond_0
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    return-void
.end method

.method private appendToBuffer([CII)V
    .locals 2

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    if-ge v0, p1, :cond_0

    move v0, p1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    return-void
.end method

.method private removeFromBuffer(I)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v0, v1, p1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    goto :goto_0
.end method

.method private writeBuffer(I)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-super {p0, v0, v1, p1}, Ljava/io/PrintWriter;->write([CII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public println()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    int-to-char v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v3, [C

    int-to-char v1, p1

    aput-char v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->write([CII)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, -0x1

    :goto_0
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, p3

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-le v4, v5, :cond_4

    const/4 v2, -0x1

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v1, v4, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    add-int v4, p2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_0

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v4, v5, :cond_1

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eq v2, v6, :cond_2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr p2, v4

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr p3, v4

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v3, v4, v5

    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_0

    :cond_4
    if-lez p3, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-ltz v0, :cond_5

    add-int v4, p2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_6

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v4, p3

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public write([CII)V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, -0x1

    :goto_0
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, p3

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-le v4, v5, :cond_4

    const/4 v2, -0x1

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v1, v4, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    add-int v4, p2, v0

    aget-char v4, p1, v4

    if-ne v4, v8, :cond_0

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v4, v5, :cond_1

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eq v2, v6, :cond_2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr p2, v4

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr p3, v4

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v3, v4, v5

    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_0

    :cond_4
    if-lez p3, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-ltz v0, :cond_5

    add-int v4, p2, v0

    aget-char v4, p1, v4

    if-ne v4, v8, :cond_6

    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v4, p3

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
