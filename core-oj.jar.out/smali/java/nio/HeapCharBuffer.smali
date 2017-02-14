.class Ljava/nio/HeapCharBuffer;
.super Ljava/nio/CharBuffer;
.source "HeapCharBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapCharBuffer;-><init>(IIZ)V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 7

    const/4 v2, 0x0

    new-array v5, p1, [C

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    iput-boolean p3, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    return-void
.end method

.method constructor <init>([CII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapCharBuffer;-><init>([CIIZ)V

    return-void
.end method

.method protected constructor <init>([CIIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    return-void
.end method

.method protected constructor <init>([CIIIIIZ)V
    .locals 7

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    iput-boolean p7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    return-void
.end method

.method constructor <init>([CIIZ)V
    .locals 7

    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    iput-boolean p4, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapCharBuffer;

    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapCharBuffer;->offset:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .locals 5

    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->discardMark()V

    return-object p0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapCharBuffer;

    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapCharBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    return-object v0
.end method

.method public get()C
    .locals 2

    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public get(I)C
    .locals 2

    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 2

    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapCharBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method getUnchecked(I)C
    .locals 2

    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 1

    iget v0, p0, Ljava/nio/HeapCharBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aput-char p1, v0, v1

    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    aput-char p2, v0, v1

    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 6

    iget-boolean v2, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    :cond_0
    instance-of v2, p1, Ljava/nio/HeapCharBuffer;

    if-eqz v2, :cond_3

    if-ne p1, p0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/nio/HeapCharBuffer;

    invoke-virtual {v1}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_2

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_2
    iget-object v2, v1, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {v1}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    invoke-virtual {v1}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_4

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_4
    iget-object v2, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    goto :goto_0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapCharBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapCharBuffer;

    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapCharBuffer;->offset:I

    add-int v6, v2, v3

    iget-boolean v7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/nio/HeapCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/nio/CharBuffer;
    .locals 9

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    move-result v8

    new-instance v0, Ljava/nio/HeapCharBuffer;

    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    add-int v3, v8, p1

    add-int v4, v8, p2

    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapCharBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    iget v3, p0, Ljava/nio/HeapCharBuffer;->offset:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method
