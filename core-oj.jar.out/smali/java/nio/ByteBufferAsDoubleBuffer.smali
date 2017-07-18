.class Ljava/nio/ByteBufferAsDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "ByteBufferAsDoubleBuffer.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final bb:Ljava/nio/ByteBuffer;

.field protected final offset:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V
    .locals 4

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/DoubleBuffer;-><init>(IIII)V

    iput-object p1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->address:J

    :cond_0
    iput-object p7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    iput p6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .locals 8

    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .locals 9

    const/4 v1, 0x0

    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v7

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v6

    sget-boolean v0, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt v7, v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-gt v7, v6, :cond_3

    sub-int v8, v6, v7

    :goto_1
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-nez v0, :cond_4

    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    shl-int/lit8 v4, v8, 0x3

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_2
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsDoubleBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->discardMark()V

    return-object p0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v0, v8, 0x3

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_2
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .locals 8

    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public get()D
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public get(I)D
    .locals 2

    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDoubleUnchecked(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 2

    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[DII)V

    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 2

    shl-int/lit8 v0, p1, 0x3

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/nio/ByteBufferAsDoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putDoubleUnchecked(ID)V

    return-object p0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 2

    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[DII)V

    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    return-object p0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .locals 10

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v9

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v8

    sget-boolean v1, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-gt v9, v8, :cond_0

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    if-gt v9, v8, :cond_2

    sub-int v4, v8, v9

    :goto_1
    shl-int/lit8 v1, v9, 0x3

    iget v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    add-int v6, v1, v2

    sget-boolean v1, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    if-nez v1, :cond_4

    if-ltz v6, :cond_3

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method
