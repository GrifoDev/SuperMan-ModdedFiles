.class Ljava/io/ObjectOutputStream$PutFieldImpl;
.super Ljava/io/ObjectOutputStream$PutField;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutFieldImpl"
.end annotation


# instance fields
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final objVals:[Ljava/lang/Object;

.field private final primVals:[B

.field final synthetic this$0:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V
    .locals 1
    .param p1, "this$0"    # Ljava/io/ObjectOutputStream;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    .prologue
    .line 1652
    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    .line 1653
    iput-object p2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    .line 1654
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    .line 1655
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    .line 1652
    return-void
.end method

.method private getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 1760
    iget-object v1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1761
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-nez v0, :cond_0

    .line 1762
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1763
    const-string/jumbo v3, " with type "

    .line 1762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1765
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1
.end method


# virtual methods
.method public put(Ljava/lang/String;B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B

    .prologue
    .line 1663
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    aput-byte p2, v0, v1

    .line 1662
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C

    .prologue
    .line 1667
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putChar([BIC)V

    .line 1666
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .prologue
    .line 1687
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putDouble([BID)V

    .line 1686
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 1679
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putFloat([BIF)V

    .line 1678
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 1675
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putInt([BII)V

    .line 1674
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .prologue
    .line 1683
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putLong([BIJ)V

    .line 1682
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1691
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    aput-object p2, v0, v1

    .line 1690
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    .prologue
    .line 1671
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putShort([BIS)V

    .line 1670
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 1659
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 1658
    return-void
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1711
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    if-eq v3, p1, :cond_0

    .line 1712
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "wrong stream"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1714
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    array-length v4, v4

    invoke-interface {p1, v3, v5, v4}, Ljava/io/ObjectOutput;->write([BII)V

    .line 1716
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1717
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v3, v0

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v4, v4

    sub-int v2, v3, v4

    .line 1719
    .local v2, "numPrimFields":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1720
    add-int v3, v2, v1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1721
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "cannot write unshared object"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1723
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1695
    :cond_2
    return-void
.end method

.method writeFields()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1731
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    invoke-static {v3}, Ljava/io/ObjectOutputStream;->-get0(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    move-result-object v3

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    iget-object v5, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1733
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1734
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v3, v0

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v4, v4

    sub-int v2, v3, v4

    .line 1735
    .local v2, "numPrimFields":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1743
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v4, v4, v1

    .line 1744
    add-int v5, v2, v1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    .line 1743
    invoke-static {v3, v4, v5}, Ljava/io/ObjectOutputStream;->-wrap2(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1745
    :catchall_0
    move-exception v3

    throw v3

    .line 1730
    :cond_0
    return-void
.end method
