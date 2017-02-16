.class Ljava/nio/ByteBufferAsShortBuffer;
.super Ljava/nio/ShortBuffer;
.source "ByteBufferAsShortBuffer.java"


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
    const-class v0, Ljava/nio/ByteBufferAsShortBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/nio/ByteBufferAsShortBuffer;->-assertionsDisabled:Z

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
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/ShortBuffer;-><init>(IIII)V

    .line 40
    iput-object p1, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 41
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    .line 49
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    .line 50
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->address:J

    .line 52
    :cond_0
    iput-object p7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    .line 53
    iput p6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    .line 38
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .locals 8

    .prologue
    .line 76
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->markValue()I

    move-result v2

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v3

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v4

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->capacity()I

    move-result v5

    .line 81
    iget v6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    .line 76
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v7

    .line 133
    .local v7, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v6

    .line 134
    .local v6, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsShortBuffer;->-assertionsDisabled:Z

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

    .line 135
    :cond_2
    if-gt v7, v6, :cond_3

    sub-int v8, v6, v7

    .line 136
    .local v8, "rem":I
    :goto_1
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-nez v0, :cond_4

    .line 137
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    shl-int/lit8 v4, v8, 0x1

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 141
    :goto_2
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->discardMark()V

    .line 144
    return-object p0

    .line 135
    .end local v8    # "rem":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "rem":I
    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v0, v8, 0x1

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_2
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .locals 8

    .prologue
    .line 67
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->markValue()I

    move-result v2

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v3

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v4

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->capacity()I

    move-result v5

    .line 72
    iget v6, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    .line 67
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 98
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsShortBuffer;->checkBounds(III)V

    .line 99
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 100
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[SII)V

    .line 102
    iget v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    .line 103
    return-object p0
.end method

.method public get()S
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsShortBuffer;->get(I)S

    move-result v0

    return v0
.end method

.method public get(I)S
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 93
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShortUnchecked(I)S

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 85
    shl-int/lit8 v0, p1, 0x1

    iget v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 112
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsShortBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putShortUnchecked(IS)V

    .line 116
    return-object p0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .locals 1
    .param p1, "x"    # S

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 108
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 120
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsShortBuffer;->checkBounds(III)V

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 122
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsShortBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[SII)V

    .line 124
    iget v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsShortBuffer;->position:I

    .line 125
    return-object p0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->position()I

    move-result v9

    .line 58
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsShortBuffer;->limit()I

    move-result v8

    .line 59
    .local v8, "lim":I
    sget-boolean v1, Ljava/nio/ByteBufferAsShortBuffer;->-assertionsDisabled:Z

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
    shl-int/lit8 v1, v9, 0x1

    iget v2, p0, Ljava/nio/ByteBufferAsShortBuffer;->offset:I

    add-int v6, v1, v2

    .line 62
    .local v6, "off":I
    sget-boolean v1, Ljava/nio/ByteBufferAsShortBuffer;->-assertionsDisabled:Z

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
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/nio/ByteBufferAsShortBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method
