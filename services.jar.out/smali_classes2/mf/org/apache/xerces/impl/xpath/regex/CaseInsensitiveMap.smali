.class final Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;
.super Ljava/lang/Object;
.source "CaseInsensitiveMap.java"


# static fields
.field private static CHUNK_MASK:I

.field private static CHUNK_SHIFT:I

.field private static CHUNK_SIZE:I

.field private static INITIAL_CHUNK_COUNT:I

.field private static LOWER_CASE_MATCH:I

.field private static UPPER_CASE_MATCH:I

.field private static caseInsensitiveMap:[[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0xa

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    shl-int v0, v1, v0

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    const/16 v0, 0x40

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    sput v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    const/4 v0, 0x2

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->buildCaseInsensitiveMap()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCaseInsensitiveMap()V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    const-class v3, [I

    new-array v5, v4, [I

    aput v0, v5, v2

    aput v1, v5, v8

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    move v1, v2

    :goto_0
    const/high16 v0, 0x10000

    if-ge v1, v0, :cond_7

    int-to-char v0, v1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    int-to-char v0, v1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v3, v5, :cond_2

    :cond_0
    new-array v0, v4, [I

    if-ne v3, v1, :cond_3

    move v3, v2

    :goto_1
    if-ne v5, v1, :cond_5

    :cond_1
    :goto_2
    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_0

    goto :goto_3

    :cond_3
    aput v3, v0, v2

    sget v6, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    aput v6, v0, v8

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v6

    if-nez v6, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    sget v7, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    invoke-static {v1, v0, v3, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v0

    move v3, v4

    goto :goto_1

    :cond_5
    array-length v6, v0

    if-eq v3, v6, :cond_6

    :goto_4
    add-int/lit8 v6, v3, 0x1

    aput v5, v0, v3

    add-int/lit8 v3, v6, 0x1

    sget v3, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    aput v3, v0, v6

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v3

    if-eqz v3, :cond_1

    sget v6, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    invoke-static {v1, v0, v5, v3, v6}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-static {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandMap([II)[I

    move-result-object v0

    goto :goto_4

    :cond_7
    return-void
.end method

.method private static contains([II)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget v2, p0, v0

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private static contains([III)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget v2, p0, v0

    if-eq v2, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    if-ne v2, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private static expandAndAdd([III)[I
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    return-object v1
.end method

.method private static expandMap([II)[I
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    add-int v1, v0, p1

    new-array v1, v1, [I

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static get(I)[I
    .locals 1

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static getMapping(I)[I
    .locals 3

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v0

    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int/2addr v1, p0

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static set(I[I)V
    .locals 3

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v0

    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int/2addr v1, p0

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v0, v2, v0

    aput-object p1, v0, v1

    return-void
.end method

.method private static updateMap(I[II[II)[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    aget v2, p3, v1

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v3, p2, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([III)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v3, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    goto :goto_2

    :cond_3
    invoke-static {p3, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p3, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v1

    invoke-static {p2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    goto :goto_3
.end method
