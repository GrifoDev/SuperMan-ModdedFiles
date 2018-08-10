.class Landroid/widget/SemExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "SemExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListConnector$GroupMetadata;,
        Landroid/widget/SemExpandableListConnector$ItemDecorator;,
        Landroid/widget/SemExpandableListConnector$MyDataSetObserver;,
        Landroid/widget/SemExpandableListConnector$PositionMetadata;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mIsRegisteredObserver:Z

.field private mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/SemExpandableListConnector;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    new-instance v0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/SemExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13

    const/4 v9, 0x0

    const/4 v12, -0x1

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    iput v9, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    if-eqz p2, :cond_3

    const/4 v8, 0x0

    add-int/lit8 v5, v3, -0x1

    :goto_0
    if-ltz v5, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget-wide v10, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gId:J

    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v10, v11, v9}, Landroid/widget/SemExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    if-ne v7, v12, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_0
    iput v7, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    iget-object v9, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    :goto_2
    iget v9, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    iget v6, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    iput v0, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x2

    invoke-static {v3, p1, v4, v4}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    if-nez v1, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v2
.end method

.method collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v2}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetChanged()V

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    const/4 v0, 0x1

    return v0
.end method

.method expandGroup(I)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x2

    invoke-static {v3, p1, v4, v4}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v2
.end method

.method expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v3, :cond_1

    return v6

    :cond_1
    iget-object v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-eqz v3, :cond_2

    return v6

    :cond_2
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget v3, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v3}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    iget v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v3, v1, :cond_3

    iget v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    :cond_3
    iget v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    iget-object v4, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_4

    return v6

    :cond_4
    iget-object v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v4, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v5, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v5, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    invoke-static {v7, v7, v3, v4, v5}, Landroid/widget/SemExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, v6, v6}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetChanged()V

    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    const/4 v3, 0x1

    return v3
.end method

.method findGroupPosition(JI)I
    .locals 19

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v11}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v11, -0x1

    return v11

    :cond_0
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v11, p1, v14

    if-nez v11, :cond_1

    const/4 v11, -0x1

    return v11

    :cond_1
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v11, v3, -0x1

    move/from16 v0, p3

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x64

    add-long v4, v14, v16

    move/from16 v6, p3

    move/from16 v9, p3

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v11, -0x1

    return v11

    :cond_2
    if-nez v7, :cond_3

    if-eqz v10, :cond_9

    xor-int/lit8 v11, v8, 0x1

    if-eqz v11, :cond_9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 p3, v9

    const/4 v10, 0x0

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v11, v14, v4

    if-gtz v11, :cond_6

    move/from16 v0, p3

    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v12

    cmp-long v11, v12, p1

    if-nez v11, :cond_5

    return p3

    :cond_5
    add-int/lit8 v11, v3, -0x1

    if-ne v9, v11, :cond_7

    const/4 v8, 0x1

    :goto_1
    if-nez v6, :cond_8

    const/4 v7, 0x1

    :goto_2
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    :cond_6
    const/4 v11, -0x1

    return v11

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    :cond_9
    if-nez v8, :cond_a

    if-nez v10, :cond_4

    xor-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_4

    :cond_a
    add-int/lit8 v6, v6, -0x1

    move/from16 p3, v6

    const/4 v10, 0x1

    goto :goto_0
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/4 v13, 0x0

    add-int/lit8 v19, v22, -0x1

    const/4 v7, 0x0

    if-nez v22, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    :cond_0
    :goto_0
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    add-int/lit8 v13, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    add-int/lit8 v19, v7, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget v2, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    :cond_4
    const/4 v2, 0x0

    return-object v2

    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v2, 0x0

    return-object v2

    :cond_6
    if-le v13, v7, :cond_7

    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-object/from16 v0, v21

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    move-object/from16 v0, p1

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-object/from16 v0, v23

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    move-object/from16 v0, p1

    iget v15, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    :cond_8
    const/4 v2, 0x0

    return-object v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-object v1

    :cond_0
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v4, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v8, v8, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v5, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    iget-object v5, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v5, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v6

    :goto_0
    invoke-virtual {v4}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-wide v6

    :cond_0
    iget-object v5, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v5, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v8, v8, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v9, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v9, v9, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v5, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v6

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Flat list position is of unknown type"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getItemViewType(I)I
    .locals 7

    const/4 v6, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v5, v5, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v5, :cond_1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    iget v5, v3, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v5, v6, :cond_0

    iget v5, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v0, v5}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v4

    :goto_0
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v4

    :cond_0
    iget v5, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v6, v3, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v0, v5, v6}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v5

    add-int v4, v5, v1

    goto :goto_0

    :cond_1
    iget v5, v3, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v5, v6, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 19

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v15, 0x0

    add-int/lit8 v18, v16, -0x1

    const/4 v6, 0x0

    if-nez v16, :cond_0

    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_0
    :goto_0
    move/from16 v0, v18

    if-gt v15, v0, :cond_4

    sub-int v1, v18, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    add-int/lit8 v15, v6, 0x1

    goto :goto_0

    :cond_1
    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    add-int/lit8 v18, v6, -0x1

    goto :goto_0

    :cond_2
    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    iget v3, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v2, 0x2

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_3
    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    iget v3, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v2, 0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_4
    const/4 v12, 0x0

    const/4 v9, 0x0

    if-le v15, v6, :cond_5

    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move v12, v15

    iget v1, v14, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    :goto_1
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_5
    move/from16 v0, v18

    if-ge v0, v6, :cond_6

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move/from16 v12, v18

    move-object/from16 v0, v17

    iget v1, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v17

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v6

    move-object v4, p2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v0, p2}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    :cond_0
    iget-object v0, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-virtual {v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, v4, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v0, p2, v7, v6}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->onItemDecorate(Landroid/view/View;Landroid/view/View;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/view/View;

    move-result-object v7

    :cond_1
    invoke-virtual {v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-object v7

    :cond_2
    iget-object v0, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v0, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_3

    const/4 v3, 0x1

    :goto_1
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v2, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v5, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method semRegisterDataSetObserver()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    :cond_0
    return-void
.end method

.method semUnregisterDataSetObserver()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    :cond_0
    return-void
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v2, v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v3}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    return-void
.end method
