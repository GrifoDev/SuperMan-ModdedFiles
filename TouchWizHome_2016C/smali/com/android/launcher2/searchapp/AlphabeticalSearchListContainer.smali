.class public Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;
.super Landroid/view/ViewGroup;
.source "AlphabeticalSearchListContainer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final FASTSCROLLINDEX_GRAVITY_LEFT:I = 0x0

.field private static final FASTSCROLLINDEX_GRAVITY_RIGHT:I = 0x1


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mCurrentFastScrollIndexView:I

.field private final mFastScrollIndexGravity:I

.field private final mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

.field private mFastScrollIndexViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

.field private final mFirstCharColor:I

.field private final mLastMovePt:Landroid/graphics/PointF;

.field private mLastRawTouch:Landroid/graphics/PointF;

.field private mLastSelLen:I

.field private final mListBestMatchIndices:Landroid/util/SparseIntArray;

.field private final mListExactMatchIndices:Landroid/util/SparseIntArray;

.field private mListView:Landroid/widget/ListView;

.field private final mPopupHeight:F

.field private final mPopupHeightInc:F

.field private final mPopupWidth:F

.field private final mPopupWidthInc:F

.field private mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

.field private mSupportSearchIndex:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastMovePt:Landroid/graphics/PointF;

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastSelLen:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastRawTouch:Landroid/graphics/PointF;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCollator:Ljava/text/Collator;

    iput-boolean v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mSupportSearchIndex:Z

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->AlphabeticalListContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_0

    iput v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGravity:I

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mPopupWidth:F

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mPopupHeight:F

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mPopupWidthInc:F

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mPopupHeightInc:F

    const/4 v1, 0x5

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFirstCharColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderAppSearchIndex()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mSupportSearchIndex:Z

    return-void

    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGravity:I

    goto :goto_0
.end method

.method private clearIndexMatches()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private feedPtToIndexView(ILandroid/graphics/PointF;)V
    .locals 7

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v3, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v5, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->feedPt(Landroid/graphics/PointF;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getSelection(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->updatePopup(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->updateList(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getMatchingIndex(Ljava/lang/String;IIZZ)I
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    const/4 v4, -0x1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    if-ltz p2, :cond_2

    if-le p2, v6, :cond_3

    :cond_2
    const/4 p2, 0x0

    :cond_3
    if-ltz p3, :cond_4

    if-le p3, v6, :cond_5

    :cond_4
    move p3, v6

    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v4, p2

    :goto_1
    if-gt v4, p3, :cond_8

    invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Lcom/android/launcher2/searchapp/AppInfo;

    if-eqz v7, :cond_a

    move-object v5, v1

    check-cast v5, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_9

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v3, v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_2
    if-ltz v2, :cond_6

    :cond_8
    :goto_3
    if-eqz v2, :cond_0

    if-eqz p4, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_a
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_c

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    if-eqz p4, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v3, v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCollator:Ljava/text/Collator;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_4
    if-ltz v2, :cond_6

    goto :goto_3

    :cond_b
    iget-object v7, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v7, v5, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_c
    const-string v7, "AlphabeticalListContainer"

    const-string v8, "error in getMatchingIndex"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getNextLevelIndexStr(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 19

    if-nez p2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getSelection(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v13, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    const/4 v1, -0x1

    if-ne v1, v15, :cond_2

    invoke-static {v13}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v15

    const/4 v1, -0x1

    if-ne v1, v15, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v13, v15}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v18

    const/4 v11, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move v14, v15

    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_5

    invoke-virtual {v7, v14}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v1, v8, Lcom/android/launcher2/searchapp/AppInfo;

    if-eqz v1, :cond_a

    move-object/from16 v17, v8

    check-cast v17, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v12, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_6

    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    if-ltz v11, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eqz p3, :cond_8

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    const/4 v1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    const/4 v1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    const/4 v1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_a
    instance-of v1, v8, Ljava/lang/String;

    if-eqz v1, :cond_b

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v1, "AlphabeticalListContainer"

    const-string v2, "error in getNextLevelIndexStr"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private getSelection(I)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getCurrentString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private handleMove(Landroid/graphics/PointF;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    const/4 v0, 0x0

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGravity:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    if-ne v0, v6, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-gez v0, :cond_7

    iget v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    invoke-direct {p0, v4, p1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->feedPtToIndexView(ILandroid/graphics/PointF;)V

    return v6

    :pswitch_0
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    if-lez v1, :cond_6

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->clearCurrentChar()V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    if-lez v0, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isPreMatching()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    add-int/lit8 v1, v4, 0x1

    :goto_2
    if-ge v1, v3, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v2, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp()Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, -0x1

    iget v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->clearCurrentChar()V

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    invoke-virtual {v1, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->unPressDelayed()Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setVisibility(I)V

    :cond_2
    iput v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    iput v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastSelLen:I

    const/4 v2, 0x1

    return v2
.end method

.method private showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ge p3, v7, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    add-int/lit8 v3, p3, -0x1

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isTextUppercase()Z

    move-result v5

    invoke-direct {p0, v3, p2, v5}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getNextLevelIndexStr(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v5}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getMidYForCurrentChar()F

    move-result v1

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_2

    iput v1, v4, Landroid/graphics/PointF;->y:F

    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mSupportSearchIndex:Z

    if-nez v5, :cond_3

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0, v7}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    move v5, v7

    goto :goto_0

    :cond_2
    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateList(ZLjava/lang/String;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v7, -0x1

    if-eqz p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void

    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v2, :cond_1

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v7

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v11, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    const/4 v10, 0x1

    move-object v5, p0

    move-object v6, p2

    move v8, v2

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v7

    goto :goto_0
.end method

.method private updatePopup(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastSelLen:I

    if-eq v1, v3, :cond_2

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mPopupWidth:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mPopupWidthInc:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mPopupHeight:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mPopupHeightInc:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setDrawBounds(Landroid/graphics/PointF;)V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->clearStyles()V

    if-le v1, v8, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->getTextColor()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFirstCharColor:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setStyle(ILandroid/text/style/CharacterStyle;)V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v8, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setStyle(ILandroid/text/style/CharacterStyle;)V

    :cond_1
    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastSelLen:I

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateViewIndexes()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->clearIndexMatches()V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->clearCurrentChar()V

    if-lez v0, :cond_0

    invoke-virtual {v1, v4, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()Z
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x80

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const v9, 0x7f1000f3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v10, v11}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :goto_1
    return v8

    :cond_2
    const v9, 0x7f1000f6

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6, v10, v11}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mSupportSearchIndex:Z

    if-nez v3, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    iput-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    iget-boolean v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mSupportSearchIndex:Z

    if-nez v3, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setAllowWiggle(Z)V

    :cond_3
    const v3, 0x7f1000f0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v3}, Lcom/android/launcher2/utils/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->disableFullyHideKeypad()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    invoke-interface {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;->onSipHide()V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastRawTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mLastSelLen:I

    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->feedPtToIndexView(ILandroid/graphics/PointF;)V

    iput v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v0, v3}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    move v2, v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getMeasuredWidth()I

    move-result v21

    sub-int v21, v21, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getPaddingRight()I

    move-result v22

    sub-int v6, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    new-instance v5, Landroid/graphics/RectF;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v18, v6

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-int v24, v19, v4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->handleUp()Z

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    move/from16 v14, v18

    :goto_1
    const/16 v20, 0x0

    move/from16 v16, v18

    add-int v17, v18, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v9, v0, :cond_4

    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    move v14, v6

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    instance-of v0, v9, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object v15, v9

    check-cast v15, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    add-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int v21, v14, v11

    add-int v22, v19, v10

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v15, v14, v0, v1, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->layout(IIII)V

    add-int/2addr v14, v11

    invoke-virtual {v15}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isFloating()Z

    move-result v21

    if-nez v21, :cond_2

    move/from16 v16, v14

    goto :goto_3

    :pswitch_1
    sub-int v21, v14, v11

    add-int v22, v19, v10

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v14, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->layout(IIII)V

    sub-int/2addr v14, v11

    invoke-virtual {v15}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isFloating()Z

    move-result v21

    if-nez v21, :cond_2

    move/from16 v17, v14

    goto :goto_3

    :cond_5
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v22

    int-to-float v0, v11

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v7, v0

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v22

    int-to-float v0, v10

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    add-int v21, v7, v11

    add-int v22, v8, v10

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v7, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v10

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v22

    int-to-float v0, v10

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    add-int v22, v8, v10

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/ListView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->unPressDelayed()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->pressDelayed()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mCurrentFastScrollIndexView:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->handleUp()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->handleMove(Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->updateViewIndexes()V

    :cond_0
    return-void
.end method

.method public setSipHideListener(Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    return-void
.end method
