.class public Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;
.super Ljava/lang/Object;
.source "DFAContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# static fields
.field private static final DEBUG_VALIDATE_CONTENT:Z

.field private static fEOCString:Ljava/lang/String;

.field private static fEpsilonString:Ljava/lang/String;


# instance fields
.field private fEOCPos:I

.field private fElemMap:[Lmf/org/apache/xerces/xni/QName;

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fEmptyContentIsValid:Z

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fLeafCount:I

.field private fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

.field private fLeafListType:[I

.field private fMixed:Z

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "<<CMNODE_EPSILON>>"

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    const-string/jumbo v0, "<<CMNODE_EOC>>"

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTableSize:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    iput p2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fMixed:Z

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-void
.end method

.method private buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v5, v6, v8}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    new-instance v5, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->setPosition(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    new-array v4, v4, [Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    new-array v4, v4, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-instance v6, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-direct {v6, v7}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    new-array v4, v4, [Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v5, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    new-instance v6, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v6}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v6

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v4, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v7, v7, v4

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-eq v4, v7, :cond_2

    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    aget-object v4, v4, v7

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    aget v7, v7, v5

    aput v7, v4, v6

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    add-int/2addr v4, v5

    new-array v13, v4, [I

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v7, v4

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v7, v4, :cond_6

    const/4 v4, 0x0

    move v6, v4

    move v4, v5

    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v6, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v8, v8, v7

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v5, v8, :cond_4

    :goto_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v4, 0x1

    aput v6, v13, v4

    move v4, v5

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v4, 0x1

    const/4 v6, -0x1

    aput v6, v13, v4

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    mul-int/lit8 v9, v4, 0x4

    new-array v8, v9, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-array v4, v9, [Z

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    new-array v4, v9, [[I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->makeDefStateList()[I

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v6, 0x0

    aput-object v5, v8, v6

    const/4 v7, 0x1

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :goto_7
    if-ge v4, v7, :cond_e

    aget-object v15, v8, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    aget-object v16, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEOCPos:I

    invoke-virtual {v15, v6}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v6

    aput-boolean v6, v5, v4

    add-int/lit8 v12, v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v10, v4

    move-object v4, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v5

    :goto_8
    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v10, v5, :cond_f

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    move-object v5, v4

    :goto_9
    add-int/lit8 v11, v9, 0x1

    aget v4, v13, v9

    :goto_a
    const/4 v9, -0x1

    if-eq v4, v9, :cond_9

    invoke-virtual {v15, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v9

    if-nez v9, :cond_8

    :goto_b
    add-int/lit8 v9, v11, 0x1

    aget v4, v13, v11

    move v11, v9

    goto :goto_a

    :cond_7
    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    move-object v5, v4

    goto :goto_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v4, v9, v4

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_b

    :cond_9
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v7

    move v7, v8

    :goto_c
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v9, v11

    move v8, v7

    move-object v7, v4

    move-object v4, v5

    goto :goto_8

    :cond_a
    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_d
    if-eq v4, v6, :cond_c

    :goto_e
    aput v4, v16, v10

    if-eq v6, v8, :cond_d

    move-object v4, v7

    move v7, v8

    goto :goto_c

    :cond_b
    move v4, v6

    goto :goto_d

    :cond_c
    aput-object v5, v7, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->makeDefStateList()[I

    move-result-object v17

    aput-object v17, v9, v6

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_e

    :cond_d
    int-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v9, v0

    new-array v4, v9, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-array v0, v9, [Z

    move-object/from16 v17, v0

    new-array v0, v9, [[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v0, v4, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v7, v0, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v7, v0, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move v7, v9

    goto/16 :goto_c

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    check-cast v4, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    return-void

    :cond_f
    move v4, v12

    move v9, v8

    move-object v8, v7

    move v7, v6

    goto/16 :goto_7
.end method

.method private calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    move v0, v1

    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v0, v1, :cond_2

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_1
.end method

.method private dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 4

    const/4 v3, 0x4

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

    if-ne v0, v3, :cond_2

    :cond_1
    if-eq v0, v3, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Seq Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_4

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

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    :goto_3
    return-void

    :cond_2
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Choice Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Rep Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_6

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

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_3

    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Leaf: (pos="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "(elemIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

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

    if-nez v0, :cond_8

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

    :cond_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private makeDefStateList()[I
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v2, v2, v0}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    new-instance v3, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->getPosition()I

    move-result v0

    invoke-direct {v3, v1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lmf/org/apache/xerces/xni/QName;I)V

    aput-object v3, v2, p2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v1

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    :cond_1
    :goto_0
    return p2

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_3
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result v0

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result p2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_5
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)I

    move-result p2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ImplementationMessages.VAL_NIICM: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->getElement()Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafList:[Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    aput-object p1, v0, p2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    aput v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 8

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    move v4, v0

    move v3, v0

    :goto_0
    if-ge v4, p3, :cond_c

    add-int v2, p2, v4

    aget-object v5, p1, v2

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fMixed:Z

    if-nez v2, :cond_4

    :cond_0
    move v2, v0

    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    aget v6, v6, v2

    and-int/lit8 v6, v6, 0xf

    if-eqz v6, :cond_6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_8

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    const/4 v7, 0x7

    if-eq v6, v7, :cond_a

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    if-nez v2, :cond_3

    :goto_3
    return v0

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    iget-object v2, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v6, v6, v2

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v7, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v6, v7, :cond_1

    :cond_7
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-eq v2, v5, :cond_b

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    aget-object v3, v5, v3

    aget v2, v3, v2

    if-ne v2, v1, :cond_5

    return v4

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v6, v6, v2

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v7, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v6, v7, :cond_7

    goto :goto_2

    :cond_9
    iget-object v6, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fElemMap:[Lmf/org/apache/xerces/xni/QName;

    aget-object v6, v6, v2

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v6, v7, :cond_7

    goto :goto_2

    :cond_b
    return v4

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_d

    return v1

    :cond_d
    return p3
.end method
