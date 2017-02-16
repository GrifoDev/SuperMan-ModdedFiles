.class Ljava/nio/HeapShortBuffer;
.super Ljava/nio/ShortBuffer;
.source "HeapShortBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapShortBuffer;-><init>(IIZ)V

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
    new-array v5, p1, [S

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 50
    iput-boolean p3, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    .line 48
    return-void
.end method

.method constructor <init>([SII)V
    .locals 1
    .param p1, "buf"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapShortBuffer;-><init>([SIIZ)V

    .line 53
    return-void
.end method

.method protected constructor <init>([SIIIII)V
    .locals 8
    .param p1, "buf"    # [S
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

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    .line 64
    return-void
.end method

.method protected constructor <init>([SIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [S
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 72
    iput-boolean p7, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    .line 70
    return-void
.end method

.method constructor <init>([SIIZ)V
    .locals 7
    .param p1, "buf"    # [S
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

    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 59
    iput-boolean p4, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    .line 57
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .locals 8

    .prologue
    .line 97
    new-instance v0, Ljava/nio/HeapShortBuffer;

    iget-object v1, p0, Ljava/nio/ShortBuffer;->hb:[S

    .line 98
    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    move-result v2

    .line 99
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 100
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    .line 101
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    .line 102
    iget v6, p0, Ljava/nio/ShortBuffer;->offset:I

    const/4 v7, 0x1

    .line 97
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .locals 5

    .prologue
    .line 190
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/ShortBuffer;->hb:[S

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 194
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 195
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 196
    invoke-virtual {p0}, Ljava/nio/Buffer;->discardMark()V

    .line 197
    return-object p0
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .locals 8

    .prologue
    .line 86
    new-instance v0, Ljava/nio/HeapShortBuffer;

    iget-object v1, p0, Ljava/nio/ShortBuffer;->hb:[S

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
    iget v6, p0, Ljava/nio/ShortBuffer;->offset:I

    .line 92
    iget-boolean v7, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    .line 86
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 118
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapShortBuffer;->checkBounds(III)V

    .line 119
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 120
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 122
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 123
    return-object p0
.end method

.method public get()S
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/Buffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aget-short v0, v0, v1

    return v0
.end method

.method public get(I)S
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aget-short v0, v0, v1

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 106
    iget v0, p0, Ljava/nio/ShortBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 143
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aput-short p2, v0, v1

    .line 147
    return-object p0
.end method

.method public put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 6
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 163
    iget-boolean v2, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-eqz v2, :cond_0

    .line 164
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    .line 166
    :cond_0
    instance-of v2, p1, Ljava/nio/HeapShortBuffer;

    if-eqz v2, :cond_3

    .line 167
    if-ne p1, p0, :cond_1

    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    move-object v1, p1

    .line 169
    nop

    nop

    .line 170
    .local v1, "sb":Ljava/nio/HeapShortBuffer;
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 171
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 172
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 173
    :cond_2
    iget-object v2, v1, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v3

    .line 174
    iget-object v4, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v5

    .line 173
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 175
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 186
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapShortBuffer;
    :goto_0
    return-object p0

    .line 177
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 179
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 180
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 181
    :cond_4
    iget-object v2, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 182
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 184
    .end local v0    # "n":I
    :cond_5
    invoke-super {p0, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "x"    # S

    .prologue
    .line 135
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/Buffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    aput-short p1, v0, v1

    .line 139
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 151
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 154
    :cond_0
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapShortBuffer;->checkBounds(III)V

    .line 155
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 156
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 157
    :cond_1
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapShortBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 158
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 159
    return-object p0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .locals 8

    .prologue
    .line 76
    new-instance v0, Ljava/nio/HeapShortBuffer;

    iget-object v1, p0, Ljava/nio/ShortBuffer;->hb:[S

    .line 79
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 80
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 81
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/ShortBuffer;->offset:I

    add-int v6, v2, v3

    .line 82
    iget-boolean v7, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    .line 77
    const/4 v2, -0x1

    .line 78
    const/4 v3, 0x0

    .line 76
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapShortBuffer;-><init>([SIIIIIZ)V

    return-object v0
.end method
