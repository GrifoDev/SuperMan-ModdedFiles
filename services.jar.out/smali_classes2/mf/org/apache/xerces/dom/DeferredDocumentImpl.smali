.class public Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
.super Lmf/org/apache/xerces/dom/DocumentImpl;
.source "DeferredDocumentImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;,
        Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    }
.end annotation


# static fields
.field protected static final CHUNK_MASK:I = 0x7ff

.field protected static final CHUNK_SHIFT:I = 0xb

.field protected static final CHUNK_SIZE:I = 0x800

.field private static final DEBUG_IDS:Z = false

.field private static final DEBUG_PRINT_REF_COUNTS:Z = false

.field private static final DEBUG_PRINT_TABLES:Z = false

.field protected static final INITIAL_CHUNK_COUNT:I = 0x20

.field private static final INIT_ARRAY:[I

.field static final serialVersionUID:J = 0x47f985d180d03de9L


# instance fields
.field private final transient fBufferStr:Ljava/lang/StringBuffer;

.field protected transient fIdCount:I

.field protected transient fIdElement:[I

.field protected transient fIdName:[Ljava/lang/String;

.field protected fNamespacesEnabled:Z

.field protected transient fNodeCount:I

.field protected transient fNodeExtra:[[I

.field protected transient fNodeLastChild:[[I

.field protected transient fNodeName:[[Ljava/lang/Object;

.field protected transient fNodeParent:[[I

.field protected transient fNodePrevSib:[[I

.field protected transient fNodeType:[[I

.field protected transient fNodeURI:[[Ljava/lang/Object;

.field protected transient fNodeValue:[[Ljava/lang/Object;

.field private final transient fStrChunks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x801

    new-array v0, v0, [I

    sput-object v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Z)V

    iput v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren(Z)V

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return-void
.end method

.method protected static binarySearch([IIII)I
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_4

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    aget v1, p0, v0

    if-eq v1, p3, :cond_1

    if-gt v1, p3, :cond_3

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    if-ne v1, p3, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-gtz v0, :cond_0

    :cond_2
    return v0

    :cond_3
    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method private final clearChunkIndex([[III)I
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x800

    const/4 v1, -0x1

    aget-object v0, p1, p2

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v0, p1, p2

    aget v0, v0, p3

    goto :goto_0

    :cond_2
    aget-object v2, p1, p2

    aget v3, v2, v4

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v4

    aget-object v2, p1, p2

    aput v1, v2, p3

    aget-object v1, p1, p2

    aget v1, v1, v4

    if-nez v1, :cond_0

    aput-object v5, p1, p2

    goto :goto_1
.end method

.method private final clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    aget-object v0, p1, p2

    if-nez v0, :cond_1

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    aget-object v0, p1, p2

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_2
    aget-object v0, p1, p2

    aput-object v2, v0, p3

    aget-object v0, p1, p2

    const/16 v3, 0x800

    aget-object v0, v0, v3

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    iget v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    iget v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v0, :cond_0

    aput-object v2, p1, p2

    goto :goto_1
.end method

.method private final createChunk([[II)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x801

    new-array v0, v0, [I

    aput-object v0, p1, p2

    sget-object v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    aget-object v1, p1, p2

    const/16 v2, 0x800

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private final createChunk([[Ljava/lang/Object;I)V
    .locals 3

    const/16 v0, 0x801

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v0, p1, p2

    aget-object v0, p1, p2

    const/16 v1, 0x800

    new-instance v2, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method

.method private final getChunkIndex([[III)I
    .locals 1

    aget-object v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    aget-object v0, p1, p2

    aget v0, v0, p3

    goto :goto_0
.end method

.method private final getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, p2

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p1, p2

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private final getNodeValue(II)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static print([IIIII)V
    .locals 0

    return-void
.end method

.method private final putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method private final setChunkIndex([[IIII)I
    .locals 4

    const/16 v3, 0x800

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    aget-object v0, p1, p3

    if-eqz v0, :cond_1

    :goto_0
    aget v1, v0, p4

    if-eq v1, v2, :cond_2

    :goto_1
    aput p2, v0, p4

    return v1

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    aget-object v0, p1, p3

    goto :goto_0

    :cond_2
    aget v2, v0, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    goto :goto_1
.end method

.method private final setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    aget-object v0, p1, p3

    if-eqz v0, :cond_1

    move-object v2, v0

    :goto_0
    aget-object v0, v2, p4

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_1
    aput-object p2, v2, p4

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    aget-object v0, p1, p3

    move-object v2, v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x800

    aget-object v1, v2, v1

    check-cast v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    iget v3, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    goto :goto_1
.end method


# virtual methods
.method public appendChild(II)V
    .locals 6

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    shr-int/lit8 v2, p2, 0xb

    and-int/lit16 v3, p2, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v4, p1, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public cloneNode(IZ)I
    .locals 10

    const/4 v2, -0x1

    const/4 v9, 0x0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    int-to-short v4, v3

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v4

    shr-int/lit8 v5, v4, 0xb

    and-int/lit16 v6, v4, 0x7ff

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    aget-object v8, v8, v0

    aget-object v8, v8, v1

    invoke-direct {p0, v7, v8, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v8, v8, v0

    aget-object v8, v8, v1

    invoke-direct {p0, v7, v8, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    aget-object v8, v8, v0

    aget-object v8, v8, v1

    invoke-direct {p0, v7, v8, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    aget-object v0, v7, v0

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    :goto_0
    if-nez p2, :cond_4

    :cond_0
    return v4

    :cond_1
    const/4 v1, 0x2

    if-ne v3, v1, :cond_3

    :cond_2
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, v0, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-eq v3, v1, :cond_2

    invoke-virtual {p0, v0, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v0

    move v1, v2

    :goto_2
    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v3

    invoke-virtual {p0, v4, v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    invoke-virtual {p0, v0, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v0

    move v1, v3

    goto :goto_2
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    shr-int/lit8 v2, v1, 0xb

    and-int/lit16 v3, v1, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p2, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p3, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    if-nez p4, :cond_0

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v0, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v1

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public createDeferredCDATASection(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredComment(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredDocument()I
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    return v0
.end method

.method public createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredElementDefinition(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    shr-int/lit8 v4, v3, 0xb

    and-int/lit16 v5, v3, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p4, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v1, v8, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v1, v8, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    shr-int/lit8 v2, v1, 0xb

    and-int/lit16 v3, v1, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v1, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    shr-int/lit8 v4, v3, 0xb

    and-int/lit16 v5, v3, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p4, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredTextNode(Ljava/lang/String;Z)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    shr-int/lit8 v2, v1, 0xb

    and-int/lit16 v3, v1, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    if-nez p2, :cond_0

    :goto_0
    invoke-direct {p0, v4, v0, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createNode(S)I
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    shr-int/lit8 v0, v0, 0xb

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    and-int/lit16 v1, v1, 0x7ff

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->ensureCapacity(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    return v0
.end method

.method protected ensureCapacity(I)V
    .locals 4

    const/16 v1, 0x20

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    array-length v0, v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    return-void

    :cond_0
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, p1, 0x2

    new-array v1, v0, [[I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    new-array v1, v0, [[Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    new-array v1, v0, [[Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    new-array v1, v0, [[I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    new-array v1, v0, [[I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    new-array v1, v0, [[I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    new-array v1, v0, [[Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    new-array v0, v0, [[I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-ne p1, v4, :cond_1

    :cond_0
    return-object v3

    :cond_1
    if-eqz p2, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_0
    if-eq v0, v4, :cond_3

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    if-eq v2, p2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v3
.end method

.method public getDeferredEntityBaseURI(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    invoke-static {}, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v0

    return v0
.end method

.method public getLastChild(IZ)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-nez p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    goto :goto_0
.end method

.method getNamespacesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return v0
.end method

.method public getNodeExtra(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    return v0
.end method

.method public getNodeExtra(IZ)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-nez p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    goto :goto_0
.end method

.method public getNodeIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName(IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-nez p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    if-eq p1, v3, :cond_1

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v5

    :cond_2
    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-nez v0, :cond_4

    new-instance v1, Lmf/org/apache/xerces/dom/DeferredAttrImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    :cond_3
    :goto_1
    if-nez v1, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredCommentImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredCommentImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :pswitch_4
    move-object v1, p0

    goto :goto_1

    :pswitch_5
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_1

    :pswitch_6
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-nez v0, :cond_6

    new-instance v1, Lmf/org/apache/xerces/dom/DeferredElementImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v6, v2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->binarySearch([IIII)I

    move-result v0

    move v2, v0

    :goto_3
    if-eq v2, v3, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v4, v0, v2

    if-nez v4, :cond_7

    :goto_4
    add-int/lit8 v0, v2, 0x1

    iget v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-lt v0, v4, :cond_8

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_2

    :cond_7
    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aput-object v5, v0, v2

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    add-int/lit8 v4, v2, 0x1

    aget v0, v0, v4

    if-ne v0, p1, :cond_5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :pswitch_7
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredEntityImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :pswitch_8
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :pswitch_9
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredNotationImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :pswitch_a
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_1

    :pswitch_b
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredTextImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredTextImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_1

    :pswitch_c
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_1

    :cond_9
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_b
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getNodeType(I)S
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v0

    return v0
.end method

.method public getNodeType(IZ)S
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-nez p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public getNodeURI(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeURI(IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-nez p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-nez p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNodeValueString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValueString(IZ)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-eq p1, v5, :cond_1

    shr-int/lit8 v1, p1, 0xb

    and-int/lit16 v2, p1, 0x7ff

    if-nez p2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    if-eq v1, v6, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    :cond_0
    return-object v0

    :cond_1
    return-object v3

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-object v3

    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(I)I

    move-result v1

    if-eq v1, v5, :cond_0

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_5
    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    if-eq v0, v5, :cond_6

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v1

    if-eq v1, v6, :cond_5

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object v0

    :cond_8
    invoke-virtual {p0, p1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_2
    if-eq v0, v5, :cond_9

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_a

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object v0
.end method

.method public getParentNode(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v0

    return v0
.end method

.method public getParentNode(IZ)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-nez p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    goto :goto_0
.end method

.method public getPrevSibling(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v0

    return v0
.end method

.method public getPrevSibling(IZ)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    shr-int/lit8 v1, p1, 0xb

    and-int/lit16 v0, p1, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    if-eq v2, v4, :cond_2

    shr-int/lit8 v1, v2, 0xb

    and-int/lit16 v0, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v3, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    if-eq v3, v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getRealPrevSibling(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v0

    return v0
.end method

.method public getRealPrevSibling(IZ)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-nez p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    goto :goto_0
.end method

.method public getTypeInfo(I)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    shr-int/lit8 v3, p1, 0xb

    and-int/lit16 v4, p1, 0x7ff

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    return-object v2

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aput-object v2, v0, v4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    const/16 v4, 0x800

    aget-object v0, v0, v4

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    iget v4, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    iget v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aput-object v2, v0, v3

    goto :goto_1
.end method

.method public insertBefore(III)I
    .locals 6

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    shr-int/lit8 v0, p2, 0xb

    and-int/lit16 v1, p2, 0x7ff

    shr-int/lit8 v2, p3, 0xb

    and-int/lit16 v3, p3, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, p2, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    return p2
.end method

.method public lookupElementDefinition(Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v0, v3, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_2

    shr-int/lit8 v2, v0, 0xb

    and-int/lit16 v3, v0, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    if-eq v0, v1, :cond_5

    shr-int/lit8 v2, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v3, v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_1
    if-eq v0, v1, :cond_0

    shr-int/lit8 v2, v0, 0xb

    and-int/lit16 v3, v0, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/16 v5, 0x15

    if-eq v4, v5, :cond_6

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_4

    return v0
.end method

.method public print()V
    .locals 0

    return-void
.end method

.method public putIdentifier(Ljava/lang/String;I)V
    .locals 4

    const/16 v1, 0x40

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    aput p2, v0, v1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    goto :goto_1
.end method

.method public setAsLastChild(II)V
    .locals 3

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public setAttributeNode(II)I
    .locals 12

    const/4 v2, -0x1

    shr-int/lit8 v5, p1, 0xb

    and-int/lit16 v6, p1, 0x7ff

    shr-int/lit8 v7, p2, 0xb

    and-int/lit16 v8, p2, 0x7ff

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v0, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    move v0, v2

    move v1, v2

    move v3, v2

    :goto_0
    if-eq v4, v2, :cond_0

    shr-int/lit8 v1, v4, 0xb

    and-int/lit16 v0, v4, 0x7ff

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v10, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v3, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_0

    :cond_0
    if-ne v4, v2, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v0, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, p2, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v1, v0, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v4

    :cond_1
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v9, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v9

    if-eq v3, v2, :cond_2

    shr-int/lit8 v2, v3, 0xb

    and-int/lit16 v3, v3, 0x7ff

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v10, v9, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v9, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_2
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    invoke-virtual {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    shr-int/lit8 v3, p1, 0xb

    and-int/lit16 v4, p1, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, v0, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v0

    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v6, v5, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_0
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I
    .locals 7

    invoke-virtual {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    shr-int/lit8 v3, p1, 0xb

    and-int/lit16 v4, p1, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v0, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    if-nez p6, :cond_1

    :goto_1
    if-nez p7, :cond_2

    :goto_2
    return v0

    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v6, v5, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_0

    :cond_1
    or-int/lit16 v3, v3, 0x200

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    shr-int/lit8 v4, v3, 0xb

    and-int/lit16 v5, v3, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v6, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p7, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    goto :goto_2
.end method

.method public setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p3, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    goto :goto_0
.end method

.method public setIdAttribute(I)V
    .locals 4

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public setIdAttributeNode(II)V
    .locals 4

    shr-int/lit8 v0, p2, 0xb

    and-int/lit16 v1, p2, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    return-void
.end method

.method public setInputEncoding(ILjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return-void
.end method

.method public setInternalSubset(ILjava/lang/String;)V
    .locals 6

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v3, v2, 0xb

    and-int/lit16 v4, v2, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p2, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return-void
.end method

.method setNamespacesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return-void
.end method

.method public setTypeInfo(ILjava/lang/Object;)V
    .locals 3

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return-void
.end method

.method protected synchronizeChildren()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    move v3, v0

    move-object v4, v1

    :goto_0
    const/4 v0, -0x1

    if-eq v3, v0, :cond_5

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v1, :cond_2

    iput-object v0, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object v2, v1

    :goto_1
    iput-object p0, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-eq v1, v6, :cond_3

    const/16 v4, 0xa

    if-eq v1, v4, :cond_4

    :goto_2
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    move v3, v1

    move-object v4, v0

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeData()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    goto :goto_2

    :cond_4
    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    :goto_3
    iput-boolean v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    return-void

    :cond_6
    iput-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto :goto_3
.end method

.method protected final synchronizeChildren(Lmf/org/apache/xerces/dom/AttrImpl;I)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getMutationEvents()Z

    move-result v4

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    if-eq v2, v7, :cond_0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-eq v2, v7, :cond_2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v1, :cond_1

    iput-object v0, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    :goto_2
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    return-void

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    goto :goto_2

    :cond_3
    iput-object v3, p1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto :goto_3
.end method

.method protected final synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getMutationEvents()Z

    move-result v4

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    move v2, v0

    move-object v3, v1

    :goto_0
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v1, :cond_0

    iput-object v0, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    return-void

    :cond_2
    iput-object v3, p1, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto :goto_2
.end method

.method protected synchronizeData()V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;

    invoke-direct {v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;-><init>()V

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v4, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    aget v3, v0, v4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v7, v0, v4

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->removeAllElements()V

    move v0, v3

    :cond_2
    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->addElement(I)V

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v5, v0

    move-object v2, p0

    :goto_1
    if-ltz v5, :cond_7

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->elementAt(I)I

    move-result v8

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_9

    instance-of v0, v1, Lmf/org/apache/xerces/dom/DeferredNode;

    if-nez v0, :cond_6

    :cond_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :cond_4
    move v1, v4

    :cond_5
    add-int/lit8 v4, v1, 0x1

    goto :goto_0

    :cond_6
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredNode;

    invoke-interface {v0}, Lmf/org/apache/xerces/dom/DeferredNode;->getNodeIndex()I

    move-result v0

    if-ne v0, v8, :cond_3

    :goto_3
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move-object v2, v1

    goto :goto_1

    :cond_7
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v7, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aput-object v9, v1, v4

    move v1, v4

    :cond_8
    :goto_4
    add-int/lit8 v2, v1, 0x1

    iget v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v2, v4, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    if-eqz v2, :cond_8

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto :goto_3
.end method
