.class public final Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;
.super Ljava/lang/Object;
.source "DTDGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "QNameHashtable"
.end annotation


# static fields
.field private static final HASHTABLE_SIZE:I = 0x65

.field private static final INITIAL_BUCKET_SIZE:I = 0x4


# instance fields
.field private fHashTable:[[Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x65

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v4, v1, v0

    if-eqz v4, :cond_0

    aget-object v0, v4, v2

    check-cast v0, [I

    aget v5, v0, v2

    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v0, v4, v3

    check-cast v0, Ljava/lang/String;

    if-eq v0, p1, :cond_1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    add-int/lit8 v0, v3, 0x1

    aget-object v0, v4, v0

    check-cast v0, [I

    aget v0, v0, v2

    return v0

    :cond_2
    return v6
.end method

.method public put(Ljava/lang/String;I)V
    .locals 8

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v4, v0, 0x65

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v1, v0, v4

    if-eqz v1, :cond_0

    aget-object v0, v1, v3

    check-cast v0, [I

    aget v6, v0, v3

    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v7, v0, 0x1

    array-length v0, v1

    if-eq v7, v0, :cond_2

    :goto_0
    move v4, v3

    move v5, v2

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v5

    check-cast v0, Ljava/lang/String;

    if-eq v0, p1, :cond_3

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    new-array v1, v2, [I

    aput v2, v1, v3

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    new-array v1, v2, [I

    aput p2, v1, v3

    aput-object v1, v0, v5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aput-object v0, v1, v4

    :cond_1
    :goto_2
    return-void

    :cond_2
    add-int/lit8 v0, v6, 0x4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aput-object v0, v1, v4

    move-object v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v5, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    aput p2, v0, v3

    move v0, v2

    :goto_3
    if-nez v0, :cond_1

    add-int/lit8 v0, v7, 0x1

    aput-object p1, v1, v7

    new-array v2, v2, [I

    aput p2, v2, v3

    aput-object v2, v1, v0

    aget-object v0, v1, v3

    check-cast v0, [I

    add-int/lit8 v1, v6, 0x1

    aput v1, v0, v3

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3
.end method
