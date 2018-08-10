.class public Landroid/widget/SemHorizontalListView;
.super Landroid/widget/SemHorizontalAbsListView;
.source "SemHorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;,
        Landroid/widget/SemHorizontalListView$FixedViewInfo;,
        Landroid/widget/SemHorizontalListView$FocusSelector;,
        Landroid/widget/SemHorizontalListView$ItemInfoTag;
    }
.end annotation


# static fields
.field private static final BITS_PER_LONG:I = 0x40

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemHorizontalListView"

.field private static final XML_FIXED_SIZE_ITEMS_ATTRIBUTE:Ljava/lang/String; = "fixed_size_items"

.field private static final XML_SEC_ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.samsung.com.samsung.android"


# instance fields
.field private mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

.field private final mFixedSizeItems:Z

.field private mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field mIsFolderTypeFeature:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Landroid/widget/SemHorizontalListView;)Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iput-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    new-instance v6, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-direct {v6, v7}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;-><init>(Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;)V

    iput-object v6, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->setDividerHeight(I)V

    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_5

    const-string/jumbo v6, "http://schemas.android.samsung.com.samsung.android"

    const-string/jumbo v7, "fixed_size_items"

    invoke-interface {p2, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    :goto_0
    return-void

    :cond_5
    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    goto :goto_0
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    add-int/lit8 v2, p2, 0x1

    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, p2, -0x1

    goto :goto_0
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    const/4 v6, 0x0

    add-int/lit8 v2, p2, 0x1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    return-object v1
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_6

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    :goto_0
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    :cond_0
    :goto_1
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_5

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_5
    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    :goto_3
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_7

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    :cond_7
    :goto_4
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_a

    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_3

    :cond_9
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_4

    :cond_a
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2
.end method

.method private amountToScroll(II)I
    .locals 12

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v5, v10, v11

    iget-object v10, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v7

    const/16 v10, 0x42

    if-ne p1, v10, :cond_b

    add-int/lit8 v3, v7, -0x1

    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_0

    const/4 v3, 0x0

    :cond_0
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    :cond_1
    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_2

    :goto_0
    if-gez v3, :cond_3

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_0

    :cond_2
    :goto_1
    if-gt v7, v3, :cond_3

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move v2, v5

    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_5

    if-lez v8, :cond_4

    :goto_2
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int v2, v5, v10

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v2, :cond_6

    const/4 v10, 0x0

    return v10

    :cond_5
    iget v10, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_4

    goto :goto_2

    :cond_6
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_7

    const/4 v10, 0x0

    return v10

    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v2

    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_8

    :goto_3
    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10

    :cond_9
    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ne v10, v11, :cond_8

    goto :goto_3

    :cond_a
    add-int/lit8 v10, v7, -0x1

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_c

    add-int/lit8 v3, v7, -0x1

    :cond_c
    const/4 v10, -0x1

    if-eq p2, v10, :cond_d

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    :cond_d
    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_e

    :goto_5
    if-gt v7, v3, :cond_f

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    if-gez v3, :cond_f

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_6

    :cond_f
    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move v1, v4

    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_11

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_10

    :goto_7
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int v1, v4, v10

    :cond_10
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v1, :cond_12

    const/4 v10, 0x0

    return v10

    :cond_11
    if-lez v8, :cond_10

    goto :goto_7

    :cond_12
    const/4 v10, -0x1

    if-eq p2, v10, :cond_13

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_13

    const/4 v10, 0x0

    return v10

    :cond_13
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v1, v10

    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_15

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ne v10, v11, :cond_14

    :goto_8
    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_16

    add-int/lit8 v10, v7, -0x1

    :goto_9
    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v4, v10

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_14
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10

    :cond_15
    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_14

    goto :goto_8

    :cond_16
    const/4 v10, 0x0

    goto :goto_9
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v2, 0x11

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    :goto_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-lez p3, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    if-lez p3, :cond_0

    :goto_2
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    goto :goto_2
.end method

.method private arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/SemHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v11

    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_9

    if-ge v11, v9, :cond_9

    :cond_0
    const/4 v14, 0x0

    return-object v14

    :cond_1
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v14, :cond_2

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_2
    add-int v4, v15, v14

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v4, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    move v13, v4

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v14, v15, :cond_6

    const/4 v10, 0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v14, v15

    if-eqz v10, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_6
    sub-int v5, v15, v14

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v14, v5, :cond_8

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    :cond_8
    move v13, v5

    goto :goto_7

    :cond_9
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-gt v11, v9, :cond_0

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/SemHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v6

    if-ge v2, v6, :cond_b

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v2}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v14

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v14

    :cond_c
    const/4 v14, 0x0

    return-object v14
.end method

.method private arrowScrollImpl(I)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_0

    return v9

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-direct {p0, v6, v5, p1}, Landroid/widget/SemHorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/widget/SemHorizontalListView;->amountToScroll(II)I

    move-result v0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_a

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    :cond_1
    if-eqz v1, :cond_b

    const/4 v3, 0x1

    :goto_1
    if-eq v4, v10, :cond_3

    if-eqz v1, :cond_c

    move v7, v8

    :goto_2
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/SemHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    move v5, v4

    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    :cond_3
    if-lez v0, :cond_4

    const/16 v7, 0x11

    if-ne p1, v7, :cond_d

    :goto_3
    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    const/4 v3, 0x1

    :cond_4
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_6

    if-nez v1, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_6

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_6
    if-ne v4, v10, :cond_7

    if-eqz v6, :cond_7

    invoke-direct {p0, v6, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->hideSelector()V

    iput v10, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    :cond_7
    if-eqz v3, :cond_e

    if-eqz v6, :cond_8

    invoke-virtual {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    return v8

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    move v7, v9

    goto/16 :goto_2

    :cond_d
    neg-int v0, v0

    goto :goto_3

    :cond_e
    return v9
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isAttachedToWindow()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_3

    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_0
    :sswitch_0
    if-eqz v2, :cond_19

    return v4

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, p2

    add-int/lit8 p2, v1, -0x1

    if-lez v1, :cond_3

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    move v1, p2

    add-int/lit8 p2, v1, -0x1

    if-lez v1, :cond_3

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_a
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    const/16 v3, 0x21

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_b
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    const/16 v3, 0x82

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->keyPressed()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_6
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :cond_c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v2

    :cond_d
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x1

    goto :goto_3

    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v2

    goto :goto_3

    :cond_10
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v2

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v2

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    goto/16 :goto_0

    :cond_17
    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return v4

    :cond_1a
    packed-switch v0, :pswitch_data_0

    return v5

    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3d -> :sswitch_0
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
        0x5c -> :sswitch_7
        0x5d -> :sswitch_8
        0x7a -> :sswitch_9
        0x7b -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10

    const/4 v9, 0x0

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    sub-int v6, v0, v5

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lez v6, :cond_2

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_2

    :cond_0
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_2

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_2
    return-void
.end method

.method private correctTooHighRTL(I)V
    .locals 11

    const/4 v10, 0x0

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    sub-int v6, v4, v7

    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-lez v6, :cond_2

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v8, :cond_0

    if-le v2, v0, :cond_2

    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_1

    sub-int v8, v2, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    neg-int v8, v6

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v8, :cond_2

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11

    const/4 v9, 0x0

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    sub-int v6, v2, v7

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v4, v8, -0x1

    if-lez v6, :cond_2

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    neg-int v8, v6

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private correctTooLowRTL(I)V
    .locals 11

    const/4 v9, 0x0

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    sub-int v6, v0, v2

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    if-lez v6, :cond_2

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v4, v8, :cond_3

    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    iput v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9

    const/4 v3, 0x1

    sub-int v8, p2, p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-gt v7, v8, :cond_0

    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    invoke-direct {p0, v6, v1}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromRight(I)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v0, v1, -0x1

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gez v1, :cond_0

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :cond_0
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v7

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    move/from16 v0, p2

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v10

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v10, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v1, v8

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v1, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    neg-int v1, v9

    invoke-virtual {v11, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, v11, v2}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    :goto_1
    return-object v11

    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v8, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v8, v1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v10, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    if-eqz v5, :cond_1

    move-object v8, v6

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    return-object v8
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .locals 3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillLeftRTL(II)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    if-eqz v5, :cond_1

    move-object v8, v6

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    return-object v8
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int v7, v0, v1

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    if-eqz v5, :cond_1

    move-object v8, v6

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    return-object v8
.end method

.method private fillRightRTL(II)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int v7, v0, v1

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-ge p2, v7, :cond_3

    if-ltz p1, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    if-eqz v5, :cond_1

    move-object v9, v6

    :cond_1
    add-int/lit8 p1, p1, -0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    return-object v9
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, v6}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    return-object v10

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, v6}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    return-object v8

    :cond_4
    return-object v9
.end method

.method private fillSpecificRTL(II)Landroid/view/View;
    .locals 11

    const/4 v3, 0x0

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, v6}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    return-object v10

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, v6}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    return-object v8

    :cond_4
    return-object v9
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getChildCountAndOrder(Landroid/view/View;[BI)J
    .locals 12

    const-wide/16 v6, 0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, p3, :cond_1

    aget-byte v5, p2, v8

    shl-long/2addr v6, v5

    or-long v0, v10, v6

    :cond_1
    aget-byte v5, p2, v8

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v8

    return-wide v0

    :cond_2
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-ne v5, p3, :cond_3

    aget-byte v5, p2, v8

    shl-long/2addr v6, v5

    or-long v0, v10, v6

    :cond_3
    aget-byte v5, p2, v8

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v8

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v6

    or-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method private getChildHeightSpec(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    return v1
.end method

.method private getChildWidthSpec(Landroid/view/View;)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 2

    move v0, p1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    :goto_0
    add-int v0, p1, p2

    :cond_0
    return v0

    :cond_1
    if-lez p3, :cond_0

    goto :goto_0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2

    move v0, p1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    if-lez p3, :cond_0

    :goto_0
    sub-int v0, p1, p2

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v0, 0x0

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v7, v8, v10

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p3, v8

    const/16 v8, 0x11

    if-ne p2, v8, :cond_4

    move v2, v3

    move v6, v7

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, p1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    if-eqz v1, :cond_1

    if-nez p4, :cond_5

    move v8, v0

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v1, v2, v4}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    :cond_1
    if-eqz v5, :cond_3

    if-nez p4, :cond_2

    xor-int/lit8 v9, v0, 0x1

    :cond_2
    invoke-virtual {v5, v9}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v5, v6, v4}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    :cond_3
    return-void

    :cond_4
    move v2, v7

    move v6, v3

    move-object v1, p1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    :cond_5
    move v8, v9

    goto :goto_1
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 8

    const/4 v7, 0x0

    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_3

    if-lez v3, :cond_3

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/SemHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v0, v2, :cond_1

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->playSoundEffect(I)V

    const/4 v5, 0x1

    return v5

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    :cond_3
    return v7
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    return v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    return v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8

    const/4 v7, -0x1

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    const/16 v6, 0x42

    if-ne p1, v6, :cond_6

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v6, 0x1

    :goto_0
    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    return v7

    :cond_0
    move v5, v1

    goto :goto_0

    :cond_1
    if-ge v5, v1, :cond_2

    move v5, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_4

    move v4, v5

    :goto_1
    if-lt v4, v1, :cond_e

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    return v4

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_2
    if-gt v4, v3, :cond_e

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    return v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_8

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v6, -0x1

    :goto_3
    if-ltz v5, :cond_7

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_9

    :cond_7
    return v7

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v5, v6, -0x1

    goto :goto_3

    :cond_9
    if-le v5, v2, :cond_a

    move v5, v2

    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_c

    move v4, v5

    :goto_4
    if-gt v4, v3, :cond_e

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_b

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b

    return v4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    move v4, v5

    :goto_5
    if-lt v4, v1, :cond_e

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_d

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_d

    return v4

    :cond_d
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_e
    return v7
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 8

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    return-object v1
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->measureItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->height:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v2, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->width:I

    if-lez v2, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v15

    if-lez p3, :cond_2

    add-int/lit8 v4, v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int v5, v3, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v15, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v3, v12

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v3, v15

    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    neg-int v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    neg-int v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    :goto_0
    return-object v16

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0

    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v12, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v12, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v15, v3

    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/lit8 v3, p4, 0x14

    if-ge v13, v3, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private needToMeasureChild(Landroid/view/View;ZZ)Z
    .locals 14

    if-eqz p3, :cond_0

    move/from16 v9, p2

    :goto_0
    if-eqz v9, :cond_1

    const/4 v11, 0x1

    return v11

    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v9

    iget-boolean v11, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    if-eqz v11, :cond_3

    const/high16 v7, 0x10000000

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    invoke-direct {v8, p0}, Landroid/widget/SemHorizontalListView$ItemInfoTag;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p1, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    instance-of v11, v8, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    if-eqz v11, :cond_5

    move-object v6, v8

    check-cast v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v4

    const/4 v11, 0x1

    new-array v10, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v11, v10, v12

    const/16 v11, 0x8

    invoke-direct {p0, p1, v10, v11}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v2

    const/4 v11, 0x0

    aget-byte v0, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    if-ne v5, v11, :cond_4

    iget v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    if-ne v4, v11, :cond_4

    iget-wide v12, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    cmp-long v11, v2, v12

    if-nez v11, :cond_4

    if-lez v0, :cond_4

    const/16 v11, 0x40

    if-gt v0, v11, :cond_4

    iget v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    if-ne v0, v11, :cond_4

    iget-object v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v11}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v11

    if-nez v11, :cond_4

    iget v11, p0, Landroid/widget/SemHorizontalListView;->mLastScrollState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    const/4 v9, 0x0

    :cond_3
    :goto_1
    return v9

    :cond_4
    iput v5, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    iput v4, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    iput-wide v2, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    iput v0, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    iget-object v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    const/4 v9, 0x1

    goto :goto_1
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 9

    const/16 v8, 0x42

    const/4 v4, 0x0

    const/4 v7, -0x1

    if-ne p3, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v5, v2, :cond_4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    if-eq p2, v7, :cond_1

    if-gt p2, v0, :cond_1

    add-int/lit8 v3, p2, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_a

    :cond_0
    return v7

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    if-eq p2, v7, :cond_3

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_3

    add-int/lit8 v3, p2, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_0

    :cond_4
    return v7

    :cond_5
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v1, :cond_9

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_7

    if-eq p2, v7, :cond_6

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_6

    add-int/lit8 v3, p2, 0x1

    goto :goto_0

    :cond_6
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_0

    :cond_7
    if-eq p2, v7, :cond_8

    if-gt p2, v0, :cond_8

    add-int/lit8 v3, p2, -0x1

    goto :goto_0

    :cond_8
    move v3, v0

    goto :goto_0

    :cond_9
    return v7

    :cond_a
    if-ne p3, v8, :cond_b

    const/4 v4, 0x1

    :cond_b
    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v4

    return v4
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v2, v1, v5

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v6, Landroid/graphics/Rect;->top:I

    add-int v0, v3, v4

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v9, v10

    iget-object v9, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    if-gez p1, :cond_a

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v7

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0, v11}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_3

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_0

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v1, v9}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_3

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_3

    invoke-direct {p0, v1, v3}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    :cond_4
    invoke-virtual {p0, v11}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_5

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v9, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v0, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_7
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v9, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_9
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p0, v11}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v7

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_b

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_4
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_e

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_f

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_f

    invoke-direct {p0, v0, v3}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_b
    invoke-virtual {p0, v11}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_f

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_f

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    :cond_10
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_12

    invoke-virtual {p0, v11}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v9, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v8, v1, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_11
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p0, v11}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_6

    :cond_12
    :goto_7
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v9, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_13

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_13
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_7

    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22

    const-string/jumbo v19, "setupListItem"

    const-wide/16 v20, 0x8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->shouldShowSelector()Z

    move-result v11

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_9

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SemHorizontalListView;->needToMeasureChild(Landroid/view/View;ZZ)Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_1

    iget-boolean v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_2

    :cond_1
    iget-boolean v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    iget v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    if-nez p4, :cond_d

    const/16 v19, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/SemHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    if-eqz v17, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    if-eqz v16, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v19, p1

    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_5
    :goto_6
    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    iget v12, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->width:I

    if-lez v12, :cond_16

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    if-eqz p4, :cond_18

    add-int v7, p3, v18

    :goto_9
    if-eqz p4, :cond_19

    move/from16 v6, p3

    :goto_a
    if-eqz v14, :cond_1a

    add-int v4, p5, v9

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_6
    if-eqz p7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_7
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_e
    if-eqz p4, :cond_f

    const/16 v19, -0x1

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/SemHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_f
    const/16 v19, 0x0

    goto :goto_c

    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    iget v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    if-nez p4, :cond_12

    const/16 v19, -0x1

    :goto_d
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/SemHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_12
    const/16 v19, 0x0

    goto :goto_d

    :cond_13
    if-eqz p4, :cond_14

    const/16 v19, -0x1

    :goto_e
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/SemHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_14
    const/16 v19, 0x0

    goto :goto_e

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    :cond_16
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto/16 :goto_7

    :cond_17
    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_18
    move/from16 v7, p3

    goto/16 :goto_9

    :cond_19
    sub-int v6, p3, v18

    goto/16 :goto_a

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b

    :cond_1b
    if-eqz p4, :cond_1c

    move/from16 v6, p3

    :goto_f
    add-int v7, v6, v18

    if-eqz v14, :cond_1d

    add-int v4, p5, v9

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :cond_1c
    sub-int v6, p3, v18

    goto :goto_f

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private shouldAdjustWidthForDivider(I)Z
    .locals 23

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v19, :cond_5

    const/4 v6, 0x1

    :goto_0
    if-eqz v18, :cond_6

    const/4 v5, 0x1

    :goto_1
    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v22

    xor-int/lit8 v7, v22, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    move/from16 v0, p1

    if-ge v0, v10, :cond_9

    const/4 v14, 0x1

    :goto_4
    move/from16 v0, p1

    if-lt v0, v9, :cond_a

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    if-nez v11, :cond_0

    xor-int/lit8 v22, v14, 0x1

    if-eqz v22, :cond_13

    :cond_0
    if-nez v8, :cond_1

    xor-int/lit8 v22, v13, 0x1

    if-eqz v22, :cond_13

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    :goto_6
    if-eqz v5, :cond_2

    xor-int/lit8 v22, v15, 0x1

    if-eqz v22, :cond_13

    :cond_2
    add-int/lit8 v17, p1, 0x1

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v11, :cond_3

    if-nez v14, :cond_c

    move/from16 v0, v17

    if-lt v0, v10, :cond_c

    :cond_3
    if-nez v15, :cond_4

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v8, :cond_4

    if-nez v13, :cond_c

    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    :cond_4
    const/16 v22, 0x1

    return v22

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    :cond_c
    if-eqz v7, :cond_13

    const/16 v22, 0x1

    return v22

    :cond_d
    if-eqz v6, :cond_10

    const/16 v21, 0x1

    :goto_7
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    :goto_8
    if-nez v12, :cond_13

    add-int/lit8 v20, p1, -0x1

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v11, :cond_e

    if-nez v14, :cond_12

    move/from16 v0, v20

    if-lt v0, v10, :cond_12

    :cond_e
    if-nez v12, :cond_f

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v8, :cond_f

    if-nez v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v9, :cond_12

    :cond_f
    const/16 v22, 0x1

    return v22

    :cond_10
    const/16 v21, 0x0

    goto :goto_7

    :cond_11
    const/4 v12, 0x0

    goto :goto_8

    :cond_12
    if-eqz v7, :cond_13

    const/16 v22, 0x1

    return v22

    :cond_13
    const/16 v22, 0x0

    return v22
.end method

.method private showingLeftFadingEdge()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v2, v6, v7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v0

    add-int/lit8 v1, v6, -0x1

    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v6, :cond_3

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v2, :cond_4

    :cond_3
    :goto_1
    return v4

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method private showingRightFadingEdge()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v0

    add-int/lit8 v1, v6, -0x1

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, v6, v7

    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v6, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    :goto_1
    return v4

    :cond_4
    move v4, v5

    goto :goto_1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5

    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5

    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v33, :cond_a

    const/4 v12, 0x1

    :goto_0
    if-eqz v32, :cond_b

    const/4 v11, 0x1

    :goto_1
    if-lez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_c

    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-eqz v11, :cond_15

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mPaddingTop:I

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mTop:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v39, v26, v39

    add-int/lit8 v18, v39, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_d

    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v39

    xor-int/lit8 v15, v39, 0x1

    :goto_3
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x22

    const/16 v40, 0x22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mLeft:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    move/from16 v40, v0

    add-int v29, v39, v40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_18

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    move/from16 v37, v0

    if-lez v8, :cond_4

    if-gez v37, :cond_4

    if-eqz v12, :cond_e

    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_4
    :goto_4
    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v0, v8, :cond_14

    add-int v27, v16, v21

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    const/16 v24, 0x1

    :goto_6
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    const/16 v23, 0x1

    :goto_7
    if-nez v20, :cond_5

    xor-int/lit8 v39, v24, 0x1

    if-eqz v39, :cond_9

    :cond_5
    if-nez v17, :cond_6

    xor-int/lit8 v39, v23, 0x1

    if-eqz v39, :cond_9

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v36

    add-int/lit8 v39, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    const/16 v25, 0x1

    :goto_8
    if-eqz v10, :cond_9

    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    if-eqz v11, :cond_12

    move/from16 v39, v25

    :goto_9
    xor-int/lit8 v39, v39, 0x1

    if-eqz v39, :cond_9

    add-int/lit8 v30, v27, 0x1

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v20, :cond_7

    if-nez v24, :cond_13

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    :cond_7
    if-nez v25, :cond_8

    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v17, :cond_8

    if-nez v23, :cond_13

    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    :cond_8
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_9
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_e
    if-eqz v10, :cond_4

    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    neg-int v0, v9

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_6

    :cond_10
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_11
    const/16 v25, 0x0

    goto/16 :goto_8

    :cond_12
    const/16 v39, 0x0

    goto :goto_9

    :cond_13
    if-eqz v15, :cond_9

    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    move/from16 v40, v0

    add-int v31, v39, v40

    if-eqz v11, :cond_15

    add-int v39, v16, v8

    move/from16 v0, v39

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_15

    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v31

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_15
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v39, v0

    if-eqz v39, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    invoke-super/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    move-object/from16 v39, v0

    if-eqz v39, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_17
    return-void

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    move/from16 v37, v0

    if-lez v8, :cond_19

    if-eqz v12, :cond_19

    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_19
    if-eqz v12, :cond_1f

    const/16 v38, 0x1

    :goto_c
    move/from16 v21, v38

    :goto_d
    move/from16 v0, v21

    if-ge v0, v8, :cond_24

    add-int v27, v16, v21

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_20

    const/16 v24, 0x1

    :goto_e
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_21

    const/16 v23, 0x1

    :goto_f
    if-nez v20, :cond_1a

    xor-int/lit8 v39, v24, 0x1

    if-eqz v39, :cond_1e

    :cond_1a
    if-nez v17, :cond_1b

    xor-int/lit8 v39, v23, 0x1

    if-eqz v39, :cond_1e

    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v28

    if-eqz v10, :cond_1e

    move/from16 v0, v28

    if-le v0, v13, :cond_1e

    move/from16 v0, v21

    move/from16 v1, v38

    if-ne v0, v1, :cond_22

    const/16 v22, 0x1

    :goto_10
    add-int/lit8 v35, v27, -0x1

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_23

    if-nez v20, :cond_1c

    if-nez v24, :cond_23

    move/from16 v0, v35

    move/from16 v1, v19

    if-lt v0, v1, :cond_23

    :cond_1c
    if-nez v22, :cond_1d

    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_23

    if-nez v17, :cond_1d

    if-nez v23, :cond_23

    move/from16 v0, v35

    move/from16 v1, v18

    if-ge v0, v1, :cond_23

    :cond_1d
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v39, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_1e
    :goto_11
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    :cond_1f
    const/16 v38, 0x0

    goto :goto_c

    :cond_20
    const/16 v24, 0x0

    goto :goto_e

    :cond_21
    const/16 v23, 0x0

    goto :goto_f

    :cond_22
    const/16 v22, 0x0

    goto :goto_10

    :cond_23
    if-eqz v15, :cond_1e

    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_11

    :cond_24
    if-lez v8, :cond_15

    if-lez v37, :cond_15

    if-eqz v11, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    iput v3, v6, Landroid/graphics/Rect;->left:I

    add-int v39, v3, v37

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_b

    :cond_25
    if-eqz v10, :cond_15

    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v39, v29, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/SemHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    :cond_2
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    if-ge v0, v1, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    if-ge v0, v1, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method fillGap(Z)V
    .locals 7

    const/16 v6, 0x22

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingLeft()I

    move-result v1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    :goto_0
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    :goto_1
    return-void

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingRight()I

    move-result v2

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    :goto_2
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_2
.end method

.method fillGapRTL(Z)V
    .locals 7

    const/16 v6, 0x22

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingLeft()I

    move-result v1

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    :goto_0
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    :goto_1
    return-void

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingRight()I

    move-result v2

    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    :goto_2
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_2

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v0, -0x1

    :goto_3
    if-ltz v1, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_6

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    const/4 v3, -0x1

    return v3
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method fullScroll(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    if-ltz v2, :cond_0

    iput v5, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getCheckedItemIds()[J

    move-result-object v8

    return-object v8

    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v5, v3, [J

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v2, v1

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    return-object v5

    :cond_2
    new-array v6, v2, [J

    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    return-object v6

    :cond_3
    new-array v8, v10, [J

    return-object v8

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getWidthForPosition(I)I
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getWidthForPosition(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->shouldAdjustWidthForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    :cond_0
    return v0
.end method

.method public isOpaque()Z
    .locals 8

    const/4 v7, 0x0

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_d

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v6

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_1
    sub-int v3, v6, v5

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v3, :cond_4

    :cond_1
    return v7

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mPaddingRight:I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v5, v2, :cond_d

    :cond_5
    return v7

    :cond_6
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    goto :goto_2

    :cond_7
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    :goto_3
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_a

    :cond_8
    return v7

    :cond_9
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v6

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_4
    sub-int v3, v6, v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v3, :cond_d

    :cond_b
    return v7

    :cond_c
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mPaddingRight:I

    goto :goto_4

    :cond_d
    return v4
.end method

.method protected layoutChildren()V
    .locals 40

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    if-eqz v13, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :cond_1
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mLeft:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    sub-int v9, v4, v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v15

    const/16 v27, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v30, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v27, v4, v38

    if-ltz v27, :cond_3

    move/from16 v0, v27

    if-ge v0, v15, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    if-ltz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    move/from16 v38, v0

    sub-int v7, v4, v38

    :cond_4
    add-int v4, v27, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_5
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->handleDataChanged()V

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-nez v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :cond_7
    return-void

    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v27, v4, v38

    if-ltz v27, :cond_5

    move/from16 v0, v27

    if-ge v0, v15, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/widget/ListAdapter;->getCount()I

    move-result v38

    move/from16 v0, v38

    if-eq v4, v0, :cond_a

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "The content of the adapter has changed but SemHorizontalListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in SemHorizontalListView("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getId()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ") with Adapter("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ")]"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    if-nez v13, :cond_9

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :cond_9
    throw v4

    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v36

    if-eqz v36, :cond_e

    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_b

    const/16 v28, 0x1

    :cond_b
    if-eqz v18, :cond_e

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_d

    :cond_c
    move-object/from16 v11, v19

    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    :cond_e
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_11

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move-object/from16 v20, v24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->requestFocus()Z

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v33, v0

    if-eqz v16, :cond_12

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    if-ge v0, v15, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v38, v17, v25

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_12
    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->fillActiveViews(II)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->detachAllViewsFromParent()V

    invoke-virtual/range {v33 .. v33}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_1

    if-nez v15, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v4, :cond_21

    const/4 v4, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v35

    :goto_2
    invoke-virtual/range {v33 .. v33}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v35, :cond_31

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v4, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocus()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_30

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_14

    if-eqz v21, :cond_14

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_2e

    :cond_14
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->requestFocus()Z

    move-result v22

    :goto_3
    if-nez v22, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_15

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->clearFocus()V

    :cond_15
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    :goto_4
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    :cond_16
    :goto_5
    if-eqz v36, :cond_17

    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v29

    if-nez v29, :cond_39

    if-eqz v11, :cond_38

    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v32

    if-eqz v10, :cond_37

    if-eqz v32, :cond_37

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v37

    const/16 v4, 0x40

    const/16 v38, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_17
    :goto_6
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onFinishTemporaryDetach()V

    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v13, :cond_1b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :cond_1b
    return-void

    :pswitch_2
    if-eqz v6, :cond_1c

    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Landroid/widget/SemHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v35

    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v35

    goto :goto_7

    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_1f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v35

    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_2

    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v35

    goto :goto_8

    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/SemHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_21
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v4, :cond_23

    const/4 v4, 0x0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v4, :cond_26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-nez v5, :cond_25

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_25
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    goto :goto_9

    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_28

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v30, :cond_27

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_27
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v9

    goto :goto_a

    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v4, :cond_2b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_2b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-nez v5, :cond_2a

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_2a
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_b

    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v30, :cond_2c

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_2c
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_c

    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_2e
    const/16 v22, 0x1

    goto/16 :goto_3

    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_4

    :cond_30
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_4

    :cond_31
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    const/16 v38, 0x1

    move/from16 v0, v38

    if-eq v4, v0, :cond_33

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    const/16 v38, 0x2

    move/from16 v0, v38

    if-ne v4, v0, :cond_34

    const/16 v26, 0x1

    :goto_d
    if-eqz v26, :cond_35

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    :cond_32
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v21, :cond_16

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_5

    :cond_33
    const/16 v26, 0x1

    goto :goto_d

    :cond_34
    const/16 v26, 0x0

    goto :goto_d

    :cond_35
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    const/16 v38, -0x1

    move/from16 v0, v38

    if-eq v4, v0, :cond_36

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_e

    :cond_36
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_e

    :cond_37
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_6

    :cond_38
    const/4 v4, -0x1

    if-eq v12, v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v4, v12, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    const/16 v39, 0x0

    move/from16 v0, v39

    move/from16 v1, v38

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    if-eqz v34, :cond_17

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_6

    :cond_39
    const/4 v4, -0x1

    if-eq v12, v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v4, v12, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    const/16 v39, 0x0

    move/from16 v0, v39

    move/from16 v1, v38

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v31

    if-eqz v28, :cond_3a

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getId()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    :goto_f
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_17

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->clearAccessibilityFocus()V

    if-eqz v34, :cond_17

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_6

    :cond_3a
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v34

    goto :goto_f

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-ge p1, v1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_2
    if-ge p1, v1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_3
    if-ltz p1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_5
    if-ltz p1, :cond_6

    if-lt p1, v1, :cond_7

    :cond_6
    return v4

    :cond_7
    return p1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    if-eq v1, v5, :cond_2

    return v1

    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v5, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_6

    if-eqz p3, :cond_4

    add-int/lit8 v3, p2, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    if-ge p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-lt p2, p1, :cond_a

    return v5

    :cond_4
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-le p2, p1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    if-gt p2, p1, :cond_a

    return v5

    :cond_6
    if-eqz p3, :cond_8

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_2
    if-le p2, p1, :cond_7

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_7
    if-gt p2, p1, :cond_a

    return v5

    :cond_8
    add-int/lit8 v3, p2, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_3
    if-ge p2, p1, :cond_9

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    if-lt p2, p1, :cond_a

    return v5

    :cond_a
    return p2
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 12

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    iget-object v10, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    return v10

    :cond_0
    iget-object v10, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v9, v10, v11

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    if-lez v10, :cond_4

    iget-object v10, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    :goto_0
    const/4 v6, 0x0

    const/4 v10, -0x1

    if-ne p3, v10, :cond_1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    :cond_1
    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v8

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    move v4, p2

    :goto_1
    if-gt v4, p3, :cond_9

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4, p1}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    if-lez v4, :cond_2

    iget-boolean v10, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_5

    sub-int/2addr v9, v3

    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    if-ltz p5, :cond_6

    move/from16 v0, p5

    if-le v4, v0, :cond_6

    if-lez v6, :cond_6

    move/from16 v0, p4

    if-eq v9, v0, :cond_6

    :goto_3
    return v6

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    add-int/2addr v9, v3

    goto :goto_2

    :cond_6
    move/from16 v6, p4

    goto :goto_3

    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    move v6, v9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    return v9
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->removeAllViews()V

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15

    invoke-super/range {p0 .. p3}, Landroid/widget/SemHorizontalAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget v12, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    iget v13, p0, Landroid/widget/SemHorizontalListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    :cond_0
    iget-object v11, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const v9, 0x7fffffff

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_3

    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/SemHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    if-ge v6, v9, :cond_1

    move v9, v6

    move v5, v8

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    :cond_3
    if-ltz v5, :cond_5

    iget v12, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    :goto_2
    if-eqz p1, :cond_4

    iget-object v12, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v12, :cond_4

    new-instance v12, Landroid/widget/SemHorizontalListView$2;

    invoke-direct {v12, p0}, Landroid/widget/SemHorizontalListView$2;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v12}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v3, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectionModeForAccessibility()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-eqz v7, :cond_0

    iget v0, v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalListView;->isItemChecked(I)Z

    move-result v5

    const/4 v0, 0x0

    move v2, p2

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v12, :cond_0

    if-nez v10, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v2, p2}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/SemHorizontalListView;->combineMeasuredStates(II)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_1
    if-nez v10, :cond_5

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v11, v0, v1

    :goto_1
    if-nez v12, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    :cond_2
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_3

    move-object v0, p0

    move v1, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    :cond_3
    invoke-virtual {p0, v4, v11}, Landroid/widget/SemHorizontalListView;->setMeasuredDimension(II)V

    iput p2, p0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    return-void

    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v11, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v0, v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    sub-int v5, p1, v5

    sub-int v5, v1, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    :goto_0
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    if-nez v5, :cond_0

    new-instance v5, Landroid/widget/SemHorizontalListView$FocusSelector;

    invoke-direct {v5, p0, v7}, Landroid/widget/SemHorizontalListView$FocusSelector;-><init>(Landroid/widget/SemHorizontalListView;Landroid/widget/SemHorizontalListView$FocusSelector;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    :cond_0
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    invoke-virtual {v5, v0, v3}, Landroid/widget/SemHorizontalListView$FocusSelector;->setup(II)Landroid/widget/SemHorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->onSizeChanged(IIII)V

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v5, v4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalListView$3;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$3;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method pageScroll(I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_5

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    if-ltz v1, :cond_5

    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    if-eqz v2, :cond_0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_0

    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iput v7, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_2
    return v7

    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    return v6

    :cond_5
    return v6
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    return v0

    :cond_2
    return v2
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    return v0

    :cond_2
    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getScrollX()I

    move-result v6

    add-int v7, v6, v12

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingLeftFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    iget v13, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v8, v4, :cond_1

    :cond_0
    add-int/2addr v6, v4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingRightFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    iget v13, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v4

    if-ge v13, v14, :cond_3

    :cond_2
    sub-int/2addr v7, v4

    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-le v13, v6, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_6

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v6

    add-int/lit8 v11, v13, 0x0

    :goto_0
    sub-int v3, v9, v7

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_5

    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, p0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_5
    return v10

    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    add-int/lit8 v11, v13, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-ge v13, v6, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v13, v7, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_8

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v7, v13

    rsub-int/lit8 v11, v13, 0x0

    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v2, v5, v6

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    rsub-int/lit8 v11, v13, 0x0

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_1
    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/SemHorizontalListView;->mOldSelectedRowId:J

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkFocus()V

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v5}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    return-void

    :cond_3
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v4, v4}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_1

    :cond_7
    iput-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    :goto_0
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void

    :cond_1
    iput v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setChildrenDrawingOrderEnabled(Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    new-instance v1, Landroid/widget/SemHorizontalListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalListView$1;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput v2, p0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelection(I)V

    :goto_0
    return-void

    :cond_1
    iput v0, p0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromStart(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    :goto_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_2

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mSyncRowId:J

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    :cond_4
    return-void

    :cond_5
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    :goto_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_2

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mSyncRowId:J

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    :cond_4
    return-void

    :cond_5
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldCorrectTooHigh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
