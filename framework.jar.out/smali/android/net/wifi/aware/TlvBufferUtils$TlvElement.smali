.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvElement"
.end annotation


# instance fields
.field public length:I

.field public offset:I

.field public refArray:[B

.field public type:I


# direct methods
.method private constructor <init>(II[BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    iput p4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    add-int v0, p4, p2

    array-length v1, p3

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(II[BILandroid/net/wifi/aware/TlvBufferUtils$TlvElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BI)V

    return-void
.end method


# virtual methods
.method public getByte()B
    .locals 3

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accesing a byte from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getInt()I
    .locals 3

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accesing an int from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public getShort()S
    .locals 3

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accesing a short from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method
