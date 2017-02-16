.class public final Lsun/security/util/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x78b20eec64177f2eL


# instance fields
.field private componentLen:I

.field private components:Ljava/lang/Object;

.field private transient componentsCalculated:Z

.field private encoding:[B

.field private volatile transient stringForm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    .line 54
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 18
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 144
    const/16 v3, 0x2e

    .line 145
    .local v3, "ch":I
    const/4 v13, 0x0

    .line 146
    .local v13, "start":I
    const/4 v7, 0x0

    .line 148
    .local v7, "end":I
    const/4 v12, 0x0

    .line 149
    .local v12, "pos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    new-array v14, v15, [B

    .line 150
    .local v14, "tmp":[B
    const/4 v8, 0x0

    .line 151
    .local v8, "first":I
    const/4 v5, 0x0

    .line 154
    .local v5, "count":I
    const/4 v4, 0x0

    .line 156
    :cond_0
    const/4 v10, 0x0

    .line 157
    .local v10, "length":I
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 158
    const/4 v15, -0x1

    if-ne v7, v15, :cond_1

    .line 159
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "comp":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v10, v15, v13

    .line 166
    :goto_0
    const/16 v15, 0x9

    if-le v10, v15, :cond_4

    .line 167
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "bignum":Ljava/math/BigInteger;
    if-nez v5, :cond_2

    .line 169
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(Ljava/math/BigInteger;)V

    .line 170
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    .line 195
    .end local v2    # "bignum":Ljava/math/BigInteger;
    :goto_1
    add-int/lit8 v13, v7, 0x1

    .line 196
    add-int/lit8 v5, v5, 0x1

    .line 197
    const/4 v15, -0x1

    if-ne v7, v15, :cond_0

    .line 199
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    .line 200
    new-array v15, v12, [B

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v15, v1, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 202
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 142
    return-void

    .line 162
    .end local v4    # "comp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 163
    .restart local v4    # "comp":Ljava/lang/String;
    sub-int v10, v7, v13

    goto :goto_0

    .line 172
    .restart local v2    # "bignum":Ljava/math/BigInteger;
    :cond_2
    const/4 v15, 0x1

    if-ne v5, v15, :cond_3

    .line 173
    invoke-static {v8, v2}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(ILjava/math/BigInteger;)V

    .line 174
    mul-int/lit8 v15, v8, 0x28

    int-to-long v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 178
    :goto_2
    invoke-static {v2, v14, v12}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    move-result v15

    add-int/2addr v12, v15

    goto :goto_1

    .line 176
    :cond_3
    invoke-static {v5, v2}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(ILjava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 203
    .end local v2    # "bignum":Ljava/math/BigInteger;
    .end local v4    # "comp":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 204
    .local v9, "ioe":Ljava/io/IOException;
    throw v9

    .line 181
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v4    # "comp":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 182
    .local v11, "num":I
    if-nez v5, :cond_5

    .line 183
    invoke-static {v11}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    .line 184
    move v8, v11

    goto :goto_1

    .line 186
    :cond_5
    const/4 v15, 0x1

    if-ne v5, v15, :cond_6

    .line 187
    invoke-static {v8, v11}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    .line 188
    mul-int/lit8 v15, v8, 0x28

    add-int/2addr v11, v15

    .line 192
    :goto_3
    invoke-static {v11, v14, v12}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v15

    add-int/2addr v12, v15

    goto :goto_1

    .line 190
    :cond_6
    invoke-static {v5, v11}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 205
    .end local v4    # "comp":Ljava/lang/String;
    .end local v11    # "num":I
    :catch_1
    move-exception v6

    .line 206
    .local v6, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ObjectIdentifier() -- Invalid format: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 207
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    .line 206
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
.end method

.method constructor <init>(Lsun/security/util/DerInputBuffer;)V
    .locals 2
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 270
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    .line 271
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 272
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 273
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->check([B)V

    .line 268
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 251
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getByte()I

    move-result v1

    int-to-byte v0, v1

    .line 252
    .local v0, "type_id":B
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 253
    new-instance v1, Ljava/io/IOException;

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ObjectIdentifier() -- data isn\'t an object ID (tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 255
    const-string/jumbo v3, ")"

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getLength()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 259
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-virtual {p1, v1}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 260
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->check([B)V

    .line 237
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 100
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 107
    iput-boolean v2, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 217
    array-length v1, p1

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    .line 218
    aget v1, p1, v2

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    .line 219
    aget v1, p1, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    .line 220
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 221
    aget v1, p1, v0

    invoke-static {v0, v1}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    array-length v1, p1

    invoke-direct {p0, p1, v1}, Lsun/security/util/ObjectIdentifier;->init([II)V

    .line 215
    return-void
.end method

.method private static check([B)V
    .locals 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    array-length v1, p0

    .line 603
    .local v1, "length":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 604
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 605
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "ObjectIdentifier() -- Invalid DER encoding, not ended"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 610
    aget-byte v2, p0, v0

    const/16 v3, -0x80

    if-ne v2, v3, :cond_3

    .line 611
    if-eqz v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_3

    .line 612
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "ObjectIdentifier() -- Invalid DER encoding, useless extra octet detected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_4
    return-void
.end method

.method private static checkCount(I)V
    .locals 2
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 619
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Must be at least two oid components "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    return-void
.end method

.method private static checkFirstComponent(I)V
    .locals 2
    .param p0, "first"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 625
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_1
    return-void
.end method

.method private static checkFirstComponent(Ljava/math/BigInteger;)V
    .locals 2
    .param p0, "first"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 631
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 632
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_1
    return-void
.end method

.method private static checkOtherComponent(II)V
    .locals 3
    .param p0, "i"    # I
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    if-gez p1, :cond_0

    .line 652
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    add-int/lit8 v2, p0, 0x1

    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    const-string/jumbo v2, " must be non-negative "

    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    return-void
.end method

.method private static checkOtherComponent(ILjava/math/BigInteger;)V
    .locals 3
    .param p0, "i"    # I
    .param p1, "num"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 658
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    add-int/lit8 v2, p0, 0x1

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    const-string/jumbo v2, " must be non-negative "

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    return-void
.end method

.method private static checkSecondComponent(II)V
    .locals 2
    .param p0, "first"    # I
    .param p1, "second"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x27

    if-le p1, v0, :cond_1

    .line 638
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_1
    return-void
.end method

.method private static checkSecondComponent(ILjava/math/BigInteger;)V
    .locals 2
    .param p0, "first"    # I
    .param p1, "second"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 644
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 645
    const-wide/16 v0, 0x27

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 646
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_1
    return-void
.end method

.method private init([II)V
    .locals 9
    .param p1, "components"    # [I
    .param p2, "length"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, "pos":I
    mul-int/lit8 v4, p2, 0x5

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [B

    .line 280
    .local v3, "tmp":[B
    aget v4, p1, v8

    aget v5, p1, v7

    mul-int/lit8 v5, v5, 0x28

    const v6, 0x7fffffff

    sub-int v5, v6, v5

    if-ge v4, v5, :cond_0

    .line 281
    aget v4, p1, v7

    mul-int/lit8 v4, v4, 0x28

    aget v5, p1, v8

    add-int/2addr v4, v5

    invoke-static {v4, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    .line 288
    :goto_0
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 289
    aget v4, p1, v1

    invoke-static {v4, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 283
    .end local v1    # "i":I
    :cond_0
    aget v4, p1, v8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 284
    .local v0, "big":Ljava/math/BigInteger;
    aget v4, p1, v7

    mul-int/lit8 v4, v4, 0x28

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 285
    invoke-static {v0, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    goto :goto_0

    .line 291
    .end local v0    # "big":Ljava/math/BigInteger;
    .restart local v1    # "i":I
    :cond_1
    new-array v4, v2, [B

    iput-object v4, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    .line 292
    iget-object v4, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 276
    return-void
.end method

.method public static newInternal([I)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 306
    :try_start_0
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, p0}, Lsun/security/util/ObjectIdentifier;-><init>([I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static pack([BIIII)[B
    .locals 10
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "iw"    # I
    .param p4, "ow"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 495
    sget-boolean v7, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    if-nez v7, :cond_1

    if-lez p3, :cond_0

    if-gt p3, v8, :cond_0

    move v7, v6

    :goto_0
    if-nez v7, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "input NUB must be between 1 and 8"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_0
    move v7, v5

    goto :goto_0

    .line 496
    :cond_1
    sget-boolean v7, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    if-nez v7, :cond_3

    if-lez p4, :cond_2

    if-gt p4, v8, :cond_2

    move v5, v6

    :cond_2
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "output NUB must be between 1 and 8"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 498
    :cond_3
    if-ne p3, p4, :cond_4

    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    return-object v5

    .line 502
    :cond_4
    mul-int v0, p2, p3

    .line 503
    .local v0, "bits":I
    add-int v5, v0, p4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, p4

    new-array v4, v5, [B

    .line 506
    .local v4, "out":[B
    const/4 v2, 0x0

    .line 509
    .local v2, "ipos":I
    add-int v5, v0, p4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, p4

    mul-int/2addr v5, p4

    sub-int v3, v5, v0

    .line 511
    .local v3, "opos":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 512
    rem-int v5, v2, p3

    sub-int v1, p3, v5

    .line 513
    .local v1, "count":I
    rem-int v5, v3, p4

    sub-int v5, p4, v5

    if-le v1, v5, :cond_5

    .line 514
    rem-int v5, v3, p4

    sub-int v1, p4, v5

    .line 517
    :cond_5
    div-int v5, v3, p4

    aget-byte v7, v4, v5

    .line 518
    div-int v8, v2, p3

    add-int/2addr v8, p1

    aget-byte v8, p0, v8

    add-int/lit16 v8, v8, 0x100

    .line 519
    rem-int v9, v2, p3

    sub-int v9, p3, v9

    sub-int/2addr v9, v1

    .line 518
    shr-int/2addr v8, v9

    .line 520
    shl-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    .line 518
    and-int/2addr v8, v9

    .line 521
    rem-int v9, v3, p4

    sub-int v9, p4, v9

    sub-int/2addr v9, v1

    .line 518
    shl-int/2addr v8, v9

    .line 517
    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 522
    add-int/2addr v2, v1

    .line 523
    add-int/2addr v3, v1

    goto :goto_1

    .line 525
    .end local v1    # "count":I
    :cond_6
    return-object v4
.end method

.method private static pack7Oid(I[BI)I
    .locals 5
    .param p0, "input"    # I
    .param p1, "out"    # [B
    .param p2, "ooffset"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 573
    new-array v0, v4, [B

    .line 574
    .local v0, "b":[B
    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 575
    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 576
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 577
    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 578
    invoke-static {v0, v3, v4, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    move-result v1

    return v1
.end method

.method private static pack7Oid(Ljava/math/BigInteger;[BI)I
    .locals 3
    .param p0, "input"    # Ljava/math/BigInteger;
    .param p1, "out"    # [B
    .param p2, "ooffset"    # I

    .prologue
    .line 585
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 586
    .local v0, "b":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    move-result v1

    return v1
.end method

.method private static pack7Oid([BII[BI)I
    .locals 5
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "out"    # [B
    .param p4, "ooffset"    # I

    .prologue
    .line 538
    const/16 v3, 0x8

    const/4 v4, 0x7

    invoke-static {p0, p1, p2, v3, v4}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v2

    .line 539
    .local v2, "pack":[B
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 540
    .local v0, "firstNonZero":I
    array-length v3, v2

    add-int/lit8 v1, v3, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 541
    aget-byte v3, v2, v1

    if-eqz v3, :cond_0

    .line 542
    move v0, v1

    .line 544
    :cond_0
    aget-byte v3, v2, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 540
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 546
    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 547
    array-length v3, v2

    sub-int/2addr v3, v0

    return v3
.end method

.method private static pack8([BII[BI)I
    .locals 5
    .param p0, "in"    # [B
    .param p1, "ioffset"    # I
    .param p2, "ilength"    # I
    .param p3, "out"    # [B
    .param p4, "ooffset"    # I

    .prologue
    .line 558
    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-static {p0, p1, p2, v3, v4}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v2

    .line 559
    .local v2, "pack":[B
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 560
    .local v0, "firstNonZero":I
    array-length v3, v2

    add-int/lit8 v1, v3, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 561
    aget-byte v3, v2, v1

    if-eqz v3, :cond_0

    .line 562
    move v0, v1

    .line 560
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 565
    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 566
    array-length v3, v2

    sub-int/2addr v3, v0

    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 113
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    invoke-direct {p0, v0, v1}, Lsun/security/util/ObjectIdentifier;->init([II)V

    .line 110
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v0

    .line 122
    .local v0, "comps":[I
    if-eqz v0, :cond_1

    .line 123
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    .line 124
    array-length v1, v0

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    .line 128
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    .line 130
    .end local v0    # "comps":[I
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 119
    return-void

    .line 126
    .restart local v0    # "comps":[I
    :cond_1
    sget-object v1, Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;->theOne:Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 316
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 336
    if-ne p0, p1, :cond_0

    .line 337
    const/4 v1, 0x1

    return v1

    .line 339
    :cond_0
    instance-of v1, p1, Lsun/security/util/ObjectIdentifier;

    if-nez v1, :cond_1

    .line 340
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 342
    check-cast v0, Lsun/security/util/ObjectIdentifier;

    .line 343
    .local v0, "other":Lsun/security/util/ObjectIdentifier;
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iget-object v2, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 1
    .param p1, "other"    # Lsun/security/util/ObjectIdentifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toIntArray()[I
    .locals 15

    .prologue
    .line 358
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    array-length v4, v11

    .line 359
    .local v4, "length":I
    const/16 v11, 0x14

    new-array v5, v11, [I

    .line 360
    .local v5, "result":[I
    const/4 v9, 0x0

    .line 361
    .local v9, "which":I
    const/4 v1, 0x0

    .line 362
    .local v1, "fromPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v10, v9

    .end local v9    # "which":I
    .local v10, "which":I
    :goto_0
    if-ge v2, v4, :cond_8

    .line 363
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_9

    .line 365
    sub-int v11, v2, v1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x4

    if-le v11, v12, :cond_4

    .line 366
    new-instance v0, Ljava/math/BigInteger;

    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    sub-int v12, v2, v1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x7

    const/16 v14, 0x8

    invoke-static {v11, v1, v12, v13, v14}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/math/BigInteger;-><init>([B)V

    .line 367
    .local v0, "big":Ljava/math/BigInteger;
    if-nez v1, :cond_2

    .line 368
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    const/4 v11, 0x2

    aput v11, v5, v10

    .line 369
    const-wide/16 v12, 0x50

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 370
    .local v7, "second":Ljava/math/BigInteger;
    const-wide/32 v12, 0x7fffffff

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 371
    const/4 v11, 0x0

    return-object v11

    .line 373
    :cond_0
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "which":I
    .restart local v10    # "which":I
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v5, v9

    move v9, v10

    .line 401
    .end local v0    # "big":Ljava/math/BigInteger;
    .end local v7    # "second":Ljava/math/BigInteger;
    .end local v10    # "which":I
    .restart local v9    # "which":I
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .line 403
    :goto_2
    array-length v11, v5

    if-lt v9, v11, :cond_1

    .line 404
    add-int/lit8 v11, v9, 0xa

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 362
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v10, v9

    .end local v9    # "which":I
    .restart local v10    # "which":I
    goto :goto_0

    .line 376
    .restart local v0    # "big":Ljava/math/BigInteger;
    :cond_2
    const-wide/32 v12, 0x7fffffff

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 377
    const/4 v11, 0x0

    return-object v11

    .line 379
    :cond_3
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v5, v10

    goto :goto_1

    .line 383
    .end local v0    # "big":Ljava/math/BigInteger;
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_4
    const/4 v6, 0x0

    .line 384
    .local v6, "retval":I
    move v3, v1

    .local v3, "j":I
    :goto_3
    if-gt v3, v2, :cond_5

    .line 385
    shl-int/lit8 v6, v6, 0x7

    .line 386
    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v8, v11, v3

    .line 387
    .local v8, "tmp":B
    and-int/lit8 v11, v8, 0x7f

    or-int/2addr v6, v11

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 389
    .end local v8    # "tmp":B
    :cond_5
    if-nez v1, :cond_7

    .line 390
    const/16 v11, 0x50

    if-ge v6, v11, :cond_6

    .line 391
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    div-int/lit8 v11, v6, 0x28

    aput v11, v5, v10

    .line 392
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "which":I
    .restart local v10    # "which":I
    rem-int/lit8 v11, v6, 0x28

    aput v11, v5, v9

    move v9, v10

    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_1

    .line 394
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_6
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    const/4 v11, 0x2

    aput v11, v5, v10

    .line 395
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "which":I
    .restart local v10    # "which":I
    add-int/lit8 v11, v6, -0x50

    aput v11, v5, v9

    move v9, v10

    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_1

    .line 398
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_7
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "which":I
    .restart local v9    # "which":I
    aput v6, v5, v10

    goto :goto_1

    .line 407
    .end local v3    # "j":I
    .end local v6    # "retval":I
    .end local v9    # "which":I
    .restart local v10    # "which":I
    :cond_8
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    return-object v11

    :cond_9
    move v9, v10

    .end local v10    # "which":I
    .restart local v9    # "which":I
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0x2e

    .line 418
    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 419
    .local v6, "s":Ljava/lang/String;
    if-nez v6, :cond_8

    .line 420
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    array-length v4, v9

    .line 421
    .local v4, "length":I
    new-instance v7, Ljava/lang/StringBuffer;

    mul-int/lit8 v9, v4, 0x4

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 423
    .local v7, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 424
    .local v1, "fromPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_7

    .line 425
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_1

    .line 427
    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 430
    :cond_0
    sub-int v9, v2, v1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    if-le v9, v10, :cond_3

    .line 431
    new-instance v0, Ljava/math/BigInteger;

    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    sub-int v10, v2, v1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x7

    const/16 v12, 0x8

    invoke-static {v9, v1, v10, v11, v12}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/math/BigInteger;-><init>([B)V

    .line 432
    .local v0, "big":Ljava/math/BigInteger;
    if-nez v1, :cond_2

    .line 435
    const-string/jumbo v9, "2."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-wide/16 v10, 0x50

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 460
    .end local v0    # "big":Ljava/math/BigInteger;
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .line 424
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .restart local v0    # "big":Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 441
    .end local v0    # "big":Ljava/math/BigInteger;
    :cond_3
    const/4 v5, 0x0

    .line 442
    .local v5, "retval":I
    move v3, v1

    .local v3, "j":I
    :goto_2
    if-gt v3, v2, :cond_4

    .line 443
    shl-int/lit8 v5, v5, 0x7

    .line 444
    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v8, v9, v3

    .line 445
    .local v8, "tmp":B
    and-int/lit8 v9, v8, 0x7f

    or-int/2addr v5, v9

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 447
    .end local v8    # "tmp":B
    :cond_4
    if-nez v1, :cond_6

    .line 448
    const/16 v9, 0x50

    if-ge v5, v9, :cond_5

    .line 449
    div-int/lit8 v9, v5, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    rem-int/lit8 v9, v5, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 453
    :cond_5
    const-string/jumbo v9, "2."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    add-int/lit8 v9, v5, -0x50

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 457
    :cond_6
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 463
    .end local v3    # "j":I
    .end local v5    # "retval":I
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    iput-object v6, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    .line 466
    .end local v1    # "fromPos":I
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    return-object v6
.end method
