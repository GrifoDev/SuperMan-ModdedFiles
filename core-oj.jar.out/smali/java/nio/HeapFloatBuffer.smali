.class Ljava/nio/HeapFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "HeapFloatBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapFloatBuffer;-><init>(IIZ)V

    .line 44
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 7
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 49
    new-array v5, p1, [F

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 50
    iput-boolean p3, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    .line 48
    return-void
.end method

.method constructor <init>([FII)V
    .locals 1
    .param p1, "buf"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapFloatBuffer;-><init>([FIIZ)V

    .line 53
    return-void
.end method

.method protected constructor <init>([FIIIII)V
    .locals 8
    .param p1, "buf"    # [F
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .prologue
    .line 65
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    .line 64
    return-void
.end method

.method protected constructor <init>([FIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [F
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

    .line 71
    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 72
    iput-boolean p7, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    .line 70
    return-void
.end method

.method constructor <init>([FIIZ)V
    .locals 7
    .param p1, "buf"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 58
    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    .line 59
    iput-boolean p4, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    .line 57
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 8

    .prologue
    .line 96
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    iget-object v1, p0, Ljava/nio/FloatBuffer;->hb:[F

    .line 97
    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    move-result v2

    .line 98
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    .line 100
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    .line 101
    iget v6, p0, Ljava/nio/FloatBuffer;->offset:I

    const/4 v7, 0x1

    .line 96
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 5

    .prologue
    .line 189
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatBuffer;->hb:[F

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 193
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 194
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 195
    invoke-virtual {p0}, Ljava/nio/Buffer;->discardMark()V

    .line 196
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 8

    .prologue
    .line 86
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    iget-object v1, p0, Ljava/nio/FloatBuffer;->hb:[F

    .line 87
    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    move-result v2

    .line 88
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 89
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    .line 90
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    .line 91
    iget v6, p0, Ljava/nio/FloatBuffer;->offset:I

    .line 92
    iget-boolean v7, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    .line 86
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    return-object v0
.end method

.method public get()F
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/Buffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public get(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 113
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 117
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapFloatBuffer;->checkBounds(III)V

    .line 118
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 119
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 121
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 122
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 105
    iget v0, p0, Ljava/nio/FloatBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 134
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/Buffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aput p1, v0, v1

    .line 138
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 142
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    aput p2, v0, v1

    .line 146
    return-object p0
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 6
    .param p1, "src"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 162
    iget-boolean v2, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    .line 165
    :cond_0
    instance-of v2, p1, Ljava/nio/HeapFloatBuffer;

    if-eqz v2, :cond_3

    .line 166
    if-ne p1, p0, :cond_1

    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    move-object v1, p1

    .line 168
    nop

    nop

    .line 169
    .local v1, "sb":Ljava/nio/HeapFloatBuffer;
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 170
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 171
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 172
    :cond_2
    iget-object v2, v1, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v3

    .line 173
    iget-object v4, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v5

    .line 172
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 174
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 175
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 185
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapFloatBuffer;
    :goto_0
    return-object p0

    .line 176
    :cond_3
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 178
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 179
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 180
    :cond_4
    iget-object v2, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 181
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 183
    .end local v0    # "n":I
    :cond_5
    invoke-super {p0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 150
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 153
    :cond_0
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapFloatBuffer;->checkBounds(III)V

    .line 154
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 155
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 157
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 158
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 8

    .prologue
    .line 76
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    iget-object v1, p0, Ljava/nio/FloatBuffer;->hb:[F

    .line 79
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 80
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 81
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/FloatBuffer;->offset:I

    add-int v6, v2, v3

    .line 82
    iget-boolean v7, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    .line 77
    const/4 v2, -0x1

    .line 78
    const/4 v3, 0x0

    .line 76
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    return-object v0
.end method
