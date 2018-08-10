.class public Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
.super Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.source "PrimitiveBerTLV.java"


# instance fields
.field private mValue:[B


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    const-string/jumbo v0, "BERTLV::Prim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PrimitiveBerTLV :: tag:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v1, "Inconsistent tag"

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v3, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLevel:I

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    array-length v0, p2

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method protected constructor <init>([BIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    iput p4, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLevel:I

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>([BI)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->parseLength([BI)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getFullLen()I

    move-result v0

    if-le v0, p3, :cond_0

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid format exception (buffer size max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getFullLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method


# virtual methods
.method public getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    return-object v0
.end method

.method public remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->updateLength()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLevel:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateLength()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->updateLenLength()V

    return-void
.end method

.method public write([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->updateLenLength()V

    move v0, p2

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->write([BI)I

    move-result v1

    add-int v0, p2, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->writeLen([BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getFullLen()I

    move-result v1

    return v1
.end method
