.class final Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;
.super Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.source "BalancedDTDGrammar.java"


# instance fields
.field private fDepth:I

.field private fGroupIndexStack:[[I

.field private fGroupIndexStackSizes:[I

.field private fMixed:Z

.field private fOpStack:[S


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    return-void
.end method

.method private addContentSpecNodes(II)I
    .locals 3

    if-eq p1, p2, :cond_0

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-short v1, v1, v2

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v0, v0, v1

    aget v0, v0, p1

    return v0
.end method

.method private addToCurrentGroup(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v3, v1, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, v1, v2

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eq v3, v1, :cond_1

    :goto_0
    aput p1, v0, v3

    return-void

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput-object v0, v1, v2

    goto :goto_0

    :cond_1
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    array-length v2, v0

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput-object v1, v0, v2

    move-object v0, v1

    goto :goto_0
.end method

.method private initializeContentModelStacks()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v2, -0x1

    aput-short v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput v3, v0, v1

    return-void

    :cond_0
    new-array v0, v1, [S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    goto :goto_0
.end method


# virtual methods
.method protected final addContentSpecToElement(Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    aget v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->setContentSpecIndex(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    aget-object v0, v0, v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addToCurrentGroup(I)V

    return-void
.end method

.method public final endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    return-void
.end method

.method public final endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addToCurrentGroup(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v0

    goto :goto_0
.end method

.method public final occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v5, :cond_2

    if-eq p1, v6, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {p0, v6, v2, v4}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {p0, v5, v2, v4}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    goto :goto_0
.end method

.method public final pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    return-void
.end method

.method public final separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v2, 0x4

    aput-short v2, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v2, 0x5

    aput-short v2, v0, v1

    goto :goto_0
.end method

.method public final startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->initializeContentModelStacks()V

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public final startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->initializeContentModelStacks()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    return-void
.end method
