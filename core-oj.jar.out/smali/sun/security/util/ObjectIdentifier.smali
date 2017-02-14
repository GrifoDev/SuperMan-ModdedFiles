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

    const-class v0, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/util/ObjectIdentifier;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    const/16 v3, 0x2e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    new-array v14, v15, [B

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :cond_0
    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v15, -0x1

    if-ne v7, v15, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v10, v15, v13

    :goto_0
    const/16 v15, 0x9

    if-le v10, v15, :cond_4

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_2

    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    :goto_1
    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v15, -0x1

    if-ne v7, v15, :cond_0

    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    new-array v15, v12, [B

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v15, v1, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sub-int v10, v7, v13

    goto :goto_0

    :cond_2
    const/4 v15, 0x1

    if-ne v5, v15, :cond_3

    invoke-static {v8, v2}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(ILjava/math/BigInteger;)V

    mul-int/lit8 v15, v8, 0x28

    int-to-long v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_2
    invoke-static {v2, v14, v12}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    move-result v15

    add-int/2addr v12, v15

    goto :goto_1

    :cond_3
    invoke-static {v5, v2}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(ILjava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v9

    throw v9

    :cond_4
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-nez v5, :cond_5

    invoke-static {v11}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    move v8, v11

    goto :goto_1

    :cond_5
    const/4 v15, 0x1

    if-ne v5, v15, :cond_6

    invoke-static {v8, v11}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    mul-int/lit8 v15, v8, 0x28

    add-int/2addr v11, v15

    :goto_3
    invoke-static {v11, v14, v12}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v15

    add-int/2addr v12, v15

    goto :goto_1

    :cond_6
    invoke-static {v5, v11}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ObjectIdentifier() -- Invalid format: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getBytes([B)V

    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->check([B)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getByte()I

    move-result v1

    int-to-byte v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ObjectIdentifier() -- data isn\'t an object ID (tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getLength()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-virtual {p1, v1}, Lsun/security/util/DerInputStream;->getBytes([B)V

    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->check([B)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    iput-boolean v2, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    array-length v1, p1

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkCount(I)V

    aget v1, p1, v2

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->checkFirstComponent(I)V

    aget v1, p1, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Lsun/security/util/ObjectIdentifier;->checkSecondComponent(II)V

    const/4 v0, 0x2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {v0, v1}, Lsun/security/util/ObjectIdentifier;->checkOtherComponent(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-direct {p0, p1, v1}, Lsun/security/util/ObjectIdentifier;->init([II)V

    return-void
.end method

.method private static check([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "ObjectIdentifier() -- Invalid DER encoding, not ended"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    aget-byte v2, p0, v0

    const/16 v3, -0x80

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "ObjectIdentifier() -- Invalid DER encoding, useless extra octet detected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static checkCount(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Must be at least two oid components "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkFirstComponent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkFirstComponent(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkOtherComponent(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be non-negative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkOtherComponent(ILjava/math/BigInteger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectIdentifier() -- oid component #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be non-negative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkSecondComponent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x27

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkSecondComponent(ILjava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const-wide/16 v0, 0x27

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private init([II)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    mul-int/lit8 v4, p2, 0x5

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [B

    aget v4, p1, v8

    aget v5, p1, v7

    mul-int/lit8 v5, v5, 0x28

    const v6, 0x7fffffff

    sub-int v5, v6, v5

    if-ge v4, v5, :cond_0

    aget v4, p1, v7

    mul-int/lit8 v4, v4, 0x28

    aget v5, p1, v8

    add-int/2addr v4, v5

    invoke-static {v4, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    :goto_0
    const/4 v1, 0x2

    :goto_1
    if-ge v1, p2, :cond_1

    aget v4, p1, v1

    invoke-static {v4, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    aget v4, p1, v8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    aget v4, p1, v7

    mul-int/lit8 v4, v4, 0x28

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lsun/security/util/ObjectIdentifier;->pack7Oid(Ljava/math/BigInteger;[BI)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    goto :goto_0

    :cond_1
    new-array v4, v2, [B

    iput-object v4, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iget-object v4, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method public static newInternal([I)Lsun/security/util/ObjectIdentifier;
    .locals 2

    :try_start_0
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, p0}, Lsun/security/util/ObjectIdentifier;-><init>([I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static pack([BIIII)[B
    .locals 10

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

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

    :cond_3
    if-ne p3, p4, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    return-object v5

    :cond_4
    mul-int v0, p2, p3

    add-int v5, v0, p4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, p4

    new-array v4, v5, [B

    const/4 v2, 0x0

    add-int v5, v0, p4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, p4

    mul-int/2addr v5, p4

    sub-int v3, v5, v0

    :goto_1
    if-ge v2, v0, :cond_6

    rem-int v5, v2, p3

    sub-int v1, p3, v5

    rem-int v5, v3, p4

    sub-int v5, p4, v5

    if-le v1, v5, :cond_5

    rem-int v5, v3, p4

    sub-int v1, p4, v5

    :cond_5
    div-int v5, v3, p4

    aget-byte v7, v4, v5

    div-int v8, v2, p3

    add-int/2addr v8, p1

    aget-byte v8, p0, v8

    add-int/lit16 v8, v8, 0x100

    rem-int v9, v2, p3

    sub-int v9, p3, v9

    sub-int/2addr v9, v1

    shr-int/2addr v8, v9

    shl-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    rem-int v9, v3, p4

    sub-int v9, p4, v9

    sub-int/2addr v9, v1

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/2addr v2, v1

    add-int/2addr v3, v1

    goto :goto_1

    :cond_6
    return-object v4
.end method

.method private static pack7Oid(I[BI)I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    new-array v0, v4, [B

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    invoke-static {v0, v3, v4, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    move-result v1

    return v1
.end method

.method private static pack7Oid(Ljava/math/BigInteger;[BI)I
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lsun/security/util/ObjectIdentifier;->pack7Oid([BII[BI)I

    move-result v1

    return v1
.end method

.method private static pack7Oid([BII[BI)I
    .locals 5

    const/16 v3, 0x8

    const/4 v4, 0x7

    invoke-static {p0, p1, p2, v3, v4}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    array-length v3, v2

    add-int/lit8 v1, v3, -0x2

    :goto_0
    if-ltz v1, :cond_1

    aget-byte v3, v2, v1

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    aget-byte v3, v2, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v2

    sub-int/2addr v3, v0

    return v3
.end method

.method private static pack8([BII[BI)I
    .locals 5

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-static {p0, p1, p2, v3, v4}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    array-length v3, v2

    add-int/lit8 v1, v3, -0x2

    :goto_0
    if-ltz v1, :cond_1

    aget-byte v3, v2, v1

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, p3, p4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v2

    sub-int/2addr v3, v0

    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    invoke-direct {p0, v0, v1}, Lsun/security/util/ObjectIdentifier;->init([II)V

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    array-length v1, v0

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->componentLen:I

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/util/ObjectIdentifier;->componentsCalculated:Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :cond_1
    sget-object v1, Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;->theOne:Lsun/security/util/ObjectIdentifier$HugeOidNotSupportedByOldJDK;

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->components:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(B[B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v1, p1, Lsun/security/util/ObjectIdentifier;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    iget-object v2, v0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toIntArray()[I
    .locals 15

    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    array-length v4, v11

    const/16 v11, 0x14

    new-array v5, v11, [I

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v10, v9

    :goto_0
    if-ge v2, v4, :cond_8

    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_9

    sub-int v11, v2, v1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x4

    if-le v11, v12, :cond_4

    new-instance v0, Ljava/math/BigInteger;

    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    sub-int v12, v2, v1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x7

    const/16 v14, 0x8

    invoke-static {v11, v1, v12, v13, v14}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/math/BigInteger;-><init>([B)V

    if-nez v1, :cond_2

    add-int/lit8 v9, v10, 0x1

    const/4 v11, 0x2

    aput v11, v5, v10

    const-wide/16 v12, 0x50

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/32 v12, 0x7fffffff

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    return-object v11

    :cond_0
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v5, v9

    move v9, v10

    :goto_1
    add-int/lit8 v1, v2, 0x1

    :goto_2
    array-length v11, v5

    if-lt v9, v11, :cond_1

    add-int/lit8 v11, v9, 0xa

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v10, v9

    goto :goto_0

    :cond_2
    const-wide/32 v12, 0x7fffffff

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v11, 0x0

    return-object v11

    :cond_3
    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v5, v10

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    move v3, v1

    :goto_3
    if-gt v3, v2, :cond_5

    shl-int/lit8 v6, v6, 0x7

    iget-object v11, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v8, v11, v3

    and-int/lit8 v11, v8, 0x7f

    or-int/2addr v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    if-nez v1, :cond_7

    const/16 v11, 0x50

    if-ge v6, v11, :cond_6

    add-int/lit8 v9, v10, 0x1

    div-int/lit8 v11, v6, 0x28

    aput v11, v5, v10

    add-int/lit8 v10, v9, 0x1

    rem-int/lit8 v11, v6, 0x28

    aput v11, v5, v9

    move v9, v10

    goto :goto_1

    :cond_6
    add-int/lit8 v9, v10, 0x1

    const/4 v11, 0x2

    aput v11, v5, v10

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v6, -0x50

    aput v11, v5, v9

    move v9, v10

    goto :goto_1

    :cond_7
    add-int/lit8 v9, v10, 0x1

    aput v6, v5, v10

    goto :goto_1

    :cond_8
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    return-object v11

    :cond_9
    move v9, v10

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    const/16 v13, 0x2e

    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    if-nez v6, :cond_8

    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    array-length v4, v9

    new-instance v7, Ljava/lang/StringBuffer;

    mul-int/lit8 v9, v4, 0x4

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_7

    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    sub-int v9, v2, v1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    if-le v9, v10, :cond_3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    sub-int v10, v2, v1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x7

    const/16 v12, 0x8

    invoke-static {v9, v1, v10, v11, v12}, Lsun/security/util/ObjectIdentifier;->pack([BIIII)[B

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/math/BigInteger;-><init>([B)V

    if-nez v1, :cond_2

    const-string/jumbo v9, "2."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v10, 0x50

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v2, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    move v3, v1

    :goto_2
    if-gt v3, v2, :cond_4

    shl-int/lit8 v5, v5, 0x7

    iget-object v9, p0, Lsun/security/util/ObjectIdentifier;->encoding:[B

    aget-byte v8, v9, v3

    and-int/lit8 v9, v8, 0x7f

    or-int/2addr v5, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-nez v1, :cond_6

    const/16 v9, 0x50

    if-ge v5, v9, :cond_5

    div-int/lit8 v9, v5, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v9, v5, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string/jumbo v9, "2."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v5, -0x50

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lsun/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    :cond_8
    return-object v6
.end method
