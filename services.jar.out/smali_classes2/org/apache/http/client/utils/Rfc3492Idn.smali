.class public Lorg/apache/http/client/utils/Rfc3492Idn;
.super Ljava/lang/Object;
.source "Rfc3492Idn.java"

# interfaces
.implements Lorg/apache/http/client/utils/Idn;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final ACE_PREFIX:Ljava/lang/String; = "xn--"

.field private static final base:I = 0x24

.field private static final damp:I = 0x2bc

.field private static final delimiter:C = '-'

.field private static final initial_bias:I = 0x48

.field private static final initial_n:I = 0x80

.field private static final skew:I = 0x26

.field private static final tmax:I = 0x1a

.field private static final tmin:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adapt(IIZ)I
    .locals 4

    move v0, p1

    if-nez p3, :cond_0

    div-int/lit8 v0, p1, 0x2

    :goto_0
    div-int v2, v0, p2

    add-int/2addr v0, v2

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x1c7

    if-gt v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x24

    add-int/lit8 v3, v0, 0x26

    div-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2

    :cond_0
    div-int/lit16 v0, p1, 0x2bc

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v0, 0x23

    add-int/lit8 v1, v1, 0x24

    goto :goto_1
.end method

.method private digit(C)I
    .locals 3

    const/16 v0, 0x41

    if-ge p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-ge p1, v0, :cond_4

    :cond_1
    const/16 v0, 0x30

    if-ge p1, v0, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x41

    return v0

    :cond_4
    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x61

    return v0

    :cond_5
    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x1a

    return v0
.end method


# virtual methods
.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v5, p1

    const/16 v8, 0x80

    const/4 v4, 0x0

    const/16 v1, 0x48

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v13, 0x2d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v13, -0x1

    if-ne v7, v13, :cond_0

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move v9, v4

    const/4 v12, 0x1

    const/16 v6, 0x24

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/http/client/utils/Rfc3492Idn;->digit(C)I

    move-result v3

    mul-int v13, v3, v12

    add-int/2addr v4, v13

    add-int/lit8 v13, v1, 0x1

    if-le v6, v13, :cond_2

    add-int/lit8 v13, v1, 0x1a

    if-ge v6, v13, :cond_3

    sub-int v11, v6, v1

    :goto_2
    if-lt v3, v11, :cond_4

    rsub-int/lit8 v13, v11, 0x24

    mul-int/2addr v12, v13

    add-int/lit8 v6, v6, 0x24

    goto :goto_1

    :cond_2
    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/16 v11, 0x1a

    goto :goto_2

    :cond_4
    sub-int v14, v4, v9

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v15, v13, 0x1

    if-eqz v9, :cond_5

    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v13}, Lorg/apache/http/client/utils/Rfc3492Idn;->adapt(IIZ)I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    div-int v13, v4, v13

    add-int/2addr v8, v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    rem-int/2addr v4, v13

    int-to-char v13, v8

    invoke-virtual {v10, v4, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v13, 0x1

    goto :goto_3
.end method

.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "."

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :goto_1
    const-string/jumbo v3, "xn--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/client/utils/Rfc3492Idn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
