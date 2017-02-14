.class public Lsun/security/x509/IPAddressName;
.super Ljava/lang/Object;
.source "IPAddressName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final MASKSIZE:I = 0x10


# instance fields
.field private address:[B

.field private isIPv4:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "IPAddress cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IPAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv6(Ljava/lang/String;)V

    iput-boolean v2, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    :goto_0
    return-void

    :cond_3
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv4(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IPAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/IPAddressName;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    :goto_0
    iput-object p1, p0, Lsun/security/x509/IPAddressName;->address:[B

    return-void

    :cond_1
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid IPAddressName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseIPv4(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v1, v4, v3, v5, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method private parseIPv6(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x80

    const/16 v9, 0x10

    const/4 v7, 0x0

    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    :cond_0
    return-void

    :cond_1
    const/16 v6, 0x20

    new-array v6, v6, [B

    iput-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v0, v7, v6, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v8, :cond_2

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "IPv6Address prefix is longer than 128"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    new-instance v1, Lsun/security/util/BitArray;

    invoke-direct {v1, v8}, Lsun/security/util/BitArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Lsun/security/util/BitArray;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_0

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int/lit8 v7, v2, 0x10

    aget-byte v8, v3, v2

    aput-byte v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v12, 0x4

    const/16 v11, 0x20

    const/16 v10, 0x8

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move-object v8, p1

    check-cast v8, Lsun/security/x509/IPAddressName;

    invoke-virtual {v8, p0}, Lsun/security/x509/IPAddressName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lsun/security/x509/IPAddressName;

    invoke-virtual {p1}, Lsun/security/x509/IPAddressName;->getBytes()[B

    move-result-object v3

    array-length v8, v3

    if-ne v8, v12, :cond_3

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-ne v8, v12, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    array-length v8, v3

    if-ne v8, v10, :cond_b

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-ne v8, v10, :cond_b

    :cond_4
    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    div-int/lit8 v2, v8, 0x2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_f

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v8, v8, v1

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v10, v1, v2

    aget-byte v9, v9, v10

    and-int/2addr v8, v9

    int-to-byte v8, v8

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v9, v9, v1

    if-eq v8, v9, :cond_5

    const/4 v6, 0x1

    :cond_5
    aget-byte v8, v3, v1

    add-int v9, v1, v2

    aget-byte v9, v3, v9

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aget-byte v9, v3, v1

    if-eq v8, v9, :cond_6

    const/4 v4, 0x1

    :cond_6
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v9, v1, v2

    aget-byte v8, v8, v9

    add-int v9, v1, v2

    aget-byte v9, v3, v9

    and-int/2addr v8, v9

    int-to-byte v8, v8

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v10, v1, v2

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v8, v8, v1

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v10, v1, v2

    aget-byte v9, v9, v10

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aget-byte v9, v3, v1

    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v11, v1, v2

    aget-byte v10, v10, v11

    and-int/2addr v9, v10

    int-to-byte v9, v9

    if-eq v8, v9, :cond_8

    :cond_7
    const/4 v5, 0x0

    :cond_8
    add-int v8, v1, v2

    aget-byte v8, v3, v8

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v10, v1, v2

    aget-byte v9, v9, v10

    and-int/2addr v8, v9

    int-to-byte v8, v8

    add-int v9, v1, v2

    aget-byte v9, v3, v9

    if-ne v8, v9, :cond_9

    aget-byte v8, v3, v1

    add-int v9, v1, v2

    aget-byte v9, v3, v9

    and-int/2addr v8, v9

    int-to-byte v8, v8

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v9, v9, v1

    add-int v10, v1, v2

    aget-byte v10, v3, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    if-eq v8, v9, :cond_a

    :cond_9
    const/4 v7, 0x0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    array-length v8, v3

    if-ne v8, v11, :cond_c

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-eq v8, v11, :cond_4

    :cond_c
    array-length v8, v3

    if-eq v8, v10, :cond_d

    array-length v8, v3

    if-ne v8, v11, :cond_18

    :cond_d
    const/4 v1, 0x0

    array-length v8, v3

    div-int/lit8 v2, v8, 0x2

    :goto_2
    if-ge v1, v2, :cond_e

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v8, v8, v1

    add-int v9, v1, v2

    aget-byte v9, v3, v9

    and-int/2addr v8, v9

    aget-byte v9, v3, v1

    if-eq v8, v9, :cond_16

    :cond_e
    if-ne v1, v2, :cond_17

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_f
    if-nez v6, :cond_10

    if-eqz v4, :cond_13

    :cond_10
    if-eqz v6, :cond_11

    if-eqz v4, :cond_11

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    if-eqz v6, :cond_12

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_13
    if-eqz v5, :cond_14

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_14
    if-eqz v7, :cond_15

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_18
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-eq v8, v10, :cond_19

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-ne v8, v11, :cond_1d

    :cond_19
    const/4 v1, 0x0

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    div-int/lit8 v2, v8, 0x2

    :goto_3
    if-ge v1, v2, :cond_1a

    aget-byte v8, v3, v1

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v10, v1, v2

    aget-byte v9, v9, v10

    and-int/2addr v8, v9

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v9, v9, v1

    if-eq v8, v9, :cond_1b

    :cond_1a
    if-ne v1, v2, :cond_1c

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1c
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x3

    goto/16 :goto_0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-ne p0, p1, :cond_0

    return v9

    :cond_0
    instance-of v5, p1, Lsun/security/x509/IPAddressName;

    if-nez v5, :cond_1

    return v8

    :cond_1
    nop

    nop

    invoke-virtual {p1}, Lsun/security/x509/IPAddressName;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v6, v6

    if-eq v5, v6, :cond_2

    return v8

    :cond_2
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_8

    :cond_3
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    div-int/lit8 v1, v5, 0x2

    new-array v3, v1, [B

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v5, v5, v0

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v7, v0, v1

    aget-byte v6, v6, v7

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    aget-byte v5, v4, v0

    add-int v6, v0, v1

    aget-byte v6, v4, v6

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    aget-byte v5, v3, v0

    aget-byte v6, v2, v0

    if-eq v5, v6, :cond_4

    return v8

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    if-ge v0, v5, :cond_7

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v5, v5, v0

    aget-byte v6, v4, v0

    if-eq v5, v6, :cond_6

    return v8

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return v9

    :cond_8
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    return v5
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x20

    const/16 v9, 0x80

    const/16 v6, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    return-object v5

    :cond_0
    iget-boolean v5, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    if-eqz v5, :cond_2

    new-array v1, v8, [B

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    new-array v3, v8, [B

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v8, v3, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    return-object v5

    :cond_2
    new-array v1, v6, [B

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    if-ne v5, v10, :cond_1

    new-array v4, v6, [B

    const/16 v2, 0x10

    :goto_0
    if-ge v2, v10, :cond_3

    add-int/lit8 v5, v2, -0x10

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v6, v6, v2

    aput-byte v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v9, v4}, Lsun/security/util/BitArray;-><init>(I[B)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_4

    invoke-virtual {v0, v2}, Lsun/security/util/BitArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    :goto_2
    if-ge v2, v9, :cond_1

    invoke-virtual {v0, v2}, Lsun/security/util/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid IPv6 subdomain - set bit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not contiguous"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public subtreeDepth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "subtreeDepth() not defined for IPAddressName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IPAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IPAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {v0, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
