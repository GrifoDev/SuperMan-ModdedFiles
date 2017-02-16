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
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "IPAddress cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 132
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

    .line 135
    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 139
    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv6(Ljava/lang/String;)V

    .line 140
    iput-boolean v2, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    .line 126
    :goto_0
    return-void

    .line 141
    :cond_3
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 143
    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv4(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_0

    .line 146
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
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/IPAddressName;-><init>([B)V

    .line 81
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "address"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    .line 104
    :goto_0
    iput-object p1, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 91
    return-void

    .line 99
    :cond_1
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 100
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_0

    .line 102
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid IPAddressName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseIPv4(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 159
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 160
    .local v2, "slashNdx":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 161
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 156
    :goto_0
    return-void

    .line 163
    :cond_0
    const/16 v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 167
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 171
    .local v1, "mask":[B
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 173
    .local v0, "host":[B
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 174
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v1, v4, v3, v5, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method private parseIPv6(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x80

    const/16 v9, 0x10

    const/4 v7, 0x0

    .line 189
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 190
    .local v5, "slashNdx":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 191
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 187
    :cond_0
    return-void

    .line 193
    :cond_1
    const/16 v6, 0x20

    new-array v6, v6, [B

    iput-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    .line 195
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 196
    .local v0, "base":[B
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v0, v7, v6, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 200
    .local v4, "prefixLen":I
    if-le v4, v8, :cond_2

    .line 201
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "IPv6Address prefix is longer than 128"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 204
    :cond_2
    new-instance v1, Lsun/security/util/BitArray;

    invoke-direct {v1, v8}, Lsun/security/util/BitArray;-><init>(I)V

    .line 207
    .local v1, "bitArray":Lsun/security/util/BitArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 208
    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Lsun/security/util/BitArray;->set(IZ)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {v1}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v3

    .line 212
    .local v3, "maskArray":[B
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_0

    .line 213
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int/lit8 v7, v2, 0x10

    aget-byte v8, v3, v2

    aput-byte v8, v6, v7

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 13
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/16 v11, 0x20

    const/16 v10, 0x8

    .line 396
    if-nez p1, :cond_0

    .line 397
    const/4 v0, -0x1

    .line 474
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 398
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    .line 399
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .end local v0    # "constraintType":I
    :cond_1
    move-object v8, p1

    .line 400
    check-cast v8, Lsun/security/x509/IPAddressName;

    invoke-virtual {v8, p0}, Lsun/security/x509/IPAddressName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 401
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 403
    .end local v0    # "constraintType":I
    :cond_2
    check-cast p1, Lsun/security/x509/IPAddressName;

    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/IPAddressName;->getBytes()[B

    move-result-object v3

    .line 404
    .local v3, "otherAddress":[B
    array-length v8, v3

    if-ne v8, v12, :cond_3

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-ne v8, v12, :cond_3

    .line 406
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 407
    .end local v0    # "constraintType":I
    :cond_3
    array-length v8, v3

    if-ne v8, v10, :cond_b

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-ne v8, v10, :cond_b

    .line 411
    :cond_4
    const/4 v5, 0x1

    .line 412
    .local v5, "otherSubsetOfThis":Z
    const/4 v7, 0x1

    .line 413
    .local v7, "thisSubsetOfOther":Z
    const/4 v6, 0x0

    .line 414
    .local v6, "thisEmpty":Z
    const/4 v4, 0x0

    .line 415
    .local v4, "otherEmpty":Z
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    div-int/lit8 v2, v8, 0x2

    .line 416
    .local v2, "maskOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_f

    .line 417
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

    .line 418
    const/4 v6, 0x1

    .line 419
    :cond_5
    aget-byte v8, v3, v1

    add-int v9, v1, v2

    aget-byte v9, v3, v9

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aget-byte v9, v3, v1

    if-eq v8, v9, :cond_6

    .line 420
    const/4 v4, 0x1

    .line 421
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

    .line 422
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

    .line 423
    :cond_7
    const/4 v5, 0x0

    .line 425
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

    .line 426
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

    .line 427
    :cond_9
    const/4 v7, 0x0

    .line 416
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 408
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    .end local v4    # "otherEmpty":Z
    .end local v5    # "otherSubsetOfThis":Z
    .end local v6    # "thisEmpty":Z
    .end local v7    # "thisSubsetOfOther":Z
    :cond_b
    array-length v8, v3

    if-ne v8, v11, :cond_c

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-eq v8, v11, :cond_4

    .line 443
    :cond_c
    array-length v8, v3

    if-eq v8, v10, :cond_d

    array-length v8, v3

    if-ne v8, v11, :cond_18

    .line 445
    :cond_d
    const/4 v1, 0x0

    .line 446
    .restart local v1    # "i":I
    array-length v8, v3

    div-int/lit8 v2, v8, 0x2

    .line 447
    .restart local v2    # "maskOffset":I
    :goto_2
    if-ge v1, v2, :cond_e

    .line 450
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v8, v8, v1

    add-int v9, v1, v2

    aget-byte v9, v3, v9

    and-int/2addr v8, v9

    aget-byte v9, v3, v1

    if-eq v8, v9, :cond_16

    .line 453
    :cond_e
    if-ne v1, v2, :cond_17

    .line 454
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 430
    .end local v0    # "constraintType":I
    .restart local v4    # "otherEmpty":Z
    .restart local v5    # "otherSubsetOfThis":Z
    .restart local v6    # "thisEmpty":Z
    .restart local v7    # "thisSubsetOfOther":Z
    :cond_f
    if-nez v6, :cond_10

    if-eqz v4, :cond_13

    .line 431
    :cond_10
    if-eqz v6, :cond_11

    if-eqz v4, :cond_11

    .line 432
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 433
    .end local v0    # "constraintType":I
    :cond_11
    if-eqz v6, :cond_12

    .line 434
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 436
    .end local v0    # "constraintType":I
    :cond_12
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 437
    .end local v0    # "constraintType":I
    :cond_13
    if-eqz v5, :cond_14

    .line 438
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 439
    .end local v0    # "constraintType":I
    :cond_14
    if-eqz v7, :cond_15

    .line 440
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 442
    .end local v0    # "constraintType":I
    :cond_15
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 447
    .end local v0    # "constraintType":I
    .end local v4    # "otherEmpty":Z
    .end local v5    # "otherSubsetOfThis":Z
    .end local v6    # "thisEmpty":Z
    .end local v7    # "thisSubsetOfOther":Z
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 456
    :cond_17
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 457
    .end local v0    # "constraintType":I
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    :cond_18
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-eq v8, v10, :cond_19

    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    if-ne v8, v11, :cond_1d

    .line 459
    :cond_19
    const/4 v1, 0x0

    .line 460
    .restart local v1    # "i":I
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v8, v8

    div-int/lit8 v2, v8, 0x2

    .line 461
    .restart local v2    # "maskOffset":I
    :goto_3
    if-ge v1, v2, :cond_1a

    .line 463
    aget-byte v8, v3, v1

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v10, v1, v2

    aget-byte v9, v9, v10

    and-int/2addr v8, v9

    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v9, v9, v1

    if-eq v8, v9, :cond_1b

    .line 466
    :cond_1a
    if-ne v1, v2, :cond_1c

    .line 467
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 461
    .end local v0    # "constraintType":I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 469
    :cond_1c
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    .line 471
    .end local v0    # "constraintType":I
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    :cond_1d
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto/16 :goto_0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 230
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 314
    if-ne p0, p1, :cond_0

    .line 315
    return v9

    .line 317
    :cond_0
    instance-of v5, p1, Lsun/security/x509/IPAddressName;

    if-nez v5, :cond_1

    .line 318
    return v8

    .line 320
    :cond_1
    nop

    nop

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/IPAddressName;->getBytes()[B

    move-result-object v4

    .line 322
    .local v4, "other":[B
    array-length v5, v4

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v6, v6

    if-eq v5, v6, :cond_2

    .line 323
    return v8

    .line 325
    :cond_2
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_8

    .line 328
    :cond_3
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    div-int/lit8 v1, v5, 0x2

    .line 329
    .local v1, "maskLen":I
    new-array v3, v1, [B

    .line 330
    .local v3, "maskedThis":[B
    new-array v2, v1, [B

    .line 331
    .local v2, "maskedOther":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 332
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v5, v5, v0

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    add-int v7, v0, v1

    aget-byte v6, v6, v7

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 333
    aget-byte v5, v4, v0

    add-int v6, v0, v1

    aget-byte v6, v4, v6

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 334
    aget-byte v5, v3, v0

    aget-byte v6, v2, v0

    if-eq v5, v6, :cond_4

    .line 335
    return v8

    .line 331
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_5
    move v0, v1

    :goto_1
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    if-ge v0, v5, :cond_7

    .line 340
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v5, v5, v0

    aget-byte v6, v4, v0

    if-eq v5, v6, :cond_6

    .line 341
    return v8

    .line 339
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_7
    return v9

    .line 346
    .end local v0    # "i":I
    .end local v1    # "maskLen":I
    .end local v2    # "maskedOther":[B
    .end local v3    # "maskedThis":[B
    :cond_8
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    return v5
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 305
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

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x80

    const/16 v6, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 255
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 256
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    return-object v5

    .line 258
    :cond_0
    iget-boolean v5, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    if-eqz v5, :cond_2

    .line 260
    new-array v1, v8, [B

    .line 261
    .local v1, "host":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 262
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 263
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 264
    new-array v3, v8, [B

    .line 265
    .local v3, "mask":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v8, v3, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 298
    .end local v3    # "mask":[B
    :cond_1
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    return-object v5

    .line 271
    .end local v1    # "host":[B
    :cond_2
    new-array v1, v6, [B

    .line 272
    .restart local v1    # "host":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 273
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    .line 274
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v5, v5

    if-ne v5, v10, :cond_1

    .line 278
    new-array v4, v6, [B

    .line 279
    .local v4, "maskBytes":[B
    const/16 v2, 0x10

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_3

    .line 280
    add-int/lit8 v5, v2, -0x10

    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v6, v6, v2

    aput-byte v6, v4, v5

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_3
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v9, v4}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 283
    .local v0, "ba":Lsun/security/util/BitArray;
    const/4 v2, 0x0

    .line 284
    :goto_1
    if-ge v2, v9, :cond_4

    .line 285
    invoke-virtual {v0, v2}, Lsun/security/util/BitArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 288
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

    .line 290
    :goto_2
    if-ge v2, v9, :cond_1

    .line 291
    invoke-virtual {v0, v2}, Lsun/security/util/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 292
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid IPv6 subdomain - set bit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 293
    const-string/jumbo v7, " not contiguous"

    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 284
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 358
    .local v1, "retval":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 359
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
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

    .prologue
    .line 486
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 487
    const-string/jumbo v1, "subtreeDepth() not defined for IPAddressName"

    .line 486
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
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

    .line 240
    :catch_0
    move-exception v1

    .line 242
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 243
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
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
