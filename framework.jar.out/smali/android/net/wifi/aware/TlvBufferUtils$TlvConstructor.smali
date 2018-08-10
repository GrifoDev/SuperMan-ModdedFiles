.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvConstructor"
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mLengthSize:I

.field private mPosition:I

.field private mTypeSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid sizes - typeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lengthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez p2, :cond_0

    if-gt p2, v0, :cond_0

    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    return-void
.end method

.method private addHeader(II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    :cond_1
    :goto_1
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    return-void

    :cond_2
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    int-to-short v2, p1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    int-to-short v2, p2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    goto :goto_1
.end method

.method private checkLength(I)V
    .locals 2

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private getActualLength()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    return v0
.end method


# virtual methods
.method public allocate(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 1

    new-array v0, p1, [B

    iput-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    return-object p0
.end method

.method public allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mTypeSize:I

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mLengthSize:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocate(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public getArray()[B
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    invoke-direct {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getActualLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public putByte(IB)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    aput-byte p2, v0, v1

    return-object p0
.end method

.method public putByteArray(I[B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v0, p2

    goto :goto_0
.end method

.method public putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 2

    invoke-direct {p0, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    invoke-direct {p0, p1, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/2addr v0, p4

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    return-object p0
.end method

.method public putInt(II)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    return-object p0
.end method

.method public putShort(IS)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mPosition:I

    return-object p0
.end method

.method public putString(ILjava/lang/String;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->putByteArray(I[BII)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v2

    return-object v2
.end method

.method public putZeroLengthElement(I)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->checkLength(I)V

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->addHeader(II)V

    return-object p0
.end method

.method public wrap([B)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    .locals 1

    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArray:[B

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->mArrayLength:I

    return-object p0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method
