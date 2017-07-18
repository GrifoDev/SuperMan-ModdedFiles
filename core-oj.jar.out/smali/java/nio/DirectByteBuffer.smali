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

    const-class v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;-><init>(IIIILjava/io/FileDescriptor;)V

    iput-boolean p6, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p2, p3}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(J)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iput-wide p2, p0, Ljava/nio/DirectByteBuffer;->address:J

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-static {v0, p5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-void
.end method

.method constructor <init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v5, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    iget v6, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    iput-object p2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-wide v0, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    iget v3, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    iput-boolean v2, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Ljava/nio/MappedByteBuffer;-><init>(IIII)V

    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p1, p2}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(J)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iput-wide p1, p0, Ljava/nio/DirectByteBuffer;->address:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V
    .locals 7

    iget-object v5, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    iput-boolean p7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    iput-object p1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-wide v0, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-void
.end method

.method private get(J)B
    .locals 1

    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method private getChar(J)C
    .locals 4

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, p2, v2}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getFloat(J)F
    .locals 3

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, p2, v1}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getInt(J)I
    .locals 1

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

    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private putChar(JC)Ljava/nio/ByteBuffer;
    .locals 3

    int-to-short v1, p3

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v1, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private putDouble(JD)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, p2, v0, v1, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    return-object p0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private putFloat(JF)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeInt(JIZ)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private putInt(JI)Ljava/nio/ByteBuffer;
    .locals 1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeInt(JIZ)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private putLong(JJ)Ljava/nio/ByteBuffer;
    .locals 1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, p3, p4, v0}, Llibcore/io/Memory;->pokeLong(JJZ)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private putShort(JS)Ljava/nio/ByteBuffer;
    .locals 1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method _get(I)B
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method _put(IB)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public address()J
    .locals 2

    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    return-wide v0
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

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

    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    :goto_1
    shr-int/lit8 v4, v9, 0x1

    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    :cond_3
    move v9, v3

    goto :goto_1
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

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

    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    :goto_1
    shr-int/lit8 v4, v9, 0x3

    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    :cond_3
    move v9, v3

    goto :goto_1
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

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

    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    :goto_1
    shr-int/lit8 v4, v9, 0x2

    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    :cond_3
    move v9, v3

    goto :goto_1
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

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

    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    :goto_1
    shr-int/lit8 v4, v9, 0x2

    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    :cond_3
    move v9, v3

    goto :goto_1
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

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

    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    :goto_1
    shr-int/lit8 v4, v9, 0x3

    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    :cond_3
    move v9, v3

    goto :goto_1
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 8

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

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

    :cond_2
    if-gt v6, v8, :cond_3

    sub-int v9, v8, v6

    :goto_1
    shr-int/lit8 v4, v9, 0x1

    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    :cond_3
    move v9, v3

    goto :goto_1
.end method

.method public attachment()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    return-object v0
.end method

.method public cleaner()Lsun/misc/Cleaner;
    .locals 1

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 8

    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

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

    :cond_3
    if-gt v1, v0, :cond_4

    sub-int v2, v0, v1

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

    invoke-virtual {p0, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->discardMark()V

    return-object p0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 8

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method

.method public get()B
    .locals 2

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    array-length v3, p1

    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

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

    :cond_2
    if-gt v1, v0, :cond_3

    sub-int v2, v0, v1

    :cond_3
    if-le p3, v2, :cond_4

    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    :cond_4
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    add-int v3, v1, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    return-object p0
.end method

.method public getChar()C
    .locals 6

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v2, v2, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "buffer is inaccessible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v2

    if-le v0, v2, :cond_1

    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

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

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    return v1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getChar(I)C
    .locals 4

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v1, v1, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "buffer is inaccessible"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v2

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3, v1}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v1

    int-to-char v0, v1

    return v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getCharUnchecked(I)C
    .locals 4

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

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 2

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 2

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method getUnchecked(I[CII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[DII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[FII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[III)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[JII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getUnchecked(I[SII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isAccessible()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextPutIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(JB)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    array-length v3, p1

    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

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

    :cond_3
    if-gt v1, v0, :cond_4

    sub-int v2, v0, v1

    :cond_4
    if-le p3, v2, :cond_5

    new-instance v3, Ljava/nio/BufferOverflowException;

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v3

    :cond_5
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    add-int v3, v1, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method putCharUnchecked(IC)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method putDoubleUnchecked(ID)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method putFloatUnchecked(IF)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method putIntUnchecked(II)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 3

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method putLongUnchecked(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method putShortUnchecked(IS)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method putUnchecked(I[CII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[DII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[FII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[III)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[JII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method putUnchecked(I[SII)V
    .locals 6

    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public setAccessible(Z)V
    .locals 1

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iput-boolean p1, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    return-void
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 10

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v1, v1, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v9

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

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

    :cond_2
    if-gt v9, v8, :cond_3

    sub-int v4, v8, v9

    :goto_1
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int v6, v9, v1

    sget-boolean v1, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    if-ltz v6, :cond_4

    :goto_2
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method
