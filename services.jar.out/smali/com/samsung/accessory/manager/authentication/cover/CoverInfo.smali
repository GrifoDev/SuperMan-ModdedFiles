.class public Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
.super Ljava/lang/Object;
.source "CoverInfo.java"


# instance fields
.field private HexDecimalTable:[Ljava/lang/String;

.field private chip_id:[B

.field private color:I

.field private cover_id:[B

.field private id:Ljava/lang/String;

.field private idVersion:I

.field private model:I

.field private reserved:B

.field private serial:Ljava/lang/String;

.field private smapp:I

.field private sn:[B

.field private type:I

.field private url:I

.field private valid:Z

.field private vendorInfo:[B


# direct methods
.method public constructor <init>([B)V
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    new-array v0, v5, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "4"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "8"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "9"

    aput-object v1, v0, v6

    const-string/jumbo v1, "A"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "B"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "C"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "D"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "E"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "F"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "G"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "H"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "J"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "K"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "L"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "M"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "N"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "P"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Q"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "R"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "S"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "T"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "V"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "W"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "X"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Y"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Z"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "I"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "O"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "U"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->setId()V

    iput-boolean v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    :cond_0
    return-void
.end method

.method private convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-object v7

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v6, 0xff

    if-ne v0, v6, :cond_2

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_3
    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private setId()V
    .locals 5

    const/16 v4, 0xe

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    const/16 v2, 0x9

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0xf

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x10

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x11

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x12

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->idVersion:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v2, 0x13

    aget-byte v1, v1, v2

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v2, 0x14

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x15

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v1, 0x16

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const-string/jumbo v2, "null"

    return-object v2
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    return v0
.end method

.method public getCoverId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    return-object v0
.end method

.method public getIdVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->idVersion:I

    return v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    return v0
.end method

.method public getReserved()B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    return v0
.end method

.method public getSmapp()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    return v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    return v0
.end method

.method public getUrl()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    return v0
.end method

.method public getVendorInfo()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    return v0
.end method
