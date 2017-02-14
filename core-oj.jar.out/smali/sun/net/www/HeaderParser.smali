.class public Lsun/net/www/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/HeaderParser$ParserIterator;
    }
.end annotation


# instance fields
.field asize:I

.field nkeys:I

.field raw:Ljava/lang/String;

.field tab:[[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lsun/net/www/HeaderParser;->asize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lsun/net/www/HeaderParser;->asize:I

    iput-object p1, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    new-array v1, v4, [I

    iget v2, p0, Lsun/net/www/HeaderParser;->asize:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    invoke-direct {p0}, Lsun/net/www/HeaderParser;->parse()V

    return-void
.end method

.method private parse()V
    .locals 14

    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v8, v2

    move v5, v4

    :goto_0
    if-ge v3, v8, :cond_d

    aget-char v1, v2, v3

    const/16 v10, 0x3d

    if-ne v1, v10, :cond_0

    if-eqz v7, :cond_4

    :cond_0
    const/16 v10, 0x22

    if-ne v1, v10, :cond_6

    if-eqz v7, :cond_5

    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v7, 0x0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v8, :cond_2

    aget-char v10, v2, v3

    const/16 v11, 0x20

    if-eq v10, v11, :cond_1

    aget-char v10, v2, v3

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_1

    :cond_2
    const/4 v6, 0x1

    move v0, v3

    :goto_1
    iget v10, p0, Lsun/net/www/HeaderParser;->asize:I

    if-ne v4, v10, :cond_3

    iget v10, p0, Lsun/net/www/HeaderParser;->asize:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, p0, Lsun/net/www/HeaderParser;->asize:I

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [I

    iget v12, p0, Lsun/net/www/HeaderParser;->asize:I

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x2

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    iget-object v11, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    array-length v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v12, v9, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v9, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v6, 0x0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move v4, v5

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move v4, v5

    goto :goto_1

    :cond_6
    const/16 v10, 0x20

    if-eq v1, v10, :cond_7

    const/16 v10, 0x2c

    if-ne v1, v10, :cond_c

    :cond_7
    if-eqz v7, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v6, :cond_a

    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    :goto_2
    if-ge v3, v8, :cond_b

    aget-char v10, v2, v3

    const/16 v11, 0x20

    if-eq v10, v11, :cond_9

    aget-char v10, v2, v3

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_b

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    goto :goto_2

    :cond_b
    const/4 v6, 0x1

    move v0, v3

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v3, v3, -0x1

    if-le v3, v0, :cond_11

    if-nez v6, :cond_10

    aget-char v10, v2, v3

    const/16 v11, 0x22

    if-ne v10, v11, :cond_f

    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    :goto_3
    iput v4, p0, Lsun/net/www/HeaderParser;->nkeys:I

    :cond_e
    return-void

    :cond_f
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    goto :goto_3

    :cond_10
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    goto :goto_3

    :cond_11
    if-ne v3, v0, :cond_14

    if-nez v6, :cond_13

    aget-char v10, v2, v3

    const/16 v11, 0x22

    if-ne v10, v11, :cond_12

    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    add-int/lit8 v11, v3, -0x1

    aget-char v11, v2, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    goto :goto_3

    :cond_12
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    aget-char v11, v2, v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    goto :goto_3

    :cond_13
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-object v10, v10, v5

    aget-char v11, v2, v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    goto :goto_3

    :cond_14
    move v4, v5

    goto :goto_3
.end method


# virtual methods
.method public findInt(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return p2
.end method

.method public findKey(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v0, p0, Lsun/net/www/HeaderParser;->asize:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public findValue(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lsun/net/www/HeaderParser;->asize:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public findValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lsun/net/www/HeaderParser;->asize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    return-object p2

    :cond_1
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public keys()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lsun/net/www/HeaderParser$ParserIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/net/www/HeaderParser$ParserIterator;-><init>(Lsun/net/www/HeaderParser;Z)V

    return-object v0
.end method

.method public subsequence(II)Lsun/net/www/HeaderParser;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget v1, p0, Lsun/net/www/HeaderParser;->nkeys:I

    if-ne p2, v1, :cond_0

    return-object p0

    :cond_0
    if-ltz p1, :cond_1

    if-lt p1, p2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid start or end"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v1, p0, Lsun/net/www/HeaderParser;->nkeys:I

    if-gt p2, v1, :cond_1

    new-instance v0, Lsun/net/www/HeaderParser;

    invoke-direct {v0}, Lsun/net/www/HeaderParser;-><init>()V

    const-class v1, Ljava/lang/String;

    new-array v2, v5, [I

    iget v3, p0, Lsun/net/www/HeaderParser;->asize:I

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, v0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/HeaderParser;->asize:I

    iput v1, v0, Lsun/net/www/HeaderParser;->asize:I

    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    iget-object v2, v0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    sub-int v3, p2, p1

    invoke-static {v1, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, p2, p1

    iput v1, v0, Lsun/net/www/HeaderParser;->nkeys:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lsun/net/www/HeaderParser;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lsun/net/www/HeaderParser;->asize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " nkeys="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lsun/net/www/HeaderParser;->nkeys:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun/net/www/HeaderParser;->findValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_2

    const-string/jumbo v5, ""

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string/jumbo v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v5
.end method

.method public values()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lsun/net/www/HeaderParser$ParserIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsun/net/www/HeaderParser$ParserIterator;-><init>(Lsun/net/www/HeaderParser;Z)V

    return-object v0
.end method
