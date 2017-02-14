.class public Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;
.super Lmf/org/apache/xerces/util/NamespaceSupport;
.source "MultipleScopeNamespaceSupport.java"


# instance fields
.field protected fCurrentScope:I

.field protected fScope:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aput v1, v0, v1

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aput v1, v0, v1

    return-void
.end method


# virtual methods
.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v1, v1, v2

    aget v0, v0, v1

    move v2, v0

    move v0, v3

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v1, v1, -0x2

    if-gt v2, v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    aget-object v5, v1, v2

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eq v6, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_3
    if-nez v1, :cond_2

    :goto_4
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v5, v6, v0

    move v0, v1

    goto :goto_4

    :cond_3
    new-instance v1, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lmf/org/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v1

    :cond_4
    move v1, v4

    goto :goto_3
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v3

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq p1, v0, :cond_2

    :goto_0
    if-le p2, p3, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    if-eq v0, p1, :cond_3

    :cond_0
    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    return-object v0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x2

    aget-object v0, v0, v1

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScopeForContext(I)I
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v3

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    :goto_0
    if-le p2, p3, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x2

    aget-object v0, v0, v1

    if-eq v0, p1, :cond_2

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public popScope()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->popContext()V

    return-void
.end method

.method public pushScope()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->pushContext()V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aput v2, v0, v1

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    return-void
.end method
