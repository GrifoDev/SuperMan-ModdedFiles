.class public Ljava/nio/DirectByteBuffer;
.super Ljava/nio/MappedByteBuffer;
.source "DirectByteBuffer.java"

# interfaces
.implements Lsun/nio/ch/DirectBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DirectByteBuffer$MemoryRef;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final cleaner:Lsun/misc/Cleaner;

.field final memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    .line 38
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    .locals 6
    .param p1, "cap"    # I
    .param p2, "addr"    # J
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "unmapper"    # Ljava/lang/Runnable;
    .param p6, "isReadOnly"    # Z

    .prologue
    .line 106
    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;-><init>(IIIILjava/io/FileDescriptor;)V

    .line 107
    iput-boolean p6, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 108
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p2, p3}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(J)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 109
    iput-wide p2, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 110
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-static {v0, p5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 105
    return-void
.end method

.method constructor <init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V
    .locals 7
    .param p1, "capacity"    # I
    .param p2, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v5, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    iget v6, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 86
    iput-object p2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 87
    iget-wide v0, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    iget v3, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 89
    iput-boolean v2, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 82
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 3
    .param p1, "addr"    # J
    .param p3, "cap"    # I

    .prologue
    .line 95
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Ljava/nio/MappedByteBuffer;-><init>(IIII)V

    .line 96
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p1, p2}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(J)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 97
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 94
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIII)V
    .locals 8
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .prologue
    .line 118
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V
    .locals 7
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .prologue
    .line 124
    iget-object v5, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 125
    iput-boolean p7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 126
    iput-object p1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 127
    iget-wide v0, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 123
    return-void
.end method

.method private get(J)B
    .locals 1
    .param p1, "a"    # J

    .prologue
    .line 190
    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method private getChar(J)C
    .locals 4
    .param p1, "a"    # J

    .prologue
    .line 306
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    int-to-long v2, v0

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDouble(J)D
    .locals 5
    .param p1, "a"    # J

    .prologue
    .line 728
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, p2, v2}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    .line 729
    .local v0, "x":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 728
    .end local v0    # "x":J
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getFloat(J)F
    .locals 3
    .param p1, "a"    # J

    .prologue
    .line 645
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, p2, v1}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    .line 646
    .local v0, "x":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 645
    .end local v0    # "x":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getInt(J)I
    .locals 1
    .param p1, "a"    # J

    .prologue
    .line 481
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLong(J)J
    .locals 3
    .param p1, "a"    # J

    .prologue
    .line 563
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getShort(J)S
    .locals 1
    .param p1, "a"    # J

    .prologue
    .line 399
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ix(I)J
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 186
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private putChar(JC)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # C

    .prologue
    .line 345
    int-to-short v1, p3

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v1, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 346
    return-object p0

    .line 345
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private putDouble(JD)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # D

    .prologue
    .line 756
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 757
    .local v0, "y":J
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, p2, v0, v1, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 758
    return-object p0

    .line 757
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private putFloat(JF)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # F

    .prologue
    .line 673
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 674
    .local v0, "y":I
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 675
    return-object p0

    .line 674
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private putInt(JI)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # I

    .prologue
    .line 508
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 509
    return-object p0

    .line 508
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private putLong(JJ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # J

    .prologue
    .line 590
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, p3, p4, v0}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 591
    return-object p0

    .line 590
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private putShort(JS)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # S

    .prologue
    .line 427
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 428
    return-object p0

    .line 427
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method _get(I)B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method _put(IB)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "b"    # B

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 301
    return-void
.end method

.method public address()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    return-wide v0
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 381
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 385
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 386
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt v6, v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 387
    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    .line 388
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x1

    .line 389
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    .line 395
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 390
    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    .line 389
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    .line 387
    goto :goto_1
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 793
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 797
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 798
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt v6, v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 799
    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    .line 801
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x3

    .line 802
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 808
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 803
    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    .line 802
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    .line 799
    goto :goto_1
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 710
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 714
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 715
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt v6, v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 716
    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    .line 717
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x2

    .line 718
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    .line 724
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 719
    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    .line 718
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    .line 716
    goto :goto_1
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 545
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 549
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 550
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt v6, v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 551
    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    .line 552
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x2

    .line 553
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    .line 559
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 554
    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    .line 553
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    .line 551
    goto :goto_1
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 627
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 631
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 632
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt v6, v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 633
    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    .line 634
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x3

    .line 635
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    .line 641
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 636
    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    .line 635
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    .line 633
    goto :goto_1
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 168
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 172
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v2

    .line 173
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v3

    .line 174
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v4

    .line 175
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v5

    .line 176
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 177
    const/4 v7, 0x1

    .line 171
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 463
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 467
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 468
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt v6, v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 469
    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    .line 470
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x1

    .line 471
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    .line 477
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 472
    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    .line 471
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    .line 469
    goto :goto_1
.end method

.method public attachment()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    return-object v0
.end method

.method public cleaner()Lsun/misc/Cleaner;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 272
    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v3, :cond_0

    .line 273
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 275
    :cond_0
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_1

    .line 276
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 279
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 280
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    if-gt v1, v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 281
    :cond_3
    if-gt v1, v0, :cond_4

    sub-int v2, v0, v1

    .line 282
    .local v2, "rem":I
    :goto_1
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 283
    invoke-virtual {p0, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 285
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->discardMark()V

    .line 286
    return-object p0

    .line 281
    .end local v2    # "rem":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "rem":I
    goto :goto_1
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 155
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 159
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v2

    .line 160
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v3

    .line 161
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v4

    .line 162
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v5

    .line 163
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 164
    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 158
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method

.method public get()B
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextGetIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0
.end method

.method public get(I)B
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 201
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_0

    .line 209
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_0
    array-length v3, p1

    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 212
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 213
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 214
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-gt v1, v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    move v3, v2

    goto :goto_0

    .line 215
    :cond_2
    if-gt v1, v0, :cond_3

    sub-int v2, v0, v1

    .line 216
    .local v2, "rem":I
    :cond_3
    if-le p3, v2, :cond_4

    .line 217
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 218
    :cond_4
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 220
    add-int v3, v1, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 221
    return-object p0
.end method

.method public getChar()C
    .locals 6

    .prologue
    .line 313
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v2, v2, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v2, :cond_0

    .line 314
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "buffer is inaccessible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_0
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 317
    .local v0, "newPosition":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 318
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 320
    :cond_1
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    invoke-direct {p0, v2}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-static {v4, v5, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v2

    int-to-char v1, v2

    .line 321
    .local v1, "x":C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 322
    return v1

    .line 320
    .end local v1    # "x":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getChar(I)C
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 326
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v1, v1, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "buffer is inaccessible"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    .line 330
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v2

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3, v1}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v1

    int-to-char v0, v1

    .line 331
    .local v0, "x":C
    return v0

    .line 330
    .end local v0    # "x":C
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getCharUnchecked(I)C
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 335
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 740
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method getDoubleUnchecked(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 747
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 657
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method getFloatUnchecked(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 664
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 492
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method getIntUnchecked(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 499
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 574
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getLongUnchecked(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 581
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 410
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method getShortUnchecked(I)S
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 417
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method getUnchecked(I[CII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 339
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 340
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 339
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    .line 338
    return-void

    .line 340
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[DII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 751
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 752
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 751
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    .line 750
    return-void

    .line 752
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[FII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 668
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 669
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 668
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    .line 667
    return-void

    .line 669
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[III)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 503
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 504
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 503
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 502
    return-void

    .line 504
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[JII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 585
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 586
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 585
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    .line 584
    return-void

    .line 586
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[SII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 421
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 422
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 421
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    .line 420
    return-void

    .line 422
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # B

    .prologue
    .line 230
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextPutIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 237
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # B

    .prologue
    .line 241
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 248
    return-object p0
.end method

.method public put(JB)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # B

    .prologue
    .line 225
    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 226
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v3, :cond_0

    .line 253
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 255
    :cond_0
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_1

    .line 256
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_1
    array-length v3, p1

    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 259
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 260
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 261
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    if-gt v1, v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2
    move v3, v2

    goto :goto_0

    .line 262
    :cond_3
    if-gt v1, v0, :cond_4

    sub-int v2, v0, v1

    .line 263
    .local v2, "rem":I
    :cond_4
    if-le p3, v2, :cond_5

    .line 264
    new-instance v3, Ljava/nio/BufferOverflowException;

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v3

    .line 265
    :cond_5
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 267
    add-int v3, v1, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 268
    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # C

    .prologue
    .line 350
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 353
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 357
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 361
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 368
    return-object p0
.end method

.method putCharUnchecked(IC)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 372
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 371
    return-void
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 762
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 763
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 765
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 769
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 773
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 776
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 777
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 780
    return-object p0
.end method

.method putDoubleUnchecked(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 784
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 783
    return-void
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 679
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 680
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 682
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 686
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 690
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 691
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 693
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 694
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 697
    return-object p0
.end method

.method putFloatUnchecked(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 701
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 700
    return-void
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 513
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 516
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 520
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 524
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 527
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 531
    return-object p0
.end method

.method putIntUnchecked(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 535
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 534
    return-void
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 606
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 609
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 610
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 613
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 595
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 598
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 602
    return-object p0
.end method

.method putLongUnchecked(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 617
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 616
    return-void
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 443
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 446
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 450
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # S

    .prologue
    .line 432
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 439
    return-object p0
.end method

.method putShortUnchecked(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 454
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 453
    return-void
.end method

.method putUnchecked(I[CII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 376
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 377
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 376
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    .line 375
    return-void

    .line 377
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[DII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 788
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 789
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 788
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    .line 787
    return-void

    .line 789
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[FII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 705
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 706
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 705
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    .line 704
    return-void

    .line 706
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[III)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 539
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 540
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 539
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    .line 538
    return-void

    .line 540
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[JII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 621
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 622
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 621
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    .line 620
    return-void

    .line 622
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[SII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 458
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 459
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 458
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    .line 457
    return-void

    .line 459
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 816
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iput-boolean p1, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 815
    return-void
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v1, v1, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v9

    .line 146
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 147
    .local v8, "lim":I
    sget-boolean v1, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    if-gt v9, v8, :cond_1

    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 148
    :cond_2
    if-gt v9, v8, :cond_3

    sub-int v4, v8, v9

    .line 149
    .local v4, "rem":I
    :goto_1
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int v6, v9, v1

    .line 150
    .local v6, "off":I
    sget-boolean v1, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    if-ltz v6, :cond_4

    :goto_2
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    .end local v4    # "rem":I
    .end local v6    # "off":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_1

    .restart local v6    # "off":I
    :cond_4
    move v0, v3

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method
