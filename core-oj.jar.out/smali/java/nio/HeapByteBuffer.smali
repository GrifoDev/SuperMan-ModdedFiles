.class Ljava/nio/HeapByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "HeapByteBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapByteBuffer;-><init>(IIZ)V

    .line 48
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 7
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 54
    new-array v5, p1, [B

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 55
    iput-boolean p3, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 53
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapByteBuffer;-><init>([BIIZ)V

    .line 58
    return-void
.end method

.method protected constructor <init>([BIIIII)V
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .prologue
    .line 70
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    .line 69
    return-void
.end method

.method protected constructor <init>([BIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .prologue
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    .line 76
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 77
    iput-boolean p7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 75
    return-void
.end method

.method constructor <init>([BIIZ)V
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 63
    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 64
    iput-boolean p4, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 62
    return-void
.end method


# virtual methods
.method _get(I)B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 178
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method _put(IB)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "b"    # B

    .prologue
    .line 182
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aput-byte p2, v0, p1

    .line 181
    return-void
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 8

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x1

    .line 230
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 231
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    .line 237
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 232
    const/4 v2, -0x1

    .line 233
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 231
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 8

    .prologue
    .line 490
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x3

    .line 491
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 492
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 498
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 493
    const/4 v2, -0x1

    .line 494
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 492
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 8

    .prologue
    .line 438
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x2

    .line 439
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 440
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    .line 446
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 441
    const/4 v2, -0x1

    .line 442
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 440
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 8

    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x2

    .line 334
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 336
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    .line 342
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 337
    const/4 v2, -0x1

    .line 338
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 336
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 8

    .prologue
    .line 386
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x3

    .line 387
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 388
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    .line 394
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 389
    const/4 v2, -0x1

    .line 390
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 388
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 101
    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 102
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    move-result v2

    .line 103
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v3

    .line 104
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v4

    .line 105
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v5

    .line 106
    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    const/4 v7, 0x1

    .line 101
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 8

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x1

    .line 282
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 283
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    .line 289
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 284
    const/4 v2, -0x1

    .line 285
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 283
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 167
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 171
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 173
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->discardMark()V

    .line 174
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 91
    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 92
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    move-result v2

    .line 93
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v3

    .line 94
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v4

    .line 95
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v5

    .line 96
    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    .line 97
    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 91
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method

.method public get()B
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public get(I)B
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 118
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 122
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    .line 123
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 124
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 126
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    return-object p0
.end method

.method public getChar()C
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    move-result v0

    return v0
.end method

.method public getChar(I)C
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    move-result v0

    return v0
.end method

.method getCharUnchecked(I)C
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 450
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 454
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    move-result-wide v0

    return-wide v0
.end method

.method getDoubleUnchecked(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 2

    .prologue
    .line 398
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    move-result v0

    return v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 402
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    move-result v0

    return v0
.end method

.method getFloatUnchecked(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 297
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method getIntUnchecked(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 346
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 350
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method getLongUnchecked(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 245
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    move-result v0

    return v0
.end method

.method getShortUnchecked(I)S
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    move-result v0

    return v0
.end method

.method getUnchecked(I[CII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 201
    mul-int/lit8 v2, p4, 0x2

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x2

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 200
    return-void

    .line 201
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[DII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 462
    mul-int/lit8 v2, p4, 0x8

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/16 v5, 0x8

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 461
    return-void

    .line 462
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[FII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 410
    mul-int/lit8 v2, p4, 0x4

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x4

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 409
    return-void

    .line 410
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[III)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 305
    mul-int/lit8 v2, p4, 0x4

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x4

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 304
    return-void

    .line 305
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[JII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 358
    mul-int/lit8 v2, p4, 0x8

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/16 v5, 0x8

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 357
    return-void

    .line 358
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[SII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 253
    mul-int/lit8 v2, p4, 0x2

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x2

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 252
    return-void

    .line 253
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 110
    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # B

    .prologue
    .line 139
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p1, v0, v1

    .line 143
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # B

    .prologue
    .line 147
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p2, v0, v1

    .line 151
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 155
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 158
    :cond_0
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    .line 159
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 160
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 161
    :cond_1
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 162
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # C

    .prologue
    .line 205
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 208
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 209
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 213
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 216
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 217
    return-object p0
.end method

.method putCharUnchecked(IC)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    .line 220
    return-void
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 466
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 469
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 470
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 474
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 477
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 478
    return-object p0
.end method

.method putDoubleUnchecked(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    .line 481
    return-void
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 414
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 417
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 418
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 422
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 425
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 426
    return-object p0
.end method

.method putFloatUnchecked(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    .line 429
    return-void
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 309
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 312
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 313
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 317
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 320
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 321
    return-object p0
.end method

.method putIntUnchecked(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    .line 324
    return-void
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 370
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 373
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 374
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 362
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 365
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 366
    return-object p0
.end method

.method putLongUnchecked(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    .line 377
    return-void
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 265
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 268
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 269
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # S

    .prologue
    .line 257
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 261
    return-object p0
.end method

.method putShortUnchecked(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    .line 272
    return-void
.end method

.method putUnchecked(I[CII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 225
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x2

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x2

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 224
    return-void

    .line 225
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[DII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 486
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x8

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/16 v5, 0x8

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 485
    return-void

    .line 486
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[FII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 434
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x4

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x4

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 433
    return-void

    .line 434
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[III)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 329
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x4

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x4

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 328
    return-void

    .line 329
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[JII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 382
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x8

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/16 v5, 0x8

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 381
    return-void

    .line 382
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[SII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 277
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x2

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x2

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 276
    return-void

    .line 277
    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 81
    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 84
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v4

    .line 85
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v5

    .line 86
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v6, v2, v3

    .line 87
    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 82
    const/4 v2, -0x1

    .line 83
    const/4 v3, 0x0

    .line 81
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method
