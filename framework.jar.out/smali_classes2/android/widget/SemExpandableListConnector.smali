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
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    .line 79
    new-instance v0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/SemExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 88
    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 566
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 567
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 568
    .local v3, "egmlSize":I
    const/4 v0, 0x0

    .line 571
    .local v0, "curFlPos":I
    iput v9, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    .line 573
    if-eqz p2, :cond_3

    .line 575
    const/4 v8, 0x0

    .line 577
    .local v8, "positionsChanged":Z
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 578
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 579
    .local v1, "curGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget-wide v10, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gId:J

    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v10, v11, v9}, Landroid/widget/SemExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 580
    .local v7, "newGPos":I
    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 581
    if-ne v7, v12, :cond_0

    .line 583
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 584
    add-int/lit8 v3, v3, -0x1

    .line 587
    :cond_0
    iput v7, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    .line 588
    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 577
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 592
    .end local v1    # "curGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .end local v7    # "newGPos":I
    :cond_2
    if-eqz v8, :cond_3

    .line 594
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 599
    .end local v5    # "i":I
    .end local v8    # "positionsChanged":Z
    :cond_3
    const/4 v6, 0x0

    .line 600
    .local v6, "lastGPos":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 602
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 608
    .restart local v1    # "curGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    .line 609
    :cond_4
    iget-object v9, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 618
    .local v4, "gChildrenCount":I
    :goto_2
    iget v9, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    .line 625
    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 626
    iget v6, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    .line 629
    iput v0, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    .line 630
    add-int/2addr v0, v4

    .line 631
    iput v0, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 600
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 614
    .end local v4    # "gChildrenCount":I
    :cond_5
    iget v9, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4    # "gChildrenCount":I
    goto :goto_2

    .line 565
    .end local v1    # "curGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .end local v4    # "gChildrenCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    const/4 v4, -0x1

    .line 642
    const/4 v3, 0x2

    .line 641
    invoke-static {v3, p1, v4, v4}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 643
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 644
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 645
    if-nez v1, :cond_0

    const/4 v3, 0x0

    return v3

    .line 647
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 648
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 649
    return v2
.end method

.method collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v2, 0x0

    .line 662
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-nez v0, :cond_0

    .line 663
    return v2

    .line 667
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 670
    invoke-direct {p0, v2, v2}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 673
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 676
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method expandGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    const/4 v4, -0x1

    .line 687
    const/4 v3, 0x2

    .line 686
    invoke-static {v3, p1, v4, v4}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 688
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 689
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_0

    .line 690
    const/4 v3, 0x0

    return v3

    .line 692
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 693
    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 694
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 695
    return v2
.end method

.method expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 8
    .param p1, "posMetadata"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 703
    iget-object v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    if-gez v3, :cond_0

    .line 705
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 708
    :cond_0
    iget v3, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v3, :cond_1

    return v6

    .line 711
    :cond_1
    iget-object v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-eqz v3, :cond_2

    return v6

    .line 714
    :cond_2
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v3, v4, :cond_3

    .line 718
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 720
    .local v0, "collapsedGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 722
    .local v1, "collapsedIndex":I
    iget v3, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v3}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    .line 725
    iget v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v3, v1, :cond_3

    .line 726
    iget v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 732
    .end local v0    # "collapsedGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .end local v1    # "collapsedIndex":I
    :cond_3
    iget v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    iget-object v4, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 733
    return v6

    .line 739
    :cond_4
    iget-object v3, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 740
    iget-object v4, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v5, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v5, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    .line 736
    invoke-static {v7, v7, v3, v4, v5}, Landroid/widget/SemExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 742
    .local v2, "expandedGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 745
    invoke-direct {p0, v6, v6}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 748
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 751
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 753
    const/4 v3, 0x1

    return v3
.end method

.method findGroupPosition(JI)I
    .locals 19
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .prologue
    .line 836
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v11}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    .line 838
    .local v3, "count":I
    if-nez v3, :cond_0

    .line 839
    const/4 v11, -0x1

    return v11

    .line 843
    :cond_0
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v11, p1, v14

    if-nez v11, :cond_1

    .line 844
    const/4 v11, -0x1

    return v11

    .line 848
    :cond_1
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 849
    add-int/lit8 v11, v3, -0x1

    move/from16 v0, p3

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 851
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x64

    add-long v4, v14, v16

    .line 856
    .local v4, "endTime":J
    move/from16 v6, p3

    .line 859
    .local v6, "first":I
    move/from16 v9, p3

    .line 862
    .local v9, "last":I
    const/4 v10, 0x0

    .line 872
    .local v10, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 873
    .local v2, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v2, :cond_3

    .line 874
    const/4 v11, -0x1

    return v11

    .line 894
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v12, "rowId":J
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 895
    move/from16 p3, v9

    .line 897
    const/4 v10, 0x0

    .line 877
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v11, v14, v4

    if-gtz v11, :cond_5

    .line 878
    move/from16 v0, p3

    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v12

    .line 879
    .restart local v12    # "rowId":J
    cmp-long v11, v12, p1

    if-nez v11, :cond_4

    .line 881
    return p3

    .line 884
    :cond_4
    add-int/lit8 v11, v3, -0x1

    if-ne v9, v11, :cond_6

    const/4 v8, 0x1

    .line 885
    .restart local v8    # "hitLast":Z
    :goto_1
    if-nez v6, :cond_7

    const/4 v7, 0x1

    .line 887
    .restart local v7    # "hitFirst":Z
    :goto_2
    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    .line 908
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_5
    const/4 v11, -0x1

    return v11

    .line 884
    .restart local v12    # "rowId":J
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "hitLast":Z
    goto :goto_1

    .line 885
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "hitFirst":Z
    goto :goto_2

    .line 892
    :cond_8
    if-nez v7, :cond_2

    if-eqz v10, :cond_9

    if-eqz v8, :cond_2

    .line 898
    :cond_9
    if-nez v8, :cond_a

    if-nez v10, :cond_3

    if-nez v7, :cond_3

    .line 900
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 901
    move/from16 p3, v6

    .line 903
    const/4 v10, 0x1

    goto :goto_0
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 434
    .local v0, "groupCount":I
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

    .prologue
    .line 795
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 787
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 788
    check-cast v0, Landroid/widget/Filterable;

    .end local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    return-object v1

    .line 790
    .restart local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 24
    .param p1, "pos"    # Landroid/widget/SemExpandableListPosition;

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 294
    .local v20, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 297
    .local v22, "numExpGroups":I
    const/4 v13, 0x0

    .line 298
    .local v13, "leftExpGroupIndex":I
    add-int/lit8 v19, v22, -0x1

    .line 299
    .local v19, "rightExpGroupIndex":I
    const/4 v7, 0x0

    .line 302
    .local v7, "midExpGroupIndex":I
    if-nez v22, :cond_0

    .line 308
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->type:I

    .line 309
    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 308
    invoke-static/range {v2 .. v7}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .end local v7    # "midExpGroupIndex":I
    move-result-object v2

    return-object v2

    .line 317
    .restart local v7    # "midExpGroupIndex":I
    :cond_0
    :goto_0
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    .line 318
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 319
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 321
    .local v6, "midExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 325
    add-int/lit8 v13, v7, 0x1

    goto :goto_0

    .line 326
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 330
    add-int/lit8 v19, v7, -0x1

    goto :goto_0

    .line 331
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 336
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 338
    iget v2, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->type:I

    .line 339
    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    .line 338
    invoke-static/range {v2 .. v7}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    .line 340
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 342
    iget v2, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 343
    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    .line 342
    invoke-static/range {v2 .. v7}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    .line 346
    :cond_4
    const/4 v2, 0x0

    return-object v2

    .line 355
    .end local v6    # "midExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 357
    const/4 v2, 0x0

    return-object v2

    .line 365
    :cond_6
    if-le v13, v7, :cond_7

    .line 376
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 378
    .local v21, "leftExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 379
    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    .line 378
    add-int v8, v2, v3

    .line 381
    .local v8, "flPos":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 382
    move-object/from16 v0, p1

    iget v11, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    .line 381
    invoke-static/range {v8 .. v13}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    .line 383
    .end local v8    # "flPos":I
    .end local v21    # "leftExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    .line 391
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 393
    .local v23, "rightExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v23

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    .line 394
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    .line 393
    sub-int v8, v2, v3

    .line 395
    .restart local v8    # "flPos":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    .line 396
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    .line 395
    invoke-static/range {v14 .. v19}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    return-object v2

    .line 398
    .end local v8    # "flPos":I
    .end local v23    # "rightExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    return-object v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "flatListPos"    # I

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 442
    .local v0, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 443
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 444
    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 443
    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 453
    .local v1, "retValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 455
    return-object v1

    .line 445
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 446
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 447
    iget-object v4, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->childPos:I

    .line 446
    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "retValue":Ljava/lang/Object;
    goto :goto_0

    .line 450
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .param p1, "flatListPos"    # I

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 460
    .local v4, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v8, v8, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v5, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 463
    .local v2, "groupId":J
    iget-object v5, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v5, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 464
    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v6

    .line 474
    .local v6, "retValue":J
    :goto_0
    invoke-virtual {v4}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 476
    return-wide v6

    .line 465
    .end local v6    # "retValue":J
    :cond_0
    iget-object v5, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v5, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 466
    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v8, v8, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 467
    iget-object v9, v4, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v9, v9, Landroid/widget/SemExpandableListPosition;->childPos:I

    .line 466
    invoke-interface {v5, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 468
    .local v0, "childId":J
    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v6

    .restart local v6    # "retValue":J
    goto :goto_0

    .line 471
    .end local v0    # "childId":J
    .end local v6    # "retValue":J
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Flat list position is of unknown type"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "flatListPos"    # I

    .prologue
    const/4 v6, 0x2

    .line 511
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 512
    .local v2, "metadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    .line 515
    .local v3, "pos":Landroid/widget/SemExpandableListPosition;
    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v5, v5, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v5, :cond_1

    .line 517
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 518
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v5, v3, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v5, v6, :cond_0

    .line 519
    iget v5, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v0, v5}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v4

    .line 532
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v4, "retValue":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 534
    return v4

    .line 521
    .end local v4    # "retValue":I
    .restart local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v5, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v6, v3, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v0, v5, v6}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 522
    .local v1, "childType":I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v5

    add-int v4, v5, v1

    .restart local v4    # "retValue":I
    goto :goto_0

    .line 525
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .end local v1    # "childType":I
    .end local v4    # "retValue":I
    :cond_1
    iget v5, v3, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v5, v6, :cond_2

    .line 526
    const/4 v4, 0x0

    .restart local v4    # "retValue":I
    goto :goto_0

    .line 528
    .end local v4    # "retValue":I
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "retValue":I
    goto :goto_0
.end method

.method getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 19
    .param p1, "flPos"    # I

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 144
    .local v13, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 147
    .local v16, "numExpGroups":I
    const/4 v15, 0x0

    .line 148
    .local v15, "leftExpGroupIndex":I
    add-int/lit8 v18, v16, -0x1

    .line 149
    .local v18, "rightExpGroupIndex":I
    const/4 v6, 0x0

    .line 152
    .local v6, "midExpGroupIndex":I
    if-nez v16, :cond_0

    .line 158
    const/4 v2, 0x2

    .line 159
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    .line 158
    invoke-static/range {v1 .. v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .end local v6    # "midExpGroupIndex":I
    move-result-object v1

    return-object v1

    .line 174
    .restart local v6    # "midExpGroupIndex":I
    :cond_0
    :goto_0
    move/from16 v0, v18

    if-gt v15, v0, :cond_4

    .line 176
    sub-int v1, v18, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 178
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 180
    .local v5, "midExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    .line 185
    add-int/lit8 v15, v6, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    .line 191
    add-int/lit8 v18, v6, -0x1

    goto :goto_0

    .line 192
    :cond_2
    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 198
    iget v3, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    .line 197
    const/4 v2, 0x2

    .line 198
    const/4 v4, -0x1

    move/from16 v1, p1

    .line 197
    invoke-static/range {v1 .. v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    .line 199
    :cond_3
    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    .line 209
    iget v1, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 211
    .local v4, "childPos":I
    iget v3, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    .line 210
    const/4 v2, 0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    .line 226
    .end local v4    # "childPos":I
    .end local v5    # "midExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    .line 229
    .local v12, "insertPosition":I
    const/4 v9, 0x0

    .line 236
    .local v9, "groupPos":I
    if-le v15, v6, :cond_5

    .line 244
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 246
    .local v14, "leftExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 253
    iget v1, v14, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 277
    .end local v14    # "leftExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :goto_1
    const/4 v8, 0x2

    const/4 v10, -0x1

    .line 278
    const/4 v11, 0x0

    move/from16 v7, p1

    .line 277
    invoke-static/range {v7 .. v12}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    .line 254
    :cond_5
    move/from16 v0, v18

    if-ge v0, v6, :cond_6

    .line 261
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 263
    .local v17, "rightExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    move/from16 v12, v18

    .line 271
    move-object/from16 v0, v17

    iget v1, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v17

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    goto :goto_1

    .line 274
    .end local v17    # "rightExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 482
    .local v6, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    move-object v4, p2

    .line 483
    .local v4, "originalConvertView":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v0, p2}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 488
    :cond_0
    iget-object v0, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 489
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 490
    invoke-virtual {v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    .line 489
    invoke-interface {v0, v1, v2, v4, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 501
    .local v7, "retValue":Landroid/view/View;
    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v0, p2, v7, v6}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->onItemDecorate(Landroid/view/View;Landroid/view/View;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/view/View;

    move-result-object v7

    .line 505
    :cond_1
    invoke-virtual {v6}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 506
    return-object v7

    .line 491
    .end local v7    # "retValue":Landroid/view/View;
    :cond_2
    iget-object v0, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 492
    iget-object v0, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v0, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_3

    const/4 v3, 0x1

    .line 494
    .local v3, "isLastChild":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 495
    iget-object v2, v6, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v5, p3

    .line 494
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "retValue":Landroid/view/View;
    goto :goto_0

    .line 492
    .end local v3    # "isLastChild":Z
    .end local v7    # "retValue":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "isLastChild":Z
    goto :goto_1

    .line 498
    .end local v3    # "isLastChild":Z
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 541
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 542
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 544
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 821
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
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
    .param p1, "flatListPos"    # I

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 410
    .local v0, "metadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    .line 413
    .local v1, "pos":Landroid/widget/SemExpandableListPosition;
    iget v3, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 414
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v5, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    .line 420
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 422
    return v2

    .line 417
    :cond_0
    const/4 v2, 0x1

    .local v2, "retValue":Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 763
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 764
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 766
    .local v0, "groupMetadata":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 767
    const/4 v2, 0x1

    return v2

    .line 763
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 771
    .end local v0    # "groupMetadata":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_1
    return v3
.end method

.method semRegisterDataSetObserver()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    goto :goto_0
.end method

.method semUnregisterDataSetObserver()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    .line 122
    :cond_0
    return-void
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 104
    :cond_0
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 105
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    .line 99
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

    .prologue
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemExpandableListConnector$GroupMetadata;>;"
    const/4 v3, 0x0

    .line 800
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 801
    :cond_0
    return-void

    .line 806
    :cond_1
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 807
    .local v1, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 808
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v2, v1, :cond_2

    .line 810
    return-void

    .line 807
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 814
    :cond_3
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 815
    const/4 v2, 0x1

    invoke-direct {p0, v2, v3}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 798
    return-void
.end method

.method setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V
    .locals 0
    .param p1, "itemDecorator"    # Landroid/widget/SemExpandableListConnector$ItemDecorator;

    .prologue
    .line 110
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    .line 109
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .prologue
    .line 778
    iput p1, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    .line 777
    return-void
.end method
