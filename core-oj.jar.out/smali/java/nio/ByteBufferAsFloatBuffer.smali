.class Ljava/nio/ByteBufferAsFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "ByteBufferAsFloatBuffer.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final bb:Ljava/nio/ByteBuffer;

.field protected final offset:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/nio/ByteBufferAsFloatBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/nio/ByteBufferAsFloatBuffer;->-assertionsDisabled:Z

    .line 30
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 39
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/FloatBuffer;-><init>(IIII)V

    .line 40
    iput-object p1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 41
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    .line 49
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    .line 50
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->address:J

    .line 52
    :cond_0
    iput-object p7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    .line 53
    iput p6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    .line 38
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 8

    .prologue
    .line 77
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->markValue()I

    move-result v2

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    move-result v3

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    move-result v4

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    move-result v5

    .line 82
    iget v6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    .line 83
    iget-object v7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    .line 77
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    move-result v7

    .line 134
    .local v7, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    move-result v6

    .line 135
    .local v6, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsFloatBuffer;->-assertionsDisabled:Z

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

    .line 136
    :cond_2
    if-gt v7, v6, :cond_3

    sub-int v8, v6, v7

    .line 137
    .local v8, "rem":I
    :goto_1
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-nez v0, :cond_4

    .line 138
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    shl-int/lit8 v4, v8, 0x2

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 142
    :goto_2
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsFloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->discardMark()V

    .line 145
    return-object p0

    .line 136
    .end local v8    # "rem":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "rem":I
    goto :goto_1

    .line 140
    :cond_4
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v0, v8, 0x2

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_2
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 8

    .prologue
    .line 67
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->markValue()I

    move-result v2

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    move-result v3

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    move-result v4

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    move-result v5

    .line 72
    iget v6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    .line 73
    iget-object v7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    .line 67
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public get()F
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->get(I)F

    move-result v0

    return v0
.end method

.method public get(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 95
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloatUnchecked(I)F

    move-result v0

    return v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 99
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->checkBounds(III)V

    .line 100
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 101
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[FII)V

    .line 103
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 104
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 87
    shl-int/lit8 v0, p1, 0x2

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 109
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 113
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putFloatUnchecked(IF)V

    .line 117
    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 121
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->checkBounds(III)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 123
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[FII)V

    .line 125
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 126
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    move-result v9

    .line 58
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    move-result v8

    .line 59
    .local v8, "lim":I
    sget-boolean v1, Ljava/nio/ByteBufferAsFloatBuffer;->-assertionsDisabled:Z

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

    .line 60
    :cond_1
    if-gt v9, v8, :cond_2

    sub-int v4, v8, v9

    .line 61
    .local v4, "rem":I
    :goto_1
    shl-int/lit8 v1, v9, 0x2

    iget v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    add-int v6, v1, v2

    .line 62
    .local v6, "off":I
    sget-boolean v1, Ljava/nio/ByteBufferAsFloatBuffer;->-assertionsDisabled:Z

    if-nez v1, :cond_4

    if-ltz v6, :cond_3

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    .end local v4    # "rem":I
    .end local v6    # "off":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_1

    .restart local v6    # "off":I
    :cond_3
    move v0, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method
