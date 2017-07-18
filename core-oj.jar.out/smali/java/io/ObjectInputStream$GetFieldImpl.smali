.class Ljava/io/ObjectInputStream$GetFieldImpl;
.super Ljava/io/ObjectInputStream$GetField;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFieldImpl"
.end annotation


# instance fields
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final objHandles:[I

.field private final objVals:[Ljava/lang/Object;

.field private final primVals:[B

.field final synthetic this$0:Ljava/io/ObjectInputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V
    .locals 1

    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    iput-object p2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    return-void
.end method

.method private getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 4

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getLocalDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public get(Ljava/lang/String;B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    aget-byte p2, v1, v0

    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;C)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getChar([BI)C

    move-result p2

    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public get(Ljava/lang/String;F)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getFloat([BI)F

    move-result p2

    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getInt([BI)I

    move-result p2

    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    aget v0, v3, v1

    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v3}, Ljava/io/ObjectInputStream;->-get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v3

    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v3}, Ljava/io/ObjectInputStream;->-get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    :cond_0
    return-object v2

    :cond_1
    return-object p2
.end method

.method public get(Ljava/lang/String;S)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getShort([BI)S

    move-result p2

    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method readFields()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get0(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-result-object v4

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    iget-object v6, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    array-length v6, v6

    invoke-virtual {v4, v5, v7, v6, v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    move-result v3

    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v4, v7}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    array-length v4, v0

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v5, v5

    sub-int v2, v4, v5

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    add-int v6, v2, v1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v6

    invoke-static {v5, v6}, Ljava/io/ObjectInputStream;->-wrap0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v5}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4, v3}, Ljava/io/ObjectInputStream;->-set0(Ljava/io/ObjectInputStream;I)I

    return-void
.end method
