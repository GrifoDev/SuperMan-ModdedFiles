.class public Lmf/org/apache/xerces/impl/xs/models/XSDFACM;
.super Ljava/lang/Object;
.source "XSDFACM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_VALIDATE_CONTENT:Z

.field private static time:J


# instance fields
.field private fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

.field private fElemMap:[Ljava/lang/Object;

.field private fElemMapId:[I

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fIsCompactedForUPA:Z

.field private fLeafCount:I

.field private fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

.field private fLeafListType:[I

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->time:J

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTableSize:I

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-void
.end method

.method private buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 24

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-instance v4, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v6, v7}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    new-instance v5, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    const/16 v6, 0x66

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0, v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-instance v6, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-direct {v6, v7}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v4

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v6, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v7, v4, v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v7

    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v4, v8, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    aget v8, v8, v4

    if-eq v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-eq v4, v8, :cond_2

    :goto_3
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v9, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    instance-of v8, v4, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    if-nez v8, :cond_3

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aget v9, v9, v6

    aput v9, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    aput v7, v4, v8

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    :goto_5
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-instance v9, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    move-object/from16 v0, p0

    iget v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    invoke-direct {v9, v4, v10}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;-><init>(Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;I)V

    aput-object v9, v5, v8

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v5, v5, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    add-int/2addr v4, v6

    new-array v15, v4, [I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v8, v4

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v8, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    aget v9, v4, v8

    const/4 v4, 0x0

    move v7, v4

    move v4, v6

    :goto_7
    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v7, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v6

    if-eq v9, v6, :cond_6

    :goto_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_7

    :cond_6
    add-int/lit8 v6, v4, 0x1

    aput v7, v15, v4

    move v4, v6

    goto :goto_8

    :cond_7
    add-int/lit8 v6, v4, 0x1

    const/4 v7, -0x1

    aput v7, v15, v4

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    mul-int/lit8 v10, v4, 0x4

    new-array v9, v10, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-array v4, v10, [Z

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    new-array v4, v10, [[I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v7, 0x0

    aput-object v6, v9, v7

    const/4 v8, 0x1

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    :goto_9
    if-ge v4, v8, :cond_10

    aget-object v17, v9, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v18, v6, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v7

    aput-boolean v7, v6, v4

    add-int/lit8 v13, v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v11, v4

    move-object v4, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v6

    :goto_a
    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v11, v6, :cond_15

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    move-object v6, v4

    :goto_b
    add-int/lit8 v12, v10, 0x1

    aget v4, v15, v10

    :goto_c
    const/4 v10, -0x1

    if-eq v4, v10, :cond_b

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v10

    if-nez v10, :cond_a

    :goto_d
    add-int/lit8 v10, v12, 0x1

    aget v4, v15, v12

    move v12, v10

    goto :goto_c

    :cond_9
    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-direct {v4, v6}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    move-object v6, v4

    goto :goto_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v4, v10, v4

    invoke-virtual {v6, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_d

    :cond_b
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, v8

    move v8, v9

    :goto_e
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move v10, v12

    move v9, v8

    move-object v8, v4

    move-object v4, v6

    goto :goto_a

    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_f
    if-eq v4, v7, :cond_e

    :goto_10
    aput v4, v18, v11

    if-eq v7, v9, :cond_f

    move-object v4, v8

    move v8, v9

    goto :goto_e

    :cond_d
    move v4, v7

    goto :goto_f

    :cond_e
    aput-object v6, v8, v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v19

    aput-object v19, v10, v7

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_10

    :cond_f
    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff8000000000000L    # 1.5

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v10, v0

    new-array v4, v10, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-array v0, v10, [Z

    move-object/from16 v19, v0

    new-array v0, v10, [[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v8, v0, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v8, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v8, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move v8, v10

    goto/16 :goto_e

    :cond_10
    if-nez v5, :cond_12

    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    return-void

    :cond_12
    new-array v4, v8, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    const/4 v4, 0x0

    move v6, v4

    :goto_11
    if-ge v6, v8, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v7, v4, v6

    const/4 v4, 0x0

    :goto_12
    array-length v9, v7

    if-ge v4, v9, :cond_14

    aget v9, v7, v4

    if-eq v6, v9, :cond_13

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v5, v4

    aput-object v4, v7, v6

    :cond_14
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_11

    :cond_15
    move v4, v13

    move v10, v9

    move-object v9, v8

    move v8, v7

    goto/16 :goto_9
.end method

.method private calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    move v0, v1

    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v0, v1, :cond_2

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_1
.end method

.method private dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Seq Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    :goto_3
    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Choice Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Rep Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_3

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Leaf: (pos="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "(elemIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_5

    :sswitch_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Any Node: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method private makeDefStateList()[I
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object p1, v1, v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v3, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_3
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    if-eq v0, v2, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object p1, v1, v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v2, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-array v5, v10, [I

    aput v0, v5, v2

    aput v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v6, v2

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    array-length v1, v1

    if-lt v6, v1, :cond_1

    :cond_0
    move v4, v2

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v4, v1, :cond_d

    move v1, v2

    :goto_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v1, v5, :cond_c

    aget-object v5, v0, v4

    aget-byte v5, v5, v1

    if-eq v5, v3, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v1, v1, v6

    if-eqz v1, :cond_0

    move v5, v2

    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v5, v1, :cond_a

    add-int/lit8 v1, v5, 0x1

    move v4, v1

    :goto_4
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v4, v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v1, v1, v6

    aget v1, v1, v5

    if-ne v1, v9, :cond_3

    :cond_2
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v1, v1, v6

    aget v1, v1, v4

    if-eq v1, v9, :cond_2

    aget-object v1, v0, v5

    aget-byte v1, v1, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v1, v5

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v7, v7, v4

    invoke-static {v1, v7, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, v0, v5

    aput-byte v9, v1, v4

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v1, :cond_6

    :cond_5
    aget-object v1, v0, v5

    aput-byte v3, v1, v4

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v8, v1, v6

    if-eqz v8, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v1, v1, v6

    aget v1, v1, v5

    if-eq v1, v6, :cond_7

    move v1, v2

    :goto_6
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v7, v7, v6

    aget v7, v7, v4

    if-eq v7, v6, :cond_8

    move v7, v2

    :goto_7
    xor-int/2addr v1, v7

    if-eqz v1, :cond_5

    iget v1, v8, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    iget v7, v8, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-ne v1, v7, :cond_5

    aget-object v1, v0, v5

    aput-byte v9, v1, v4

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    move v7, v3

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v5, "cos-nonambig"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-direct {v0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_c
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    :cond_d
    move v1, v2

    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, v1

    if-eq v0, v10, :cond_e

    :goto_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    :cond_f
    return v3

    :cond_10
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v10, :cond_f

    goto :goto_9

    :cond_11
    return v2
.end method

.method public endContentModel([I)Z
    .locals 3

    const/4 v2, 0x0

    aget v0, p1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    aget v1, p1, v1

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge v1, v0, :cond_1

    return v2
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v1

    return-object v0

    :cond_3
    return-object v3
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    aget v5, p2, v2

    move-object v1, v0

    move v0, v2

    :goto_0
    add-int/lit8 p4, p4, 0x1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge p4, v3, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v0, v0, v5

    aget v3, v0, p4

    if-eq v3, v7, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, p4

    if-eq v0, v4, :cond_1

    if-eq v0, v8, :cond_2

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, p4

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, p4

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, p4

    :cond_4
    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-eq p4, v1, :cond_5

    aput v3, p2, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v3

    if-nez v1, :cond_6

    :goto_2
    return-object v0

    :cond_5
    aget v0, p2, v2

    aput v0, p2, v4

    aput v7, p2, v2

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-eq p4, v1, :cond_7

    :goto_3
    aput v2, p2, v8

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    move v3, v0

    move-object v0, v1

    goto :goto_1
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    return v0
.end method

.method public isFinalState(I)Z
    .locals 1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v0, v0, p1

    :cond_0
    return v0
.end method

.method public occurenceInfo([I)[I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    aget v0, p1, v3

    if-ltz v0, :cond_2

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    aput v2, v1, v3

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    aput v2, v1, v4

    aget v2, p1, v5

    aput v2, v1, v5

    const/4 v2, 0x3

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    aput v0, v1, v2

    return-object v1

    :cond_2
    aget v0, p1, v4

    goto :goto_0
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 10

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v3, 0x0

    aget v6, p2, v3

    if-ne v6, v8, :cond_1

    :cond_0
    if-eq v6, v8, :cond_3

    :goto_0
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, -0x2

    if-eq v6, v0, :cond_0

    move v2, v3

    move v0, v3

    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v2, v4, :cond_10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v0, v0, v6

    aget v4, v0, v2

    if-eq v4, v8, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, v2

    if-eq v0, v5, :cond_5

    if-eq v0, v9, :cond_7

    move-object v0, v1

    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1

    :cond_3
    const/4 v0, -0x2

    aput v0, p2, v3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-eq v2, v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v1, :cond_a

    :cond_6
    :goto_4
    aput v4, p2, v3

    return-object v0

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v2

    goto :goto_3

    :cond_9
    aget v0, p2, v3

    aput v0, p2, v5

    aput v8, p2, v3

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v6

    if-nez v1, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v4

    if-eqz v1, :cond_6

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-eq v2, v1, :cond_b

    move v5, v3

    :cond_b
    aput v5, p2, v9

    goto :goto_4

    :cond_c
    if-eq v6, v4, :cond_d

    aget v6, p2, v9

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-lt v6, v1, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v4

    if-eqz v1, :cond_6

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-eq v2, v1, :cond_f

    move v1, v3

    :goto_5
    aput v1, p2, v9

    goto :goto_4

    :cond_d
    aget v5, p2, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, p2, v9

    iget v6, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-le v5, v6, :cond_6

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-eq v1, v8, :cond_6

    invoke-virtual {p0, p1, p2, p3, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    aget v0, p2, v3

    aput v0, p2, v5

    aput v8, p2, v3

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    move v1, v5

    goto :goto_5

    :cond_10
    move v4, v0

    move-object v0, v1

    goto :goto_3
.end method

.method public startContentModel()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    return-object v0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v0, p1, v2

    if-ltz v0, :cond_1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v3, :cond_2

    :goto_1
    const/4 v3, 0x2

    aget v3, p1, v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :goto_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v5, v5, v0

    aget v5, v5, v2

    if-ne v5, v6, :cond_3

    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    :cond_4
    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eq v0, v5, :cond_6

    iget v5, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-lt v3, v5, :cond_0

    goto :goto_4

    :cond_6
    iget v5, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-lt v3, v5, :cond_4

    iget v5, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-ne v5, v6, :cond_0

    goto :goto_4

    :cond_7
    return-object v4
.end method
