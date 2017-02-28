.class public Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
.super Landroid/view/ViewGroup;
.source "AlphabeticalListContainer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final FASTSCROLLINDEX_GRAVITY_LEFT:I = 0x0

.field private static final FASTSCROLLINDEX_GRAVITY_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlphabeticalListContainer"


# instance fields
.field private indexCharactersPosition:[I

.field private final mCollator:Ljava/text/Collator;

.field private mContext:Landroid/content/Context;

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

.field private mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

.field private utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;


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

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastSelLen:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastRawTouch:Landroid/graphics/PointF;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    iput-boolean v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mSupportSearchIndex:Z

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->AlphabeticalListContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_0

    iput v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mPopupWidth:F

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mPopupHeight:F

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mPopupWidthInc:F

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mPopupHeightInc:F

    const/4 v1, 0x5

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFirstCharColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderAppSearchIndex()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mSupportSearchIndex:Z

    return-void

    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->indexCharactersPosition:[I

    return-object v0
.end method

.method private clearIndexMatches()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private feedPtToIndexView(ILandroid/graphics/PointF;)V
    .locals 7

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

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
    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getSelection(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->updatePopup(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->updateList(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

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
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_1

    const/4 v5, -0x1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    if-ltz p2, :cond_2

    if-le p2, v7, :cond_3

    :cond_2
    const/4 p2, 0x0

    :cond_3
    if-ltz p3, :cond_4

    if-le p3, v7, :cond_5

    :cond_4
    move p3, v7

    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v5, p2

    :goto_1
    if-gt v5, p3, :cond_8

    invoke-virtual {v0, v5}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v9, v1, Lcom/android/launcher2/searchapp/AppInfo;

    if-eqz v9, :cond_a

    move-object v6, v1

    check-cast v6, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v6}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_9

    invoke-virtual {v6}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v4, v9, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v6}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_2
    if-ltz v2, :cond_6

    :cond_8
    :goto_3
    if-eqz v2, :cond_0

    if-eqz p4, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_9
    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v6}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_a
    instance-of v9, v1, Lcom/android/launcher2/searchapp/AppIndexInfo;

    if-eqz v9, :cond_e

    move-object v9, v1

    check-cast v9, Lcom/android/launcher2/searchapp/AppIndexInfo;

    invoke-virtual {v9}, Lcom/android/launcher2/searchapp/AppIndexInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v8, v6}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v4, v9, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "zh_HK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    const-string v10, "a"

    invoke-virtual {v9, v3, v10}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_b

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    const-string v10, "a"

    invoke-virtual {v9, p1, v10}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int v2, v9, v10

    :goto_4
    if-ltz v2, :cond_6

    check-cast v1, Lcom/android/launcher2/searchapp/AppIndexInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AppIndexInfo;->getIndex()I

    move-result v5

    goto :goto_3

    :cond_b
    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v9, v3, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "zh_HK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    const-string v10, "a"

    invoke-virtual {v9, v3, v10}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_d

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    const-string v10, "a"

    invoke-virtual {v9, p1, v10}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int v2, v9, v10

    goto :goto_4

    :cond_d
    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v9, v3, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_e
    const-string v9, "AlphabeticalListContainer"

    const-string v10, "error in getMatchingIndex"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private getNextLevelIndexStr(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 19

    if-nez p2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getSelection(I)Ljava/lang/String;

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

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

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

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v15

    const/4 v1, -0x1

    if-ne v1, v15, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v13, v15}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

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

    iget-object v1, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

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

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

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

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    const/4 v0, 0x0

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    if-ne v0, v6, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-gez v0, :cond_7

    iget v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-direct {p0, v4, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->feedPtToIndexView(ILandroid/graphics/PointF;)V

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

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    add-int/lit8 v1, v4, 0x1

    :goto_2
    if-ge v1, v3, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

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

    iget v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setVisibility(I)V

    :cond_2
    iput v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    iput v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastSelLen:I

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

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isTextUppercase()Z

    move-result v5

    invoke-direct {p0, v3, p2, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getNextLevelIndexStr(ILjava/lang/String;Z)Ljava/lang/String;

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

    iget-object v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

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
    iget-boolean v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mSupportSearchIndex:Z

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
    .locals 8

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v7, -0x1

    if-eqz p1, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p2

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v7

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v2, :cond_0

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v7

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method private updatePopup(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastSelLen:I

    if-eq v1, v3, :cond_2

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mPopupWidth:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mPopupWidthInc:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mPopupHeight:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mPopupHeightInc:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setDrawBounds(Landroid/graphics/PointF;)V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->clearStyles()V

    if-le v1, v8, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->getTextColor()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFirstCharColor:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setStyle(ILandroid/text/style/CharacterStyle;)V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v8, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setStyle(ILandroid/text/style/CharacterStyle;)V

    :cond_1
    iput v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastSelLen:I

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateViewIndexes()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->clearIndexMatches()V

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

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

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

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

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableFluidIndexScroll()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 13

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v10, :cond_3

    const v2, 0x7f0d002e

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    move-object v10, v9

    check-cast v10, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mSupportSearchIndex:Z

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setAllowWiggle(Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const v2, 0x7f0d0013

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-nez v10, :cond_1

    instance-of v10, v9, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    if-eqz v10, :cond_1

    move-object v10, v9

    check-cast v10, Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    iput-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/searchapp/AlphabeticalListTextPopup;

    iget-boolean v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mSupportSearchIndex:Z

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_5
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x1010433

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v6, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v10, :cond_9

    const v10, 0x7f020017

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_3
    new-instance v10, Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/widget/SemIndexScrollView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10, v8}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarTextColor(I)V

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarPressedTextColor(I)V

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->setEffectTextColor(I)V

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->setEffectBackgroundColor(I)V

    iget v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarGravity(I)V

    :goto_4
    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    new-instance v11, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;

    invoke-direct {v11, p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;-><init>(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/widget/SemIndexScrollView;->setOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;)V

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemIndexScrollView;->invalidate()V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v5, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v10, -0x1

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v10, -0x1

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {p0, v10, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->invalidate()V

    :cond_7
    const v10, 0x7f1000ec

    invoke-virtual {p0, v10}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_8
    return-void

    :cond_9
    const v10, 0x7f020016

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_3

    :cond_a
    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarGravity(I)V

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0, v3}, Lcom/android/launcher2/utils/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->disableFullyHideKeypad()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    invoke-interface {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;->onSipHide()V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastRawTouch:Landroid/graphics/PointF;

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

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mLastSelLen:I

    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->feedPtToIndexView(ILandroid/graphics/PointF;)V

    iput v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v0, v3}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 32

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getPaddingEnd()I

    move-result v20

    :goto_0
    if-eqz v24, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getPaddingStart()I

    move-result v21

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getPaddingTop()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getMeasuredWidth()I

    move-result v27

    sub-int v27, v27, v20

    sub-int v6, v27, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getMeasuredHeight()I

    move-result v27

    sub-int v27, v27, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getPaddingBottom()I

    move-result v28

    sub-int v4, v27, v28

    new-instance v5, Landroid/graphics/RectF;

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    add-int v29, v20, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-int v30, v22, v4

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    :goto_2
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getPaddingStart()I

    move-result v20

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getPaddingEnd()I

    move-result v21

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v27

    if-nez v27, :cond_3

    if-eqz p1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->handleUp()Z

    :cond_3
    const/16 v26, 0x0

    move/from16 v18, v20

    add-int v19, v20, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getChildCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-ne v10, v0, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    instance-of v0, v10, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    move/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v16, v10

    check-cast v16, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v27, v0

    if-nez v27, :cond_6

    move/from16 v15, v20

    :goto_5
    add-int v26, v26, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    move/from16 v17, v15

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v27

    add-int v25, v22, v27

    add-int v27, v15, v12

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingStart()I

    move-result v28

    sub-int v23, v27, v28

    add-int v27, v25, v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingBottom()I

    move-result v28

    sub-int v7, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->layout(IIII)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isFloating()Z

    move-result v27

    if-nez v27, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingStart()I

    move-result v27

    add-int v18, v23, v27

    goto :goto_4

    :cond_6
    move v15, v6

    goto :goto_5

    :pswitch_1
    sub-int v27, v15, v12

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingStart()I

    move-result v28

    add-int v17, v27, v28

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v27

    add-int v25, v22, v27

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingEnd()I

    move-result v27

    sub-int v23, v15, v27

    add-int v27, v25, v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingBottom()I

    move-result v28

    sub-int v7, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->layout(IIII)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->isFloating()Z

    move-result v27

    if-nez v27, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->getPaddingEnd()I

    move-result v27

    sub-int v19, v17, v27

    goto/16 :goto_4

    :cond_7
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v28

    int-to-float v0, v12

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v8, v0

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v28

    int-to-float v0, v11

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v9, v0

    add-int v27, v8, v12

    add-int v28, v9, v11

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v11

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v28

    int-to-float v0, v11

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    move-object/from16 v27, v0

    add-int v28, v9, v11

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v28

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/ListView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v28, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_2

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

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    iget v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->handleUp()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->handleMove(Landroid/graphics/PointF;)Z

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

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->updateViewIndexes()V

    :cond_0
    return-void
.end method

.method public setScrollIndexer(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    invoke-virtual {v9}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseHK()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->indexCharactersPosition:[I

    const/4 v3, -0x1

    const/4 v5, 0x1

    :goto_0
    array-length v9, v6

    if-ge v5, v9, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    aget-object v10, v6, v5

    const-string v11, "a"

    invoke-virtual {v9, v10, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "a"

    invoke-virtual {v10, v9, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_2

    :try_start_0
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v6, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    sub-int v3, v9, v10

    :goto_2
    if-gez v3, :cond_0

    if-gez v3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_3

    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->indexCharactersPosition:[I

    aput v8, v9, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v10, "AlphabeticalListContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v11, v6, v5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aget-object v11, v6, v5

    invoke-virtual {v10, v9, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aget-object v11, v6, v5

    invoke-virtual {v10, v9, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0903b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v0, v9

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v9, v6, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexScroll([Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemIndexScrollView;->invalidate()V

    :cond_5
    return-void

    :catch_1
    move-exception v4

    const-string v9, "AlphabeticalListContainer"

    const-string v10, "IllegalStateException."

    invoke-static {v9, v10, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080024

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/samsung/android/widget/SemArrayIndexer;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/widget/SemArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v9, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexer(Lcom/samsung/android/widget/SemAbstractIndexer;)V

    goto :goto_3
.end method

.method public setSipHideListener(Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    return-void
.end method
