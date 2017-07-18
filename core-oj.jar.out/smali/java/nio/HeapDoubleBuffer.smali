.class Ljava/nio/HeapDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "HeapDoubleBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapDoubleBuffer;-><init>(IIZ)V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 7

    const/4 v2, 0x0

    new-array v5, p1, [D

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    iput-boolean p3, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    return-void
.end method

.method constructor <init>([DII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIZ)V

    return-void
.end method

.method protected constructor <init>([DIIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    return-void
.end method

.method protected constructor <init>([DIIIIIZ)V
    .locals 7

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    iput-boolean p7, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    return-void
.end method

.method constructor <init>([DIIZ)V
    .locals 7

    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    iput-boolean p4, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    iget-object v1, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/DoubleBuffer;->offset:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .locals 5

    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/DoubleBuffer;->hb:[D

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([DI[DII)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->discardMark()V

    return-object p0
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    iget-object v1, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/DoubleBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    return-object v0
.end method

.method public get()D
    .locals 2

    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get(I)D
    .locals 2

    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 2

    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([DI[DII)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 1

    iget v0, p0, Ljava/nio/DoubleBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .locals 3

    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aput-wide p1, v0, v1

    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aput-wide p2, v0, v1

    return-object p0
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 6

    iget-boolean v2, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    :cond_0
    instance-of v2, p1, Ljava/nio/HeapDoubleBuffer;

    if-eqz v2, :cond_3

    if-ne p1, p0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    move-object v1, p1

    nop

    nop

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_2

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_2
    iget-object v2, v1, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([DI[DII)V

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_4

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_4
    iget-object v2, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    goto :goto_0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([DI[DII)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    iget-object v1, p0, Ljava/nio/DoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/DoubleBuffer;->offset:I

    add-int v6, v2, v3

    iget-boolean v7, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    return-object v0
.end method
