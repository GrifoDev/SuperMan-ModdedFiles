.class Ljava/nio/HeapByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "HeapByteBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapByteBuffer;-><init>(IIZ)V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 7

    const/4 v2, 0x0

    new-array v5, p1, [B

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    iput-boolean p3, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapByteBuffer;-><init>([BIIZ)V

    return-void
.end method

.method protected constructor <init>([BIIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-void
.end method

.method protected constructor <init>([BIIIIIZ)V
    .locals 7

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    iput-boolean p7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    return-void
.end method

.method constructor <init>([BIIZ)V
    .locals 7

    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    iput-boolean p4, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    return-void
.end method


# virtual methods
.method _get(I)B
    .locals 1

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method _put(IB)V
    .locals 1

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 8

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 8

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x3

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 8

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x2

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 8

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x2

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 8

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x3

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 8

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    shr-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 5

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

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

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->discardMark()V

    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method

.method public get()B
    .locals 2

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

    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public getChar()C
    .locals 2

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

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

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

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 2

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

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2

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

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

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

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 2

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

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    move-result v0

    return v0
.end method

.method getUnchecked(I[CII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[DII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[FII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[III)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[JII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[SII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 1

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p1, v0, v1

    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p2, v0, v1

    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    return-object p0
.end method

.method putCharUnchecked(IC)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    return-void
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    return-object p0
.end method

.method putDoubleUnchecked(ID)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    return-void
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    return-object p0
.end method

.method putFloatUnchecked(IF)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    return-void
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    return-object p0
.end method

.method putIntUnchecked(II)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    return-void
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 3

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    return-object p0
.end method

.method putLongUnchecked(IJ)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    return-void
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    return-object p0
.end method

.method putShortUnchecked(IS)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    return-void
.end method

.method putUnchecked(I[CII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[DII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[FII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[III)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[JII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[SII)V
    .locals 7

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

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v6, v2, v3

    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v0
.end method
