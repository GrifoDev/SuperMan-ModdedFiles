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

.field private mIsDeviceDefaultTheme:Z

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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 214
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 272
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 128
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 129
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 143
    iput-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 145
    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    .line 147
    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mIsDeviceDefaultTheme:Z

    .line 150
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 153
    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    .line 157
    new-instance v6, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-direct {v6, v7}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;-><init>(Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;)V

    iput-object v6, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    .line 275
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    .line 274
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 277
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 279
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 280
    new-instance v6, Landroid/widget/ArrayAdapter;

    .line 281
    const v7, 0x1090003

    .line 280
    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 285
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :cond_1
    const/4 v6, 0x5

    .line 290
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 292
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 293
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_2
    const/4 v6, 0x6

    .line 296
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 298
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 299
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_3
    const/4 v6, 0x2

    .line 303
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 305
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 306
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->setDividerHeight(I)V

    .line 309
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 310
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 312
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    invoke-static {p1}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsDeviceDefaultTheme:Z

    .line 316
    if-eqz p2, :cond_5

    .line 317
    const-string/jumbo v6, "http://schemas.android.samsung.com.samsung.android"

    .line 318
    const-string/jumbo v7, "fixed_size_items"

    .line 317
    invoke-interface {p2, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    .line 271
    :goto_0
    return-void

    .line 320
    :cond_5
    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    goto :goto_0
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 4126
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    .line 4127
    add-int/lit8 v2, p2, 0x1

    .line 4129
    .local v2, "abovePosition":I
    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 4130
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 4132
    .local v3, "edgeOfNewChild":I
    if-eqz v1, :cond_0

    .line 4133
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 4134
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    .line 4133
    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4136
    :cond_0
    return-object v1

    .line 4128
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "abovePosition":I
    .end local v3    # "edgeOfNewChild":I
    :cond_1
    add-int/lit8 v2, p2, -0x1

    .restart local v2    # "abovePosition":I
    goto :goto_0
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 4140
    add-int/lit8 v2, p2, 0x1

    .line 4141
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 4142
    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 4143
    .local v3, "edgeOfNewChild":I
    if-eqz p1, :cond_0

    .line 4144
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 4146
    :cond_0
    if-eqz v1, :cond_1

    .line 4147
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 4148
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    .line 4147
    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4150
    :cond_1
    return-object v1
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 337
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 340
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 343
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_6

    .line 346
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "child":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 353
    .local v2, "delta":I
    :goto_0
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 356
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_4

    .line 357
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 361
    :cond_0
    :goto_1
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_5

    .line 362
    if-lez v2, :cond_1

    .line 363
    const/4 v2, 0x0

    .line 399
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 400
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 336
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 351
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .restart local v2    # "delta":I
    goto :goto_0

    .line 359
    :cond_4
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_1

    .line 365
    :cond_5
    if-gez v2, :cond_1

    .line 368
    const/4 v2, 0x0

    goto :goto_2

    .line 373
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_6
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .restart local v0    # "child":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_8

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .line 378
    .restart local v2    # "delta":I
    :goto_3
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_7

    .line 381
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_9

    .line 382
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 387
    :cond_7
    :goto_4
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_a

    .line 388
    if-gez v2, :cond_1

    .line 389
    const/4 v2, 0x0

    goto :goto_2

    .line 377
    .end local v2    # "delta":I
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .restart local v2    # "delta":I
    goto :goto_3

    .line 384
    :cond_9
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_4

    .line 391
    :cond_a
    if-lez v2, :cond_1

    .line 394
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 3625
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v5, v10, v11

    .line 3626
    .local v5, "listRight":I
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 3628
    .local v4, "listLeft":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 3630
    .local v7, "numChildren":I
    const/16 v10, 0x42

    if-ne p1, v10, :cond_b

    .line 3631
    add-int/lit8 v3, v7, -0x1

    .line 3632
    .local v3, "indexToMakeVisible":I
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_0

    .line 3633
    const/4 v3, 0x0

    .line 3635
    :cond_0
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1

    .line 3636
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 3638
    :cond_1
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_2

    .line 3639
    :goto_0
    if-gez v3, :cond_3

    .line 3641
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 3642
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3643
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_0

    .line 3646
    :cond_2
    :goto_1
    if-gt v7, v3, :cond_3

    .line 3648
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 3649
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3652
    :cond_3
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 3653
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3655
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 3656
    .local v2, "goalRight":I
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_5

    if-lez v8, :cond_4

    .line 3657
    :goto_2
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int v2, v5, v10

    .line 3660
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v2, :cond_6

    .line 3662
    const/4 v10, 0x0

    return v10

    .line 3656
    :cond_5
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_4

    goto :goto_2

    .line 3665
    :cond_6
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 3666
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_7

    .line 3668
    const/4 v10, 0x0

    return v10

    .line 3671
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v2

    .line 3673
    .local v0, "amountToScroll":I
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_9

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v10, :cond_8

    .line 3675
    :goto_3
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v5

    .line 3676
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3679
    .end local v6    # "max":I
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10

    .line 3673
    :cond_9
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v10, v11, :cond_8

    goto :goto_3

    .line 3675
    :cond_a
    add-int/lit8 v10, v7, -0x1

    goto :goto_4

    .line 3681
    .end local v0    # "amountToScroll":I
    .end local v2    # "goalRight":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    .line 3682
    .restart local v3    # "indexToMakeVisible":I
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_c

    .line 3683
    add-int/lit8 v3, v7, -0x1

    .line 3685
    :cond_c
    const/4 v10, -0x1

    if-eq p2, v10, :cond_d

    .line 3686
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 3688
    :cond_d
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_e

    .line 3689
    :goto_5
    if-gt v7, v3, :cond_f

    .line 3691
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 3692
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 3695
    :cond_e
    :goto_6
    if-gez v3, :cond_f

    .line 3697
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 3698
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3699
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_6

    .line 3702
    :cond_f
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 3703
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3704
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 3705
    .local v1, "goalLeft":I
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_11

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_10

    .line 3706
    :goto_7
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int v1, v4, v10

    .line 3708
    :cond_10
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v1, :cond_12

    .line 3710
    const/4 v10, 0x0

    return v10

    .line 3705
    :cond_11
    if-lez v8, :cond_10

    goto :goto_7

    .line 3713
    :cond_12
    const/4 v10, -0x1

    if-eq p2, v10, :cond_13

    .line 3714
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_13

    .line 3716
    const/4 v10, 0x0

    return v10

    .line 3719
    :cond_13
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v1, v10

    .line 3720
    .restart local v0    # "amountToScroll":I
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_15

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v10, v11, :cond_14

    .line 3722
    :goto_8
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_16

    add-int/lit8 v10, v7, -0x1

    :goto_9
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v4, v10

    .line 3723
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3725
    .end local v6    # "max":I
    :cond_14
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10

    .line 3720
    :cond_15
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v10, :cond_14

    goto :goto_8

    .line 3722
    :cond_16
    const/4 v10, 0x0

    goto :goto_9
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3934
    const/4 v0, 0x0

    .line 3935
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3936
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3937
    const/16 v2, 0x11

    if-ne p1, v2, :cond_2

    .line 3938
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 3939
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3940
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3941
    :goto_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3953
    :cond_0
    :goto_1
    return v0

    .line 3940
    :cond_1
    if-lez p3, :cond_0

    goto :goto_0

    .line 3945
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3946
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    .line 3947
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    .line 3948
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    if-lez p3, :cond_0

    .line 3949
    :goto_2
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 3948
    :cond_3
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    goto :goto_2
.end method

.method private arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 3832
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    .line 3834
    .local v12, "selectedView":Landroid/view/View;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3835
    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3836
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3861
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 3862
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/SemHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3866
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 3867
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v11

    .line 3868
    .local v11, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    .line 3869
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_9

    if-ge v11, v9, :cond_9

    .line 3871
    :cond_0
    const/4 v14, 0x0

    return-object v14

    .line 3838
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v9    # "positionOfNewFocus":I
    .end local v11    # "selectablePosition":I
    :cond_1
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    .line 3839
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v14, :cond_2

    const/4 v3, 0x1

    .line 3840
    .local v3, "leftFadingEdgeShowing":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    .line 3841
    if-eqz v3, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    .line 3840
    :goto_2
    add-int v4, v15, v14

    .line 3843
    .local v4, "listLeft":I
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v4, :cond_4

    .line 3844
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 3846
    .local v13, "xSearchPoint":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3858
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 3839
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "xSearchPoint":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "leftFadingEdgeShowing":Z
    goto :goto_1

    .line 3841
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 3845
    .restart local v4    # "listLeft":I
    :cond_4
    move v13, v4

    .restart local v13    # "xSearchPoint":I
    goto :goto_3

    .line 3849
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    .end local v13    # "xSearchPoint":I
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v14, v15, :cond_6

    const/4 v10, 0x1

    .line 3850
    .local v10, "rightFadingEdgeShowing":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v14, v15

    .line 3851
    if-eqz v10, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    .line 3850
    :goto_6
    sub-int v5, v15, v14

    .line 3853
    .local v5, "listRight":I
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v14, v5, :cond_8

    .line 3854
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    .line 3856
    .restart local v13    # "xSearchPoint":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 3849
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .end local v13    # "xSearchPoint":I
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "rightFadingEdgeShowing":Z
    goto :goto_5

    .line 3851
    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 3855
    .restart local v5    # "listRight":I
    :cond_8
    move v13, v5

    .restart local v13    # "xSearchPoint":I
    goto :goto_7

    .line 3870
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .end local v13    # "xSearchPoint":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    .restart local v11    # "selectablePosition":I
    :cond_9
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-gt v11, v9, :cond_0

    .line 3875
    .end local v11    # "selectablePosition":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/SemHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    .line 3877
    .local v2, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v6

    .line 3878
    .local v6, "maxScrollAmount":I
    if-ge v2, v6, :cond_b

    .line 3880
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3881
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v2}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 3882
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v14

    .line 3883
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3888
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3889
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 3890
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v14

    .line 3893
    .end local v2    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    return-object v14
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 3408
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_0

    .line 3409
    return v9

    .line 3412
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 3413
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 3415
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/SemHorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 3416
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/SemHorizontalListView;->amountToScroll(II)I

    move-result v0

    .line 3419
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 3420
    .local v1, "focusResult":Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
    :cond_1
    if-eqz v1, :cond_2

    .line 3421
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 3422
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 3425
    :cond_2
    if-eqz v1, :cond_b

    const/4 v3, 0x1

    .line 3426
    .local v3, "needToRedraw":Z
    :goto_0
    if-eq v4, v10, :cond_4

    .line 3427
    if-eqz v1, :cond_c

    move v7, v8

    :goto_1
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/SemHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3428
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 3429
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 3430
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 3431
    move v5, v4

    .line 3432
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 3435
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3436
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 3437
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3440
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 3441
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 3444
    :cond_4
    if-lez v0, :cond_5

    .line 3445
    const/16 v7, 0x11

    if-ne p1, v7, :cond_d

    .end local v0    # "amountToScroll":I
    :goto_2
    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    .line 3446
    const/4 v3, 0x1

    .line 3451
    :cond_5
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    .line 3452
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    .line 3451
    if-eqz v7, :cond_7

    .line 3453
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3454
    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 3455
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3460
    .end local v2    # "focused":Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    .line 3461
    invoke-direct {p0, v6, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3471
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_8
    :goto_3
    if-eqz v3, :cond_f

    .line 3472
    if-eqz v6, :cond_9

    .line 3473
    invoke-virtual {p0, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3474
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 3476
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3477
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3479
    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 3480
    return v8

    .line 3425
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    .restart local v6    # "selectedView":Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "needToRedraw":Z
    goto :goto_0

    :cond_c
    move v7, v9

    .line 3427
    goto :goto_1

    .line 3445
    :cond_d
    neg-int v0, v0

    goto :goto_2

    .line 3462
    .end local v0    # "amountToScroll":I
    :cond_e
    const/4 v6, 0x0

    .line 3463
    .local v6, "selectedView":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 3464
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 3468
    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_3

    .line 3483
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_f
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

    .prologue
    .line 698
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 699
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 701
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 702
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 703
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 704
    .local v3, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 705
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 701
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3041
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3045
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v3, :cond_0

    .line 3046
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 3049
    :cond_0
    const/4 v2, 0x0

    .line 3050
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3052
    .local v0, "action":I
    if-eq v0, v4, :cond_1

    .line 3053
    sparse-switch p1, :sswitch_data_0

    .line 3173
    .end local v2    # "handled":Z
    :cond_1
    :goto_0
    :sswitch_0
    if-eqz v2, :cond_18

    .line 3174
    return v4

    .line 3042
    .end local v0    # "action":I
    :cond_2
    return v5

    .line 3055
    .restart local v0    # "action":I
    .restart local v2    # "handled":Z
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3056
    :cond_3
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 3057
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 3058
    .local v2, "handled":Z
    if-nez v2, :cond_1

    .end local v2    # "handled":Z
    :goto_1
    move v1, p2

    .line 3059
    .end local p2    # "count":I
    .local v1, "count":I
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_1

    .line 3060
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3061
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_1

    .line 3067
    :cond_4
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3068
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_0

    .local v2, "handled":Z
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 3073
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3074
    :cond_6
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 3075
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 3076
    .local v2, "handled":Z
    if-nez v2, :cond_1

    .end local v2    # "handled":Z
    :goto_2
    move v1, p2

    .line 3077
    .end local p2    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_1

    .line 3078
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3079
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_2

    .line 3085
    :cond_7
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3086
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_0

    .local v2, "handled":Z
    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    .line 3091
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3092
    :cond_9
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 3093
    const/16 v3, 0x21

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 3098
    .local v2, "handled":Z
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3099
    :cond_a
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 3100
    const/16 v3, 0x82

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 3106
    .local v2, "handled":Z
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3107
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 3108
    .local v2, "handled":Z
    if-nez v2, :cond_1

    .line 3109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 3110
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->keyPressed()V

    .line 3111
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 3117
    :sswitch_6
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3118
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3119
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v2

    .line 3123
    .end local v2    # "handled":Z
    :cond_c
    :goto_3
    const/4 v2, 0x1

    .restart local v2    # "handled":Z
    goto/16 :goto_0

    .line 3119
    :cond_d
    const/4 v2, 0x1

    goto :goto_3

    .line 3120
    :cond_e
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3121
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_3

    .local v2, "handled":Z
    :cond_f
    const/4 v2, 0x1

    goto :goto_3

    .line 3128
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3129
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3130
    :cond_11
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3131
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3136
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3137
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3138
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3139
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3144
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3145
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_16
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3150
    :sswitch_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3151
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .local v2, "handled":Z
    :cond_17
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3177
    .end local v2    # "handled":Z
    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3178
    return v4

    .line 3181
    :cond_19
    packed-switch v0, :pswitch_data_0

    .line 3192
    return v5

    .line 3183
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 3186
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 3189
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 3053
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

    .line 3181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 1832
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    .line 1833
    .local v4, "lastPosition":I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_2

    if-lez p1, :cond_2

    .line 1836
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1839
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1842
    .local v5, "lastRight":I
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    .line 1846
    .local v0, "end":I
    sub-int v6, v0, v5

    .line 1847
    .local v6, "rightOffset":I
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1848
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1852
    .local v2, "firstLeft":I
    if-lez v6, :cond_2

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_2

    .line 1853
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1855
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1858
    :cond_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 1859
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1862
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1864
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1829
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "lastRight":I
    .end local v6    # "rightOffset":I
    :cond_2
    return-void
.end method

.method private correctTooHighRTL(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    const/4 v10, 0x0

    .line 1874
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1875
    .local v5, "lastPosition":I
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    if-lez p1, :cond_2

    .line 1878
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1881
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1883
    .local v4, "lastLeft":I
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .line 1886
    .local v7, "start":I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1890
    .local v0, "end":I
    sub-int v6, v4, v7

    .line 1892
    .local v6, "leftOffset":I
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1894
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1900
    .local v2, "firstRight":I
    if-lez v6, :cond_2

    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v8, :cond_0

    if-le v2, v0, :cond_2

    .line 1902
    :cond_0
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_1

    .line 1904
    sub-int v8, v2, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1907
    :cond_1
    neg-int v8, v6

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 1909
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v8, :cond_2

    .line 1911
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 1913
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1870
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstRight":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastLeft":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 1932
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1935
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1938
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1941
    .local v2, "firstLeft":I
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .line 1944
    .local v7, "start":I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1948
    .local v0, "end":I
    sub-int v6, v2, v7

    .line 1949
    .local v6, "leftOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1950
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1951
    .local v5, "lastRight":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v4, v8, -0x1

    .line 1955
    .local v4, "lastPosition":I
    if-lez v6, :cond_2

    .line 1956
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    .line 1957
    :cond_0
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    .line 1959
    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1962
    :cond_1
    neg-int v8, v6

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 1963
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    .line 1966
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1968
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1929
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastPosition":I
    .end local v5    # "lastRight":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_2
    :goto_0
    return-void

    .line 1970
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstLeft":I
    .restart local v3    # "lastChild":Landroid/view/View;
    .restart local v4    # "lastPosition":I
    .restart local v5    # "lastRight":I
    .restart local v6    # "leftOffset":I
    .restart local v7    # "start":I
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_2

    .line 1971
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private correctTooLowRTL(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 1981
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1984
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1987
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1990
    .local v2, "firstRight":I
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 1993
    .local v7, "start":I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1997
    .local v0, "end":I
    sub-int v6, v0, v2

    .line 1998
    .local v6, "rightOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1999
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2000
    .local v4, "lastLeft":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 2005
    .local v5, "lastPosition":I
    if-lez v6, :cond_2

    .line 2007
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v4, v8, :cond_3

    .line 2009
    :cond_0
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 2011
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2014
    :cond_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 2016
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 2018
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 2020
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1976
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstRight":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastLeft":I
    .end local v5    # "lastPosition":I
    .end local v6    # "rightOffset":I
    .end local v7    # "start":I
    :cond_2
    :goto_0
    return-void

    .line 2022
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstRight":I
    .restart local v3    # "lastChild":Landroid/view/View;
    .restart local v4    # "lastLeft":I
    .restart local v5    # "lastPosition":I
    .restart local v6    # "rightOffset":I
    .restart local v7    # "start":I
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 2023
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3964
    const/4 v0, 0x0

    .line 3965
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3966
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3967
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3968
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 3969
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 3973
    :cond_0
    :goto_0
    return v0

    .line 3970
    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    .line 3971
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .locals 3
    .param p1, "nextLeft"    # I

    .prologue
    const/4 v2, 0x0

    .line 1035
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1036
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1037
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1038
    iput v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1040
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .prologue
    const/4 v3, 0x1

    .line 1064
    sub-int v8, p2, p1

    .line 1066
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1069
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    .line 1068
    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1070
    .local v6, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1072
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1073
    .local v7, "selWidth":I
    if-gt v7, v8, :cond_0

    .line 1074
    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1077
    :cond_0
    invoke-direct {p0, v6, v1}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 1079
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1080
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    .line 1087
    :goto_0
    return-object v6

    .line 1081
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_0

    .line 1083
    :cond_2
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_0

    .line 1084
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromRight(I)Landroid/view/View;
    .locals 4
    .param p1, "nextRight"    # I

    .prologue
    const/4 v3, 0x0

    .line 1043
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v1, -0x1

    .line 1044
    .local v0, "last":I
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1045
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1046
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v1, :cond_0

    .line 1047
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1050
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .prologue
    .line 1135
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v7

    .line 1136
    .local v7, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1140
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    .line 1142
    .local v8, "leftSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v10

    .line 1145
    .local v10, "rightSelectionPixel":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 1149
    .local v11, "sel":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v10, :cond_1

    .line 1152
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v1, v8

    .line 1156
    .local v12, "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v1, v10

    .line 1157
    .local v13, "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1160
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v11, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1176
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_0
    :goto_0
    invoke-direct {p0, v11, v2}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 1178
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_3

    .line 1179
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    .line 1186
    :goto_1
    return-object v11

    .line 1161
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v8, :cond_0

    .line 1164
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v8, v1

    .line 1168
    .restart local v12    # "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v10, v1

    .line 1169
    .restart local v13    # "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1172
    .restart local v9    # "offset":I
    invoke-virtual {v11, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 1180
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_1

    .line 1182
    :cond_3
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_1

    .line 1183
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    const/4 v3, 0x0

    .line 973
    const/4 v8, 0x0

    .line 975
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 976
    .local v7, "end":I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 977
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 980
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 982
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 983
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 985
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 986
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 987
    if-eqz v5, :cond_1

    .line 988
    move-object v8, v6

    .line 991
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 982
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 994
    .end local v5    # "selected":Z
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 995
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setVisibleRangeHint(II)V

    .line 996
    return-object v8
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1098
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1099
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    .line 1100
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 1101
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 1102
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1103
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 1097
    :goto_0
    return-void

    .line 1105
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 1106
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1107
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    goto :goto_0

    .line 1111
    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1112
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1113
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1114
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_0

    .line 1116
    :cond_2
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1117
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1118
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillLeftRTL(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    .line 999
    const/4 v8, 0x0

    .line 1001
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 1002
    .local v7, "end":I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 1003
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1006
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 1008
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 1010
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1012
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 1013
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 1015
    if-eqz v5, :cond_1

    .line 1016
    move-object v8, v6

    .line 1019
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1008
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 1023
    .end local v5    # "selected":Z
    :cond_3
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setVisibleRangeHint(II)V

    .line 1024
    return-object v8
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    .line 906
    const/4 v8, 0x0

    .line 908
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int v7, v0, v1

    .line 909
    .local v7, "end":I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 910
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 913
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 915
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 916
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 918
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 919
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 920
    if-eqz v5, :cond_1

    .line 921
    move-object v8, v6

    .line 924
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 915
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 927
    .end local v5    # "selected":Z
    :cond_3
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setVisibleRangeHint(II)V

    .line 928
    return-object v8
.end method

.method private fillRightRTL(II)Landroid/view/View;
    .locals 10
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    .line 932
    const/4 v9, 0x0

    .line 934
    .local v9, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int v7, v0, v1

    .line 935
    .local v7, "end":I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 936
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 939
    :cond_0
    const/4 v8, 0x0

    .line 940
    .end local v9    # "selectedView":Landroid/view/View;
    .local v8, "isin":Z
    :goto_0
    if-ge p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 943
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 944
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 947
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 948
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 949
    if-eqz v5, :cond_1

    .line 950
    move-object v9, v6

    .line 953
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 954
    const/4 v8, 0x1

    goto :goto_0

    .line 943
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 957
    .end local v5    # "selected":Z
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 959
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setVisibleRangeHint(II)V

    .line 960
    return-object v9
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    .line 1731
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 1732
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1734
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1739
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1740
    .local v7, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1741
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1743
    .local v8, "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1744
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1745
    .local v9, "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1746
    .local v6, "childCount":I
    if-lez v6, :cond_0

    .line 1747
    invoke-direct {p0, v6}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    .line 1760
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1761
    return-object v10

    .line 1731
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "childCount":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "leftSide":Landroid/view/View;
    .end local v9    # "rightSide":Landroid/view/View;
    .end local v10    # "temp":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "tempIsSelected":Z
    goto :goto_0

    .line 1750
    .restart local v7    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1752
    .restart local v9    # "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1753
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1754
    .restart local v8    # "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1755
    .restart local v6    # "childCount":I
    if-lez v6, :cond_0

    .line 1756
    invoke-direct {p0, v6}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 1762
    :cond_3
    if-eqz v8, :cond_4

    .line 1763
    return-object v8

    .line 1765
    :cond_4
    return-object v9
.end method

.method private fillSpecificRTL(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "right"    # I

    .prologue
    const/4 v3, 0x0

    .line 1769
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 1772
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1775
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1780
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1782
    .local v7, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1785
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v9

    .line 1786
    .local v9, "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1787
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v8

    .line 1792
    .local v8, "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1793
    .local v6, "childCount":I
    if-lez v6, :cond_0

    .line 1794
    invoke-direct {p0, v6}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    .line 1810
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1811
    return-object v10

    .line 1769
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "childCount":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "leftSide":Landroid/view/View;
    .end local v9    # "rightSide":Landroid/view/View;
    .end local v10    # "temp":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "tempIsSelected":Z
    goto :goto_0

    .line 1798
    .restart local v7    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v8

    .line 1801
    .restart local v8    # "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1802
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v9

    .line 1804
    .restart local v9    # "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1805
    .restart local v6    # "childCount":I
    if-lez v6, :cond_0

    .line 1806
    invoke-direct {p0, v6}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_1

    .line 1812
    :cond_3
    if-eqz v8, :cond_4

    .line 1813
    return-object v8

    .line 1815
    :cond_4
    return-object v9
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 3609
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getChildCountAndOrder(Landroid/view/View;[BI)J
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # [B
    .param p3, "visibility"    # I

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 5177
    const-wide/16 v0, 0x0

    .line 5179
    .local v0, "count":J
    if-nez p1, :cond_0

    .line 5180
    return-wide v0

    .line 5183
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-nez v5, :cond_2

    .line 5184
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, p3, :cond_1

    .line 5185
    aget-byte v5, p2, v8

    shl-long/2addr v6, v5

    or-long v0, v10, v6

    .line 5187
    :cond_1
    aget-byte v5, p2, v8

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v8

    .line 5189
    return-wide v0

    :cond_2
    move-object v4, p1

    .line 5192
    nop

    nop

    .line 5193
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, p3, :cond_3

    .line 5194
    aget-byte v5, p2, v8

    shl-long/2addr v6, v5

    or-long v0, v10, v6

    .line 5196
    :cond_3
    aget-byte v5, p2, v8

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v8

    .line 5198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 5199
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5200
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v6

    or-long/2addr v0, v6

    .line 5198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5203
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    return-wide v0
.end method

.method private getChildHeightSpec(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5207
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5209
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 5210
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    .line 5211
    const/4 v2, -0x2

    .line 5210
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5214
    .restart local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    return v1
.end method

.method private getChildWidthSpec(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 5218
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5220
    .local v2, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 5221
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    .line 5222
    const/4 v4, -0x2

    .line 5221
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5226
    .restart local v2    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5228
    .local v1, "lpWidth":I
    if-lez v1, :cond_1

    .line 5229
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 5234
    .local v0, "childWidthSpec":I
    :goto_0
    return v0

    .line 5231
    .end local v0    # "childWidthSpec":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childWidthSpec":I
    goto :goto_0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 2
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 1216
    move v0, p1

    .line 1217
    .local v0, "leftSelectionPixel":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1218
    :goto_0
    add-int v0, p1, p2

    .line 1220
    :cond_0
    return v0

    .line 1217
    :cond_1
    if-lez p3, :cond_0

    goto :goto_0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 1199
    move v0, p1

    .line 1200
    .local v0, "rightSelectionPixel":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    if-lez p3, :cond_0

    .line 1201
    :goto_0
    sub-int v0, p1, p2

    .line 1203
    :cond_0
    return v0

    .line 1200
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    const/4 v9, 0x0

    .line 3501
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 3502
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3512
    :cond_0
    const/4 v0, 0x0

    .line 3513
    .local v0, "leftSelected":Z
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v8, v10

    .line 3514
    .local v7, "selectedIndex":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p3, v8

    .line 3515
    .local v3, "nextSelectedIndex":I
    const/16 v8, 0x11

    if-ne p2, v8, :cond_4

    .line 3516
    move v2, v3

    .line 3517
    .local v2, "leftViewIndex":I
    move v6, v7

    .line 3518
    .local v6, "rightViewIndex":I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3519
    .local v1, "leftView":Landroid/view/View;
    move-object v5, p1

    .line 3520
    .local v5, "rightView":Landroid/view/View;
    const/4 v0, 0x1

    .line 3528
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 3531
    .local v4, "numChildren":I
    if-eqz v1, :cond_1

    .line 3532
    if-nez p4, :cond_5

    move v8, v0

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3533
    invoke-direct {p0, v1, v2, v4}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 3537
    :cond_1
    if-eqz v5, :cond_3

    .line 3538
    if-nez p4, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    :goto_2
    invoke-virtual {v5, v9}, Landroid/view/View;->setSelected(Z)V

    .line 3539
    invoke-direct {p0, v5, v6, v4}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 3500
    :cond_3
    return-void

    .line 3522
    .end local v1    # "leftView":Landroid/view/View;
    .end local v2    # "leftViewIndex":I
    .end local v4    # "numChildren":I
    .end local v5    # "rightView":Landroid/view/View;
    .end local v6    # "rightViewIndex":I
    :cond_4
    move v2, v7

    .line 3523
    .restart local v2    # "leftViewIndex":I
    move v6, v3

    .line 3524
    .restart local v6    # "rightViewIndex":I
    move-object v1, p1

    .line 3525
    .restart local v1    # "leftView":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rightView":Landroid/view/View;
    goto :goto_0

    .restart local v4    # "numChildren":I
    :cond_5
    move v8, v9

    .line 3532
    goto :goto_1

    .line 3538
    :cond_6
    const/4 v9, 0x1

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x0

    .line 3294
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 3295
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3299
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 3300
    .local v3, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_3

    if-lez v3, :cond_3

    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 3301
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 3302
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3303
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 3302
    if-eqz v5, :cond_3

    .line 3305
    invoke-virtual {v4}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3306
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    .line 3307
    nop

    nop

    .line 3306
    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3308
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 3310
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3311
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3312
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3313
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3314
    if-eq v0, v2, :cond_1

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_1

    .line 3315
    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 3317
    :cond_1
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 3318
    const/4 v5, 0x1

    return v5

    .line 3325
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    .line 3326
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 3325
    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3327
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 3328
    invoke-direct {p0, v1, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    .line 3332
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_3
    return v7
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 2495
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2496
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2497
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2498
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 2499
    return v6

    .line 2497
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2503
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2504
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2505
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 2506
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    .line 2507
    return v6

    .line 2505
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2511
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 3916
    if-ne p1, p2, :cond_0

    .line 3917
    const/4 v1, 0x1

    return v1

    .line 3920
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3921
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    nop

    nop

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, -0x1

    .line 3762
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3763
    .local v1, "firstPosition":I
    const/16 v6, 0x42

    if-ne p1, v6, :cond_6

    .line 3764
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    .line 3765
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v6, 0x1

    .line 3767
    .local v5, "startPos":I
    :goto_0
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 3768
    return v7

    .line 3766
    .end local v5    # "startPos":I
    :cond_0
    move v5, v1

    .restart local v5    # "startPos":I
    goto :goto_0

    .line 3770
    :cond_1
    if-ge v5, v1, :cond_2

    .line 3771
    move v5, v1

    .line 3774
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 3775
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3776
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v6, :cond_4

    .line 3777
    move v4, v5

    .local v4, "pos":I
    :goto_1
    if-lt v4, v1, :cond_e

    .line 3778
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 3779
    return v4

    .line 3777
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3784
    .end local v4    # "pos":I
    :cond_4
    move v4, v5

    .restart local v4    # "pos":I
    :goto_2
    if-gt v4, v3, :cond_e

    .line 3785
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 3786
    return v4

    .line 3784
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3791
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v2, v6, -0x1

    .line 3792
    .local v2, "last":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 3793
    .restart local v3    # "lastVisiblePos":I
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v6, v7, :cond_8

    .line 3794
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v6, -0x1

    .line 3796
    .restart local v5    # "startPos":I
    :goto_3
    if-ltz v5, :cond_7

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_9

    .line 3797
    :cond_7
    return v7

    .line 3795
    .end local v5    # "startPos":I
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v5, v6, -0x1

    goto :goto_3

    .line 3799
    .restart local v5    # "startPos":I
    :cond_9
    if-le v5, v2, :cond_a

    .line 3800
    move v5, v2

    .line 3803
    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3804
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v6, :cond_c

    .line 3805
    move v4, v5

    .restart local v4    # "pos":I
    :goto_4
    if-gt v4, v3, :cond_e

    .line 3806
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_b

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b

    .line 3807
    return v4

    .line 3805
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3812
    .end local v4    # "pos":I
    :cond_c
    move v4, v5

    .restart local v4    # "pos":I
    :goto_5
    if-lt v4, v1, :cond_e

    .line 3813
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_d

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_d

    .line 3814
    return v4

    .line 3812
    :cond_d
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 3819
    .end local v2    # "last":I
    :cond_e
    return v7
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 2532
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2534
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2535
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2538
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2540
    return-object v1

    .line 2545
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2549
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2551
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2553
    :cond_1
    return-object v1
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 3551
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3552
    .local v1, "oldWidth":I
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->measureItem(Landroid/view/View;)V

    .line 3553
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 3555
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3558
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .line 3559
    .local v2, "widthDelta":I
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 3560
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3550
    .end local v0    # "i":I
    .end local v2    # "widthDelta":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 3571
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3572
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 3573
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 3574
    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 3575
    const/4 v5, -0x2

    .line 3573
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3578
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 3579
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3578
    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3580
    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3582
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 3583
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3587
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3570
    return-void

    .line 3585
    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1556
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 1557
    .local v3, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1558
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 1559
    .restart local v3    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1561
    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1562
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    .line 1565
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1564
    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1566
    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1568
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 1569
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1573
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1555
    return-void

    .line 1571
    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenLeft"    # I
    .param p5, "childrenRight"    # I

    .prologue
    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v10

    .line 1263
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 1267
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v12

    .line 1269
    .local v12, "leftSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v15

    .line 1272
    .local v15, "rightSelectionPixel":I
    if-lez p3, :cond_2

    .line 1294
    add-int/lit8 v4, v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1295
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 1294
    const/4 v6, 0x1

    .line 1295
    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1294
    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1297
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1300
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int v5, v3, v9

    .line 1301
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 1300
    const/4 v6, 0x1

    .line 1301
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    .line 1300
    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1304
    .local v16, "sel":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v15, :cond_0

    .line 1307
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v3, v12

    .line 1310
    .local v18, "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v3, v15

    .line 1313
    .local v19, "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1314
    .local v11, "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1315
    .local v14, "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1318
    neg-int v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1320
    neg-int v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1324
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1325
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1326
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1327
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1408
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v16

    .line 1329
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1330
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1331
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0

    .line 1333
    .end local v9    # "dividerHeight":I
    .end local v16    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1354
    if-eqz p2, :cond_4

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    .line 1357
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    .line 1356
    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1366
    .restart local v16    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v12, :cond_3

    .line 1368
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v12, v3

    .line 1371
    .restart local v18    # "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v15, v3

    .line 1374
    .restart local v19    # "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1375
    .restart local v11    # "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1376
    .restart local v14    # "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1379
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1383
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    .line 1361
    .end local v16    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x0

    .line 1362
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    .line 1361
    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1386
    .end local v16    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1391
    .local v5, "oldLeft":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1394
    .restart local v16    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    .line 1397
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v13

    .line 1398
    .local v13, "newRight":I
    add-int/lit8 v3, p4, 0x14

    if-ge v13, v3, :cond_6

    .line 1400
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1405
    .end local v13    # "newRight":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private needToMeasureChild(Landroid/view/View;ZZ)Z
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "updateChildSelected"    # Z
    .param p3, "recycled"    # Z

    .prologue
    .line 5081
    if-eqz p3, :cond_0

    move/from16 v9, p2

    .line 5082
    .local v9, "needToMeasure":Z
    :goto_0
    if-eqz v9, :cond_1

    const/4 v11, 0x1

    return v11

    .line 5081
    .end local v9    # "needToMeasure":Z
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 5084
    .restart local v9    # "needToMeasure":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v9

    .line 5086
    iget-boolean v11, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    if-eqz v11, :cond_3

    .line 5092
    const/high16 v7, 0x10000000

    .line 5093
    .local v7, "key":I
    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 5095
    .local v8, "listViewItemTag":Ljava/lang/Object;
    if-nez v8, :cond_2

    .line 5096
    new-instance v8, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    .end local v8    # "listViewItemTag":Ljava/lang/Object;
    invoke-direct {v8, p0}, Landroid/widget/SemHorizontalListView$ItemInfoTag;-><init>(Landroid/widget/SemHorizontalListView;)V

    .line 5097
    .restart local v8    # "listViewItemTag":Ljava/lang/Object;
    invoke-virtual {p1, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5100
    :cond_2
    instance-of v11, v8, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    if-eqz v11, :cond_5

    move-object v6, v8

    .line 5102
    nop

    nop

    .line 5104
    .local v6, "itemInfoTag":Landroid/widget/SemHorizontalListView$ItemInfoTag;
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v5

    .line 5105
    .local v5, "currentWidthSpec":I
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v4

    .line 5107
    .local v4, "currentHeightSpec":I
    const/4 v11, 0x1

    new-array v10, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v11, v10, v12

    .line 5108
    .local v10, "offset":[B
    const/16 v11, 0x8

    invoke-direct {p0, p1, v10, v11}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v2

    .line 5109
    .local v2, "currentChildrenVisibilityBitsGone":J
    const/4 v11, 0x0

    aget-byte v0, v10, v11

    .line 5111
    .local v0, "currentChildrenNumberTotal":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5113
    .local v1, "currentConfiguration":Landroid/content/res/Configuration;
    iget v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    if-ne v5, v11, :cond_4

    .line 5114
    iget v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    if-ne v4, v11, :cond_4

    .line 5115
    iget-wide v12, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    cmp-long v11, v2, v12

    if-nez v11, :cond_4

    .line 5116
    if-lez v0, :cond_4

    const/16 v11, 0x40

    if-gt v0, v11, :cond_4

    .line 5117
    iget v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    if-ne v0, v11, :cond_4

    .line 5118
    iget-object v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v11}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v11

    if-nez v11, :cond_4

    .line 5119
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 5121
    const/4 v9, 0x0

    .line 5149
    .end local v0    # "currentChildrenNumberTotal":I
    .end local v1    # "currentConfiguration":Landroid/content/res/Configuration;
    .end local v2    # "currentChildrenVisibilityBitsGone":J
    .end local v4    # "currentHeightSpec":I
    .end local v5    # "currentWidthSpec":I
    .end local v6    # "itemInfoTag":Landroid/widget/SemHorizontalListView$ItemInfoTag;
    .end local v7    # "key":I
    .end local v8    # "listViewItemTag":Ljava/lang/Object;
    .end local v9    # "needToMeasure":Z
    .end local v10    # "offset":[B
    :cond_3
    :goto_1
    return v9

    .line 5124
    .restart local v0    # "currentChildrenNumberTotal":I
    .restart local v1    # "currentConfiguration":Landroid/content/res/Configuration;
    .restart local v2    # "currentChildrenVisibilityBitsGone":J
    .restart local v4    # "currentHeightSpec":I
    .restart local v5    # "currentWidthSpec":I
    .restart local v6    # "itemInfoTag":Landroid/widget/SemHorizontalListView$ItemInfoTag;
    .restart local v7    # "key":I
    .restart local v8    # "listViewItemTag":Ljava/lang/Object;
    .restart local v9    # "needToMeasure":Z
    .restart local v10    # "offset":[B
    :cond_4
    iput v5, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    .line 5125
    iput v4, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    .line 5126
    iput-wide v2, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    .line 5127
    iput v0, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    .line 5128
    iget-object v11, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5130
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 5132
    const/4 v9, 0x1

    .local v9, "needToMeasure":Z
    goto :goto_1

    .line 5144
    .end local v0    # "currentChildrenNumberTotal":I
    .end local v1    # "currentConfiguration":Landroid/content/res/Configuration;
    .end local v2    # "currentChildrenVisibilityBitsGone":J
    .end local v4    # "currentHeightSpec":I
    .end local v5    # "currentWidthSpec":I
    .end local v6    # "itemInfoTag":Landroid/widget/SemHorizontalListView$ItemInfoTag;
    .end local v10    # "offset":[B
    .local v9, "needToMeasure":Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 5145
    const/4 v9, 0x1

    .local v9, "needToMeasure":Z
    goto :goto_1
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v8, 0x42

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 3368
    if-ne p3, v8, :cond_5

    .line 3369
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 3370
    .local v2, "listRight":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v5, v2, :cond_4

    .line 3371
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 3372
    .local v0, "lastPos":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    .line 3373
    if-eq p2, v7, :cond_1

    if-gt p2, v0, :cond_1

    add-int/lit8 v3, p2, -0x1

    .line 3394
    .end local v2    # "listRight":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_a

    .line 3395
    :cond_0
    return v7

    .line 3373
    .end local v3    # "nextSelected":I
    .restart local v2    # "listRight":I
    :cond_1
    move v3, v0

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 3375
    .end local v3    # "nextSelected":I
    :cond_2
    if-eq p2, v7, :cond_3

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt p2, v5, :cond_3

    add-int/lit8 v3, p2, 0x1

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 3376
    .end local v3    # "nextSelected":I
    :cond_3
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 3378
    .end local v0    # "lastPos":I
    .end local v3    # "nextSelected":I
    :cond_4
    return v7

    .line 3381
    .end local v2    # "listRight":I
    :cond_5
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 3382
    .local v1, "listLeft":I
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v1, :cond_9

    .line 3383
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 3384
    .restart local v0    # "lastPos":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_7

    .line 3385
    if-eq p2, v7, :cond_6

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt p2, v5, :cond_6

    add-int/lit8 v3, p2, 0x1

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 3386
    .end local v3    # "nextSelected":I
    :cond_6
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 3388
    .end local v3    # "nextSelected":I
    :cond_7
    if-eq p2, v7, :cond_8

    if-gt p2, v0, :cond_8

    add-int/lit8 v3, p2, -0x1

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_8
    move v3, v0

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 3390
    .end local v0    # "lastPos":I
    .end local v3    # "nextSelected":I
    :cond_9
    return v7

    .line 3397
    .end local v1    # "listLeft":I
    .restart local v0    # "lastPos":I
    .restart local v3    # "nextSelected":I
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
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3902
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3903
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3904
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3905
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3902
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3908
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3596
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 3597
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 3598
    .local v4, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 3599
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 3600
    .local v2, "childRight":I
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 3601
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 3602
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3595
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
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

    .prologue
    .line 492
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 493
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 494
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    .line 495
    .local v1, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 496
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 491
    .end local v1    # "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    :cond_0
    return-void

    .line 493
    .restart local v1    # "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3984
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 3986
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v9, v10

    .line 3987
    .local v6, "listRight":I
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 3988
    .local v5, "listLeft":I
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 3990
    .local v8, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    if-gez p1, :cond_a

    .line 3994
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 3996
    .local v7, "numChildren":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_2

    .line 3997
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3998
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_3

    .line 4000
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_0

    .line 4001
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v1, v9}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4003
    :cond_0
    if-nez v1, :cond_1

    .line 4004
    return-void

    .line 4005
    :cond_1
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_0

    .line 4010
    .end local v1    # "last":Landroid/view/View;
    :cond_2
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4011
    .restart local v1    # "last":Landroid/view/View;
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_3

    .line 4012
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 4013
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_3

    .line 4014
    invoke-direct {p0, v1, v3}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4015
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4025
    .end local v3    # "lastVisiblePosition":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_4

    .line 4026
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 4030
    :cond_4
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4031
    .local v0, "first":Landroid/view/View;
    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_5

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4033
    :cond_5
    if-nez v0, :cond_6

    .line 4034
    return-void

    .line 4036
    :cond_6
    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_8

    .line 4037
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 4038
    .local v2, "lastIndex":I
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_14

    .line 4039
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4040
    .local v4, "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4041
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v0, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4043
    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 4044
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 4047
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_8
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_14

    .line 4048
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4049
    .restart local v4    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4050
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4052
    :cond_9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 4053
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4054
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_3

    .line 4060
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 4061
    .restart local v7    # "numChildren":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_b

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4064
    .restart local v0    # "first":Landroid/view/View;
    :goto_4
    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_e

    .line 4065
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_f

    .line 4066
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 4067
    .restart local v3    # "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_f

    .line 4068
    invoke-direct {p0, v0, v3}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4069
    if-nez v0, :cond_c

    .line 4070
    return-void

    .line 4062
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "lastVisiblePosition":I
    :cond_b
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "first":Landroid/view/View;
    goto :goto_4

    .line 4071
    .restart local v3    # "lastVisiblePosition":I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 4085
    .end local v3    # "lastVisiblePosition":I
    :cond_d
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4078
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_f

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_f

    .line 4079
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4083
    if-nez v0, :cond_d

    .line 4084
    return-void

    .line 4091
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_10

    .line 4092
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 4095
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 4096
    .restart local v2    # "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4097
    .restart local v1    # "last":Landroid/view/View;
    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_12

    .line 4098
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4099
    :goto_6
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_14

    .line 4100
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4101
    .restart local v4    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 4102
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v8, v1, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4104
    :cond_11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 4105
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4106
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_6

    .line 4112
    .end local v4    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_12
    :goto_7
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_14

    .line 4113
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4114
    .restart local v4    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 4115
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4117
    :cond_13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 4118
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_7

    .line 3983
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flowRightSide"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 2572
    const-string/jumbo v19, "setupListItem"

    const-wide/16 v20, 0x8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2574
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelector()Z

    move-result v11

    .line 2575
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_9

    const/16 v17, 0x1

    .line 2576
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 2577
    .local v13, "mode":I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    .line 2578
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 2579
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 2580
    .local v16, "updateChildPressed":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SemHorizontalListView;->needToMeasureChild(Landroid/view/View;ZZ)Z

    move-result v14

    .line 2584
    .local v14, "needToMeasure":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 2585
    .local v15, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-nez v15, :cond_0

    .line 2586
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 2588
    .restart local v15    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 2590
    if-eqz p7, :cond_1

    iget-boolean v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    :cond_1
    iget-boolean v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 2591
    iget v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 2592
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 2593
    if-nez p4, :cond_d

    const/16 v19, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2607
    :goto_5
    if-eqz v17, :cond_3

    .line 2608
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2609
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2610
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    .line 2613
    :cond_3
    if-eqz v16, :cond_4

    .line 2614
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2617
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2618
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v19, p1

    .line 2619
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2626
    :cond_5
    :goto_6
    if-eqz v14, :cond_17

    .line 2627
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    move/from16 v19, v0

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    .line 2627
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2629
    .local v5, "childHeightSpec":I
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2631
    .local v12, "lpWidth":I
    if-lez v12, :cond_16

    .line 2632
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2636
    .local v8, "childWidthSpec":I
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2641
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2642
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2645
    .local v9, "h":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 2646
    if-eqz p4, :cond_18

    add-int v7, p3, v18

    .line 2647
    .local v7, "childRight":I
    :goto_9
    if-eqz p4, :cond_19

    move/from16 v6, p3

    .line 2649
    .local v6, "childLeft":I
    :goto_a
    if-eqz v14, :cond_1a

    .line 2651
    add-int v4, p5, v9

    .line 2652
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 2672
    .end local v4    # "childBottom":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 2675
    :cond_6
    :goto_c
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

    .line 2676
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2679
    :cond_7
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 2571
    return-void

    .line 2574
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_8
    const/4 v11, 0x0

    .local v11, "isSelected":Z
    goto/16 :goto_0

    .line 2575
    .end local v11    # "isSelected":Z
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "updateChildSelected":Z
    goto/16 :goto_1

    .line 2578
    .restart local v13    # "mode":I
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    .line 2577
    .end local v10    # "isPressed":Z
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    .line 2579
    :cond_c
    const/16 v16, 0x0

    .restart local v16    # "updateChildPressed":Z
    goto/16 :goto_3

    .line 2593
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 2595
    :cond_e
    if-eqz p4, :cond_f

    const/16 v19, -0x1

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_f
    const/16 v19, 0x0

    goto :goto_d

    .line 2597
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    .line 2598
    iget v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 2599
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2601
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 2602
    if-nez p4, :cond_12

    const/16 v19, -0x1

    :goto_e
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_12
    const/16 v19, 0x0

    goto :goto_e

    .line 2604
    :cond_13
    if-eqz p4, :cond_14

    const/16 v19, -0x1

    :goto_f
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_14
    const/16 v19, 0x0

    goto :goto_f

    .line 2620
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    .line 2621
    const/16 v20, 0xb

    .line 2620
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 2622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 2634
    .restart local v5    # "childHeightSpec":I
    .restart local v12    # "lpWidth":I
    :cond_16
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childWidthSpec":I
    goto/16 :goto_7

    .line 2638
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :cond_17
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .line 2646
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_18
    move/from16 v7, p3

    .restart local v7    # "childRight":I
    goto/16 :goto_9

    .line 2647
    :cond_19
    sub-int v6, p3, v18

    .restart local v6    # "childLeft":I
    goto/16 :goto_a

    .line 2654
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2655
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b

    .line 2659
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    :cond_1b
    if-eqz p4, :cond_1c

    move/from16 v6, p3

    .line 2660
    .restart local v6    # "childLeft":I
    :goto_10
    add-int v7, v6, v18

    .line 2662
    .restart local v7    # "childRight":I
    if-eqz v14, :cond_1d

    .line 2664
    add-int v4, p5, v9

    .line 2665
    .restart local v4    # "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    .line 2659
    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    :cond_1c
    sub-int v6, p3, v18

    goto :goto_10

    .line 2667
    .restart local v6    # "childLeft":I
    .restart local v7    # "childRight":I
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2668
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b

    .line 2673
    :cond_1e
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_c
.end method

.method private shouldAdjustWidthForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    .prologue
    .line 4930
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4931
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 4932
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 4933
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_2

    const/4 v6, 0x1

    .line 4934
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_3

    const/4 v5, 0x1

    .line 4935
    .local v5, "drawOverscrollFooter":Z
    :goto_1
    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v4, 0x1

    .line 4937
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_1

    .line 4938
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_5

    :cond_0
    const/4 v7, 0x0

    .line 4939
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    .line 4940
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4941
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    .line 4942
    .local v9, "footerLimit":I
    move/from16 v0, p1

    if-ge v0, v10, :cond_6

    const/4 v14, 0x1

    .line 4943
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    if-lt v0, v9, :cond_7

    const/4 v13, 0x1

    .line 4944
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4945
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 4946
    .local v8, "footerDividers":Z
    if-nez v11, :cond_8

    if-eqz v14, :cond_8

    .line 4985
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v16    # "itemCount":I
    :cond_1
    const/16 v22, 0x0

    return v22

    .line 4933
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "drawOverscrollHeader":Z
    goto :goto_0

    .line 4934
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "drawOverscrollFooter":Z
    goto :goto_1

    .line 4935
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 4938
    .restart local v4    # "drawDividers":Z
    :cond_5
    const/4 v7, 0x1

    .restart local v7    # "fillForMissingDividers":Z
    goto :goto_3

    .line 4942
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "isHeader":Z
    goto :goto_4

    .line 4943
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "isFooter":Z
    goto :goto_5

    .line 4946
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    :cond_8
    if-nez v8, :cond_9

    if-nez v13, :cond_1

    .line 4947
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4948
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 4949
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    .line 4950
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_a

    if-nez v15, :cond_1

    .line 4951
    :cond_a
    add-int/lit8 v17, p1, 0x1

    .line 4955
    .local v17, "nextIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_e

    if-nez v11, :cond_b

    if-nez v14, :cond_e

    .line 4956
    move/from16 v0, v17

    if-lt v0, v10, :cond_e

    :cond_b
    if-nez v15, :cond_c

    .line 4957
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_e

    if-nez v8, :cond_c

    if-nez v13, :cond_e

    .line 4958
    move/from16 v0, v17

    if-ge v0, v9, :cond_e

    .line 4959
    :cond_c
    const/16 v22, 0x1

    return v22

    .line 4949
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    const/4 v15, 0x0

    .restart local v15    # "isLastItem":Z
    goto :goto_6

    .line 4960
    .restart local v17    # "nextIndex":I
    :cond_e
    if-eqz v7, :cond_1

    .line 4961
    const/16 v22, 0x1

    return v22

    .line 4965
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_f
    if-eqz v6, :cond_12

    const/16 v21, 0x1

    .line 4966
    .local v21, "start":I
    :goto_7
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const/4 v12, 0x1

    .line 4967
    .local v12, "isFirstItem":Z
    :goto_8
    if-nez v12, :cond_1

    .line 4968
    add-int/lit8 v20, p1, -0x1

    .line 4972
    .local v20, "previousIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_14

    if-nez v11, :cond_10

    if-nez v14, :cond_14

    .line 4973
    move/from16 v0, v20

    if-lt v0, v10, :cond_14

    :cond_10
    if-nez v12, :cond_11

    .line 4974
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_14

    if-nez v8, :cond_11

    if-nez v13, :cond_14

    .line 4975
    move/from16 v0, v20

    if-ge v0, v9, :cond_14

    .line 4976
    :cond_11
    const/16 v22, 0x1

    return v22

    .line 4965
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_12
    const/16 v21, 0x0

    goto :goto_7

    .line 4966
    .restart local v21    # "start":I
    :cond_13
    const/4 v12, 0x0

    goto :goto_8

    .line 4977
    .restart local v12    # "isFirstItem":Z
    .restart local v20    # "previousIndex":I
    :cond_14
    if-eqz v7, :cond_1

    .line 4978
    const/16 v22, 0x1

    return v22
.end method

.method private showingLeftFadingEdge()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 715
    iget v6, p0, Landroid/view/View;->mScrollX:I

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v2, v6, v7

    .line 716
    .local v2, "listLeft":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 717
    .local v0, "childCount":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 718
    .local v3, "rightOfRightChild":I
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    add-int/lit8 v1, v6, -0x1

    .line 719
    .local v1, "lastVisiblePosition":I
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    .line 720
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    .line 722
    :cond_2
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v6, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 730
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 731
    .local v0, "childCount":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    .line 732
    .local v3, "rightOfRightChild":I
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    add-int/lit8 v1, v6, -0x1

    .line 734
    .local v1, "lastVisiblePosition":I
    iget v6, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, v6, v7

    .line 736
    .local v2, "listRight":I
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    .line 737
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v6, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

    .line 739
    :cond_2
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

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
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 555
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 554
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 519
    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    .line 520
    .local v0, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 521
    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 522
    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 523
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 527
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 529
    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 534
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 518
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 458
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 457
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 422
    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    .line 423
    .local v0, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 424
    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 425
    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 426
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 430
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 437
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 421
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 4570
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 4547
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 3344
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 3345
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 3346
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 3347
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3351
    :cond_0
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 3349
    return v0

    .line 3350
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    .line 3351
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 3350
    throw v1
.end method

.method protected canAnimate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2690
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4261
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    .line 4262
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    .line 4266
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4267
    .local v9, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 4268
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 4269
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_7

    const/4 v12, 0x1

    .line 4270
    .local v12, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_8

    const/4 v11, 0x1

    .line 4271
    .local v11, "drawOverscrollFooter":Z
    :goto_1
    if-lez v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_9

    const/4 v10, 0x1

    .line 4273
    .local v10, "drawDividers":Z
    :goto_2
    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-eqz v11, :cond_16

    .line 4275
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 4276
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 4277
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 4279
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 4280
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 4281
    .local v19, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    .line 4282
    .local v26, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v39, v26, v39

    add-int/lit8 v18, v39, -0x1

    .line 4283
    .local v18, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 4284
    .local v20, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 4285
    .local v17, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    .line 4286
    .local v16, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 4287
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4292
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_2

    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_a

    :cond_2
    const/4 v15, 0x0

    .line 4294
    .local v15, "fillForMissingDividers":Z
    :goto_3
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_3

    .line 4295
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 4296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 4298
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .line 4300
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 4301
    .local v13, "effectivePaddingLeft":I
    const/4 v14, 0x0

    .line 4302
    .local v14, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x22

    const/16 v40, 0x22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_4

    .line 4303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 4304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 4307
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v40, v0

    add-int v29, v39, v40

    .line 4308
    .local v29, "listRight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_19

    .line 4309
    const/16 v36, 0x0

    .line 4312
    .local v36, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v37, v0

    .line 4313
    .local v37, "scrollX":I
    if-lez v8, :cond_5

    if-gez v37, :cond_5

    .line 4314
    if-eqz v12, :cond_b

    .line 4315
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4316
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4317
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 4325
    :cond_5
    :goto_4
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v8, :cond_15

    .line 4326
    add-int v27, v16, v21

    .line 4327
    .local v27, "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    const/16 v24, 0x1

    .line 4328
    .local v24, "isHeader":Z
    :goto_6
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    const/16 v23, 0x1

    .line 4329
    .local v23, "isFooter":Z
    :goto_7
    if-nez v20, :cond_e

    if-eqz v24, :cond_e

    .line 4325
    :cond_6
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 4269
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v10    # "drawDividers":Z
    .end local v11    # "drawOverscrollFooter":Z
    .end local v12    # "drawOverscrollHeader":Z
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v26    # "itemCount":I
    .end local v27    # "itemIndex":I
    .end local v29    # "listRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "drawOverscrollHeader":Z
    goto/16 :goto_0

    .line 4270
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "drawOverscrollFooter":Z
    goto/16 :goto_1

    .line 4271
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 4292
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v10    # "drawDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 4318
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "right":I
    .restart local v37    # "scrollX":I
    :cond_b
    if-eqz v10, :cond_5

    .line 4319
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4320
    neg-int v0, v9

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4321
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_4

    .line 4327
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    :cond_c
    const/16 v24, 0x0

    .restart local v24    # "isHeader":Z
    goto :goto_6

    .line 4328
    :cond_d
    const/16 v23, 0x0

    .restart local v23    # "isFooter":Z
    goto :goto_7

    .line 4329
    :cond_e
    if-nez v17, :cond_f

    if-nez v23, :cond_6

    .line 4330
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4331
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v36

    .line 4332
    add-int/lit8 v39, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    const/16 v25, 0x1

    .line 4334
    .local v25, "isLastItem":Z
    :goto_9
    if-eqz v10, :cond_6

    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 4335
    if-eqz v11, :cond_10

    if-nez v25, :cond_6

    .line 4336
    :cond_10
    add-int/lit8 v30, v27, 0x1

    .line 4340
    .local v30, "nextIndex":I
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_14

    if-nez v20, :cond_11

    if-nez v24, :cond_14

    .line 4341
    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_14

    :cond_11
    if-nez v25, :cond_12

    .line 4342
    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_14

    if-nez v17, :cond_12

    if-nez v23, :cond_14

    .line 4343
    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    .line 4344
    :cond_12
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4345
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4346
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_8

    .line 4332
    .end local v25    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_13
    const/16 v25, 0x0

    .restart local v25    # "isLastItem":Z
    goto :goto_9

    .line 4347
    .restart local v30    # "nextIndex":I
    :cond_14
    if-eqz v15, :cond_6

    .line 4348
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4349
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4350
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 4356
    .end local v7    # "child":Landroid/view/View;
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v25    # "isLastItem":Z
    .end local v27    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v40, v0

    add-int v31, v39, v40

    .line 4357
    .local v31, "overFooterRight":I
    if-eqz v11, :cond_16

    add-int v39, v16, v8

    move/from16 v0, v39

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 4358
    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_16

    .line 4359
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4360
    move/from16 v0, v31

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 4423
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v26    # "itemCount":I
    .end local v29    # "listRight":I
    .end local v31    # "overFooterRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_16
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v39, v0

    if-eqz v39, :cond_17

    .line 4424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 4428
    :cond_17
    invoke-super/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    move-object/from16 v39, v0

    if-eqz v39, :cond_18

    .line 4431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4260
    :cond_18
    return-void

    .line 4366
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v37, v0

    .line 4368
    .restart local v37    # "scrollX":I
    if-lez v8, :cond_1a

    if-eqz v12, :cond_1a

    .line 4369
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4370
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4371
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 4374
    :cond_1a
    if-eqz v12, :cond_1c

    const/16 v38, 0x1

    .line 4375
    .local v38, "start":I
    :goto_b
    move/from16 v21, v38

    .restart local v21    # "i":I
    :goto_c
    move/from16 v0, v21

    if-ge v0, v8, :cond_25

    .line 4376
    add-int v27, v16, v21

    .line 4377
    .restart local v27    # "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_1d

    const/16 v24, 0x1

    .line 4378
    .restart local v24    # "isHeader":Z
    :goto_d
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_1e

    const/16 v23, 0x1

    .line 4379
    .restart local v23    # "isFooter":Z
    :goto_e
    if-nez v20, :cond_1f

    if-eqz v24, :cond_1f

    .line 4375
    :cond_1b
    :goto_f
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 4374
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v38    # "start":I
    :cond_1c
    const/16 v38, 0x0

    goto :goto_b

    .line 4377
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    .restart local v38    # "start":I
    :cond_1d
    const/16 v24, 0x0

    .restart local v24    # "isHeader":Z
    goto :goto_d

    .line 4378
    :cond_1e
    const/16 v23, 0x0

    .restart local v23    # "isFooter":Z
    goto :goto_e

    .line 4379
    :cond_1f
    if-nez v17, :cond_20

    if-nez v23, :cond_1b

    .line 4380
    :cond_20
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4381
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v28

    .line 4382
    .local v28, "left":I
    if-eqz v10, :cond_1b

    move/from16 v0, v28

    if-le v0, v13, :cond_1b

    .line 4383
    move/from16 v0, v21

    move/from16 v1, v38

    if-ne v0, v1, :cond_23

    const/16 v22, 0x1

    .line 4384
    .local v22, "isFirstItem":Z
    :goto_10
    add-int/lit8 v35, v27, -0x1

    .line 4388
    .local v35, "previousIndex":I
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_24

    if-nez v20, :cond_21

    if-nez v24, :cond_24

    .line 4389
    move/from16 v0, v35

    move/from16 v1, v19

    if-lt v0, v1, :cond_24

    :cond_21
    if-nez v22, :cond_22

    .line 4390
    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_24

    if-nez v17, :cond_22

    if-nez v23, :cond_24

    .line 4391
    move/from16 v0, v35

    move/from16 v1, v18

    if-ge v0, v1, :cond_24

    .line 4392
    :cond_22
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4393
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4398
    add-int/lit8 v39, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_f

    .line 4383
    .end local v22    # "isFirstItem":Z
    .end local v35    # "previousIndex":I
    :cond_23
    const/16 v22, 0x0

    .restart local v22    # "isFirstItem":Z
    goto :goto_10

    .line 4399
    .restart local v35    # "previousIndex":I
    :cond_24
    if-eqz v15, :cond_1b

    .line 4400
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4401
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4402
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_f

    .line 4408
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_25
    if-lez v8, :cond_16

    if-lez v37, :cond_16

    .line 4409
    if-eqz v11, :cond_26

    .line 4410
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    .line 4411
    .local v3, "absListRight":I
    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 4412
    add-int v39, v3, v37

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 4414
    .end local v3    # "absListRight":I
    :cond_26
    if-eqz v10, :cond_16

    .line 4415
    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4416
    add-int v39, v29, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4417
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2971
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2972
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2974
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2975
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2978
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/SemHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2981
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 4449
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v1, :cond_0

    .line 4450
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 4453
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 4454
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_1

    .line 4455
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    .line 4458
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v1, :cond_2

    .line 4459
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 4461
    :cond_2
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 4475
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4477
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4478
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4473
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4237
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 4239
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4240
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4242
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 4243
    .local v0, "span":I
    if-ge v0, v1, :cond_0

    .line 4244
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 4247
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4248
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4236
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4220
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 4222
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4223
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4225
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 4226
    .local v0, "span":I
    if-ge v0, v1, :cond_0

    .line 4227
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 4230
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4231
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4219
    return-void
.end method

.method fillGap(Z)V
    .locals 7
    .param p1, "rightSide"    # Z

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 850
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 851
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 852
    const/4 v1, 0x0

    .line 853
    .local v1, "paddingLeft":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_0

    .line 854
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getListPaddingLeft()I

    move-result v1

    .line 856
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 858
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 859
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    .line 849
    .end local v1    # "paddingLeft":I
    :goto_1
    return-void

    .line 857
    .end local v3    # "startOffset":I
    .restart local v1    # "paddingLeft":I
    :cond_1
    move v3, v1

    .restart local v3    # "startOffset":I
    goto :goto_0

    .line 861
    .end local v1    # "paddingLeft":I
    .end local v3    # "startOffset":I
    :cond_2
    const/4 v2, 0x0

    .line 862
    .local v2, "paddingRight":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_3

    .line 863
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getListPaddingRight()I

    move-result v2

    .line 865
    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 867
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 868
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 866
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    .restart local v3    # "startOffset":I
    goto :goto_2
.end method

.method fillGapRTL(Z)V
    .locals 7
    .param p1, "rightSide"    # Z

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 872
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 874
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, "paddingLeft":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_0

    .line 877
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getListPaddingLeft()I

    move-result v1

    .line 879
    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 880
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 881
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    .line 871
    .end local v1    # "paddingLeft":I
    :goto_1
    return-void

    .line 879
    .end local v3    # "startOffset":I
    .restart local v1    # "paddingLeft":I
    :cond_1
    move v3, v1

    .restart local v3    # "startOffset":I
    goto :goto_0

    .line 883
    .end local v1    # "paddingLeft":I
    .end local v3    # "startOffset":I
    :cond_2
    const/4 v2, 0x0

    .line 884
    .local v2, "paddingRight":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_3

    .line 885
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getListPaddingRight()I

    move-result v2

    .line 887
    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 889
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 890
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_1

    .line 887
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    .restart local v3    # "startOffset":I
    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 1679
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1680
    .local v0, "childCount":I
    if-lez v0, :cond_7

    .line 1681
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    .line 1682
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1683
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 1684
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1685
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 1686
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1683
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1690
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 1691
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1692
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_2

    .line 1693
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1690
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1699
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_5

    .line 1700
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_7

    .line 1701
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1702
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_4

    .line 1703
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1700
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1707
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_5
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_7

    .line 1708
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1709
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_6

    .line 1710
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1707
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1716
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_7
    const/4 v3, -0x1

    return v3
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 4857
    if-eqz p1, :cond_2

    .line 4858
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4861
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 4862
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4864
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4861
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4865
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4867
    if-eqz v2, :cond_0

    .line 4868
    return-object v2

    .line 4873
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v4
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4835
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4836
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4837
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4838
    if-eqz v0, :cond_0

    .line 4839
    return-object v0

    .line 4842
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4843
    if-eqz v0, :cond_1

    .line 4844
    return-object v0

    .line 4847
    :cond_1
    return-object v0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 5
    .param p2, "id"    # I
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

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    const/4 v4, 0x0

    .line 4757
    if-eqz p1, :cond_1

    .line 4758
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4761
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4762
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4764
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4765
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4767
    if-eqz v2, :cond_0

    .line 4768
    return-object v2

    .line 4761
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4773
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 4738
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4739
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4740
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4741
    if-eqz v0, :cond_0

    .line 4742
    return-object v0

    .line 4744
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4745
    if-eqz v0, :cond_1

    .line 4746
    return-object v0

    .line 4749
    :cond_1
    return-object v0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p2, "tag"    # Ljava/lang/Object;
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

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    const/4 v4, 0x0

    .line 4805
    if-eqz p1, :cond_1

    .line 4806
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4809
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4810
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4812
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4813
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4815
    if-eqz v2, :cond_0

    .line 4816
    return-object v2

    .line 4809
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4821
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4785
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4786
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4787
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4788
    if-eqz v0, :cond_0

    .line 4789
    return-object v0

    .line 4792
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4793
    if-eqz v0, :cond_1

    .line 4794
    return-object v0

    .line 4797
    :cond_1
    return-object v0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3253
    const/4 v1, 0x0

    .line 3254
    .local v1, "moved":Z
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 3255
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 3256
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 3257
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 3258
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 3259
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3260
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 3262
    :cond_0
    const/4 v1, 0x1

    .line 3278
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3283
    :cond_2
    :goto_1
    return v1

    .line 3264
    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_1

    .line 3265
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 3266
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 3268
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 3267
    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 3269
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 3270
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 3271
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3272
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 3274
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 3279
    .end local v0    # "lastItem":I
    .end local v2    # "position":I
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 3280
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4887
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4888
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCheckedItemIds()[J

    move-result-object v8

    return-object v8

    .line 4893
    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 4894
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4895
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 4896
    .local v3, "count":I
    new-array v5, v3, [J

    .line 4897
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4899
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 4900
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 4901
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4902
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 4900
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_0

    .line 4908
    :cond_1
    if-ne v2, v3, :cond_2

    .line 4909
    return-object v5

    .line 4911
    :cond_2
    new-array v6, v2, [J

    .line 4912
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 4914
    return-object v6

    .line 4917
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v8, v10, [J

    return-object v8

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 2106
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 2107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4487
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 4512
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 4171
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4609
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4590
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getWidthForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 4922
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getWidthForPosition(I)I

    move-result v0

    .line 4923
    .local v0, "width":I
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->shouldAdjustWidthForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4924
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 4926
    :cond_0
    return v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4188
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4189
    :cond_0
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v4

    .line 4190
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_d

    .line 4192
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_7

    .line 4193
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_1
    sub-int v3, v6, v5

    .line 4194
    .local v3, "listRight":I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4195
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v3, :cond_4

    .line 4196
    :cond_1
    return v7

    .line 4188
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listRight":I
    .end local v4    # "retValue":Z
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 4193
    .restart local v4    # "retValue":Z
    :cond_3
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_1

    .line 4198
    .restart local v0    # "first":Landroid/view/View;
    .restart local v3    # "listRight":I
    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 4199
    .local v2, "listLeft":I
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4200
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v5, v2, :cond_d

    .line 4201
    :cond_5
    return v7

    .line 4198
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listLeft":I
    :cond_6
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .restart local v2    # "listLeft":I
    goto :goto_2

    .line 4204
    .end local v0    # "first":Landroid/view/View;
    .end local v2    # "listLeft":I
    .end local v3    # "listRight":I
    :cond_7
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 4205
    .restart local v2    # "listLeft":I
    :goto_3
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4206
    .restart local v0    # "first":Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_a

    .line 4207
    :cond_8
    return v7

    .line 4204
    .end local v0    # "first":Landroid/view/View;
    .end local v2    # "listLeft":I
    :cond_9
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .restart local v2    # "listLeft":I
    goto :goto_3

    .line 4209
    .restart local v0    # "first":Landroid/view/View;
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_4
    sub-int v3, v6, v5

    .line 4210
    .restart local v3    # "listRight":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4211
    .restart local v1    # "last":Landroid/view/View;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v3, :cond_d

    .line 4212
    :cond_b
    return v7

    .line 4209
    .end local v1    # "last":Landroid/view/View;
    .end local v3    # "listRight":I
    :cond_c
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_4

    .line 4216
    .end local v0    # "first":Landroid/view/View;
    .end local v2    # "listLeft":I
    :cond_d
    return v4
.end method

.method protected layoutChildren()V
    .locals 40

    .prologue
    .line 2114
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 2115
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_0

    .line 2116
    return-void

    .line 2118
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 2119
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 2122
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 2124
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2126
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 2127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 2128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    if-nez v13, :cond_1

    .line 2485
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 2129
    :cond_1
    return-void

    .line 2132
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    .line 2133
    .local v8, "childrenLeft":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    sub-int v9, v4, v38

    .line 2134
    .local v9, "childrenRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 2136
    .local v15, "childCount":I
    const/16 v27, 0x0

    .line 2137
    .local v27, "index":I
    const/4 v7, 0x0

    .line 2140
    .local v7, "delta":I
    const/4 v5, 0x0

    .line 2141
    .local v5, "oldSel":Landroid/view/View;
    const/16 v30, 0x0

    .line 2142
    .local v30, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    .line 2145
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 2160
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v27, v4, v38

    .line 2161
    if-ltz v27, :cond_3

    move/from16 v0, v27

    if-ge v0, v15, :cond_3

    .line 2162
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2166
    .end local v5    # "oldSel":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 2168
    .local v30, "oldFirst":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_4

    .line 2169
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v38, v0

    sub-int v7, v4, v38

    .line 2173
    :cond_4
    add-int v4, v27, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2176
    .end local v6    # "newSel":Landroid/view/View;
    .end local v30    # "oldFirst":Landroid/view/View;
    :cond_5
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v16, v0

    .line 2177
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_6

    .line 2178
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->handleDataChanged()V

    .line 2183
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_8

    .line 2184
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 2185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2484
    if-nez v13, :cond_7

    .line 2485
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 2186
    :cond_7
    return-void

    .line 2147
    .end local v16    # "dataChanged":Z
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .local v30, "oldFirst":Landroid/view/View;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v27, v4, v38

    .line 2148
    if-ltz v27, :cond_5

    move/from16 v0, v27

    if-ge v0, v15, :cond_5

    .line 2149
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "newSel":Landroid/view/View;
    goto :goto_0

    .line 2187
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v30    # "oldFirst":Landroid/view/View;
    .restart local v16    # "dataChanged":Z
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/widget/ListAdapter;->getCount()I

    move-result v38

    move/from16 v0, v38

    if-eq v4, v0, :cond_a

    .line 2188
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "The content of the adapter has changed but SemHorizontalListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in SemHorizontalListView("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 2192
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v39

    .line 2188
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 2192
    const-string/jumbo v39, ", "

    .line 2188
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 2192
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    .line 2188
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 2193
    const-string/jumbo v39, ") with Adapter("

    .line 2188
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    .line 2188
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 2193
    const-string/jumbo v39, ")]"

    .line 2188
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2483
    .end local v7    # "delta":I
    .end local v8    # "childrenLeft":I
    .end local v9    # "childrenRight":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v27    # "index":I
    :catchall_0
    move-exception v4

    .line 2484
    if-nez v13, :cond_9

    .line 2485
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 2483
    :cond_9
    throw v4

    .line 2196
    .restart local v7    # "delta":I
    .restart local v8    # "childrenLeft":I
    .restart local v9    # "childrenRight":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v27    # "index":I
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2198
    const/4 v10, 0x0

    .line 2199
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 2200
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    .line 2201
    .local v12, "accessibilityFocusPosition":I
    const/16 v28, 0x0

    .line 2205
    .local v28, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v36

    .line 2206
    .local v36, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v36, :cond_e

    .line 2207
    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v19

    .line 2208
    .local v19, "focusHost":Landroid/view/View;
    if-eqz v19, :cond_e

    .line 2209
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 2210
    .local v18, "focusChild":Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 2211
    const/16 v28, 0x1

    .line 2213
    :cond_b
    if-eqz v18, :cond_e

    .line 2214
    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2215
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    .line 2214
    if-nez v4, :cond_c

    .line 2215
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    .line 2214
    if-eqz v4, :cond_d

    .line 2218
    :cond_c
    move-object/from16 v11, v19

    .line 2219
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 2225
    .end local v10    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    .line 2230
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v19    # "focusHost":Landroid/view/View;
    :cond_e
    const/16 v20, 0x0

    .line 2231
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v21, 0x0

    .line 2236
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v24

    .line 2237
    .local v24, "focusedChild":Landroid/view/View;
    if-eqz v24, :cond_11

    .line 2243
    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2244
    :cond_f
    move-object/from16 v20, v24

    .line 2246
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v21

    .line 2247
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    if-eqz v21, :cond_10

    .line 2249
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2252
    .end local v20    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v21    # "focusLayoutRestoreView":Landroid/view/View;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 2257
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    .line 2258
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v33, v0

    .line 2259
    .local v33, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    if-eqz v16, :cond_12

    .line 2260
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    if-ge v0, v15, :cond_13

    .line 2261
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v38, v17, v25

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2260
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 2264
    .end local v25    # "i":I
    :cond_12
    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 2268
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 2269
    invoke-virtual/range {v33 .. v33}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 2271
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_1

    .line 2312
    if-nez v15, :cond_23

    .line 2313
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_21

    .line 2314
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v4, :cond_20

    .line 2315
    const/4 v4, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v31

    .line 2316
    .local v31, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2317
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v35

    .line 2360
    .end local v8    # "childrenLeft":I
    .end local v9    # "childrenRight":I
    .end local v31    # "position":I
    .local v35, "sel":Landroid/view/View;
    :goto_2
    invoke-virtual/range {v33 .. v33}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->scrapActiveViews()V

    .line 2362
    if-eqz v35, :cond_32

    .line 2365
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2383
    :cond_14
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2385
    :goto_3
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 2417
    :cond_15
    :goto_4
    if-eqz v36, :cond_16

    .line 2418
    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v29

    .line 2419
    .local v29, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v29, :cond_3a

    .line 2420
    if-eqz v11, :cond_39

    .line 2421
    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    .line 2420
    if-eqz v4, :cond_39

    .line 2423
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v32

    .line 2424
    .local v32, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_38

    if-eqz v32, :cond_38

    .line 2426
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v38

    .line 2425
    invoke-static/range {v38 .. v39}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v37

    .line 2428
    .local v37, "virtualViewId":I
    const/16 v4, 0x40

    const/16 v38, 0x0

    .line 2427
    move-object/from16 v0, v32

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 2462
    .end local v29    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v32    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v37    # "virtualViewId":I
    :cond_16
    :goto_5
    if-eqz v21, :cond_17

    .line 2463
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 2464
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2467
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 2468
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2469
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v4, :cond_18

    .line 2470
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2471
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2473
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2474
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2476
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateScrollIndicators()V

    .line 2478
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v4, :cond_19

    .line 2479
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 2482
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2484
    if-nez v13, :cond_1a

    .line 2485
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 2113
    :cond_1a
    return-void

    .line 2273
    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenLeft":I
    .restart local v9    # "childrenRight":I
    :pswitch_2
    if-eqz v6, :cond_1b

    .line 2274
    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Landroid/widget/SemHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2276
    .end local v35    # "sel":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2280
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_1c

    .line 2281
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2283
    .end local v35    # "sel":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2286
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_1d

    .line 2287
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v35

    .line 2290
    .restart local v35    # "sel":Landroid/view/View;
    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_2

    .line 2289
    .end local v35    # "sel":Landroid/view/View;
    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto :goto_6

    .line 2293
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_1e

    .line 2294
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2295
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v35

    .line 2300
    .restart local v35    # "sel":Landroid/view/View;
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_2

    .line 2297
    .end local v35    # "sel":Landroid/view/View;
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2298
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto :goto_7

    .line 2303
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_1f

    .line 2304
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2306
    .end local v35    # "sel":Landroid/view/View;
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .end local v35    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 2309
    invoke-direct/range {v4 .. v9}, Landroid/widget/SemHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2319
    .end local v35    # "sel":Landroid/view/View;
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v31

    .line 2320
    .restart local v31    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2321
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2324
    .end local v31    # "position":I
    .end local v35    # "sel":Landroid/view/View;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v4, :cond_22

    .line 2325
    const/4 v4, 0x0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v31

    .line 2326
    .restart local v31    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2327
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2329
    .end local v31    # "position":I
    .end local v35    # "sel":Landroid/view/View;
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v31

    .line 2330
    .restart local v31    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2331
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2336
    .end local v31    # "position":I
    .end local v35    # "sel":Landroid/view/View;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_28

    .line 2337
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_25

    .line 2338
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-nez v5, :cond_24

    .end local v9    # "childrenRight":I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .end local v35    # "sel":Landroid/view/View;
    .restart local v9    # "childrenRight":I
    :cond_24
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    goto :goto_8

    .line 2339
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_27

    .line 2340
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v30, :cond_26

    .end local v9    # "childrenRight":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .end local v35    # "sel":Landroid/view/View;
    .restart local v9    # "childrenRight":I
    :cond_26
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v9

    goto :goto_9

    .line 2342
    :cond_27
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2346
    .end local v35    # "sel":Landroid/view/View;
    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_2a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_2a

    .line 2347
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-nez v5, :cond_29

    .end local v8    # "childrenLeft":I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenLeft":I
    :cond_29
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_a

    .line 2348
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_2c

    .line 2350
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v30, :cond_2b

    .end local v8    # "childrenLeft":I
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenLeft":I
    :cond_2b
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_b

    .line 2352
    :cond_2c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    .line 2366
    .end local v8    # "childrenLeft":I
    .end local v9    # "childrenRight":I
    :cond_2d
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2e

    .line 2367
    if-eqz v21, :cond_2e

    .line 2368
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    move-result v4

    .line 2366
    if-nez v4, :cond_30

    .line 2368
    :cond_2e
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->requestFocus()Z

    move-result v22

    .line 2369
    .local v22, "focusWasTaken":Z
    :goto_c
    if-nez v22, :cond_31

    .line 2373
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v23

    .line 2374
    .local v23, "focused":Landroid/view/View;
    if-eqz v23, :cond_2f

    .line 2375
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->clearFocus()V

    .line 2377
    :cond_2f
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_3

    .line 2366
    .end local v22    # "focusWasTaken":Z
    .end local v23    # "focused":Landroid/view/View;
    :cond_30
    const/16 v22, 0x1

    goto :goto_c

    .line 2379
    .restart local v22    # "focusWasTaken":Z
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_3

    .line 2387
    .end local v22    # "focusWasTaken":Z
    :cond_32
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/16 v38, 0x1

    move/from16 v0, v38

    if-eq v4, v0, :cond_34

    .line 2388
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/16 v38, 0x2

    move/from16 v0, v38

    if-ne v4, v0, :cond_35

    const/16 v26, 0x1

    .line 2389
    .local v26, "inTouchMode":Z
    :goto_d
    if-eqz v26, :cond_36

    .line 2391
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2392
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_33

    .line 2393
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2411
    .end local v14    # "child":Landroid/view/View;
    :cond_33
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v21, :cond_15

    .line 2412
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_4

    .line 2387
    .end local v26    # "inTouchMode":Z
    :cond_34
    const/16 v26, 0x1

    goto :goto_d

    .line 2388
    :cond_35
    const/16 v26, 0x0

    goto :goto_d

    .line 2395
    .restart local v26    # "inTouchMode":Z
    :cond_36
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    const/16 v38, -0x1

    move/from16 v0, v38

    if-eq v4, v0, :cond_37

    .line 2399
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2400
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_33

    .line 2401
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_e

    .line 2405
    .end local v14    # "child":Landroid/view/View;
    :cond_37
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 2406
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_e

    .line 2430
    .end local v26    # "inTouchMode":Z
    .restart local v29    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v32    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_38
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_5

    .line 2432
    .end local v32    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_39
    const/4 v4, -0x1

    if-eq v12, v4, :cond_16

    .line 2435
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v12, v4

    .line 2436
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    .line 2435
    const/16 v39, 0x0

    .line 2434
    move/from16 v0, v39

    move/from16 v1, v38

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v31

    .line 2437
    .restart local v31    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 2438
    .local v34, "restoreView":Landroid/view/View;
    if-eqz v34, :cond_16

    .line 2439
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_5

    .line 2442
    .end local v31    # "position":I
    .end local v34    # "restoreView":Landroid/view/View;
    :cond_3a
    const/4 v4, -0x1

    if-eq v12, v4, :cond_16

    .line 2444
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v12, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    const/16 v39, 0x0

    .line 2443
    move/from16 v0, v39

    move/from16 v1, v38

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v31

    .line 2446
    .restart local v31    # "position":I
    if-eqz v28, :cond_3b

    .line 2447
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getId()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .line 2451
    .restart local v34    # "restoreView":Landroid/view/View;
    :goto_f
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_16

    .line 2452
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2453
    if-eqz v34, :cond_16

    .line 2454
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_5

    .line 2449
    .end local v34    # "restoreView":Landroid/view/View;
    :cond_3b
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v34

    .restart local v34    # "restoreView":Landroid/view/View;
    goto :goto_f

    .line 2145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2271
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
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2827
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2828
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2829
    :cond_0
    return v4

    .line 2832
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2834
    .local v1, "count":I
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_2

    .line 2835
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_6

    .line 2836
    if-eqz p2, :cond_5

    .line 2837
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2838
    :goto_0
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2862
    :cond_2
    if-ltz p1, :cond_3

    if-lt p1, v1, :cond_8

    .line 2863
    :cond_3
    return v4

    .line 2839
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 2842
    :cond_5
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2843
    :goto_1
    if-ge p1, v1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2844
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2849
    :cond_6
    if-eqz p2, :cond_7

    .line 2850
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2851
    :goto_2
    if-ge p1, v1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2852
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 2855
    :cond_7
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2856
    :goto_3
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2857
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 2866
    :cond_8
    return p1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 2882
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2883
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2884
    :cond_0
    return v5

    .line 2888
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2889
    .local v1, "after":I
    if-eq v1, v5, :cond_2

    .line 2890
    return v1

    .line 2894
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2895
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v5, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2896
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_8

    .line 2897
    if-eqz p3, :cond_5

    .line 2898
    add-int/lit8 v3, p2, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2899
    :goto_0
    if-ge p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2902
    :cond_3
    if-lt p2, p1, :cond_e

    .line 2903
    return v5

    .line 2900
    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2906
    :cond_5
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2907
    :goto_1
    if-le p2, p1, :cond_6

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2910
    :cond_6
    if-gt p2, p1, :cond_e

    .line 2911
    return v5

    .line 2908
    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2916
    :cond_8
    if-eqz p3, :cond_b

    .line 2917
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2918
    :goto_2
    if-le p2, p1, :cond_9

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2921
    :cond_9
    if-gt p2, p1, :cond_e

    .line 2922
    return v5

    .line 2919
    :cond_a
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2925
    :cond_b
    add-int/lit8 v3, p2, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2926
    :goto_3
    if-ge p2, p1, :cond_c

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2929
    :cond_c
    if-lt p2, p1, :cond_e

    .line 2930
    return v5

    .line 2927
    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 2934
    :cond_e
    return p2
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 12
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1615
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1616
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 1617
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    return v10

    .line 1621
    :cond_0
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v9, v10, v11

    .line 1622
    .local v9, "returnedWidth":I
    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    if-lez v10, :cond_4

    iget-object v10, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1625
    .local v3, "dividerHeight":I
    :goto_0
    const/4 v6, 0x0

    .line 1630
    .local v6, "prevWidthWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1631
    :cond_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 1632
    .local v7, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v8

    .line 1633
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    .line 1635
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_1
    if-gt v4, p3, :cond_9

    .line 1636
    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1638
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1640
    if-lez v4, :cond_2

    .line 1642
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_5

    .line 1643
    sub-int/2addr v9, v3

    .line 1649
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 1650
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1649
    invoke-virtual {v7, v10}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1651
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1654
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 1656
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1659
    if-ltz p5, :cond_6

    .line 1660
    move/from16 v0, p5

    if-le v4, v0, :cond_6

    .line 1661
    if-lez v6, :cond_6

    .line 1662
    move/from16 v0, p4

    if-eq v9, v0, :cond_6

    .line 1659
    .end local v6    # "prevWidthWithoutPartialChild":I
    :goto_3
    return v6

    .line 1622
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v7    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "dividerHeight":I
    goto :goto_0

    .line 1645
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevWidthWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_5
    add-int/2addr v9, v3

    goto :goto_2

    :cond_6
    move/from16 v6, p4

    .line 1664
    goto :goto_3

    .line 1667
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1668
    move v6, v9

    .line 1635
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1674
    .end local v2    # "child":Landroid/view/View;
    :cond_9
    return v9
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 4718
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->onFinishInflate()V

    .line 4720
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4721
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 4722
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4723
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;)V

    .line 4722
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4725
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViews()V

    .line 4717
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 4632
    invoke-super/range {p0 .. p3}, Landroid/widget/SemHorizontalAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4634
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4635
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 4636
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 4637
    .local v4, "closestChildLeft":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 4638
    iget v12, p0, Landroid/view/View;->mScrollX:I

    iget v13, p0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 4642
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 4643
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 4644
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 4649
    :cond_0
    iget-object v11, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 4650
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 4651
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 4652
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4654
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 4656
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 4654
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4660
    :cond_2
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4661
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4662
    invoke-virtual {p0, v10, v11}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4663
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/SemHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 4665
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 4666
    move v9, v6

    .line 4667
    move v5, v8

    .line 4668
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    .line 4673
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_5

    .line 4674
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    .line 4679
    :goto_2
    if-eqz p1, :cond_4

    iget-object v12, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v12, :cond_4

    .line 4680
    new-instance v12, Landroid/widget/SemHorizontalListView$2;

    invoke-direct {v12, p0}, Landroid/widget/SemHorizontalListView$2;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v12}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4631
    :cond_4
    return-void

    .line 4676
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5016
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5017
    const-class v0, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 5015
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 5053
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5054
    const-class v3, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 5056
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 5057
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 5058
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 5059
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 5052
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 5069
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5071
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 5072
    .local v7, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    const/4 v4, 0x1

    .line 5073
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->isItemChecked(I)Z

    move-result v5

    .line 5075
    .local v5, "isSelected":Z
    const/4 v0, 0x0

    move v2, p2

    move v3, v1

    .line 5074
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 5076
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 5068
    return-void

    .line 5072
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "isHeading":Z
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2063
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2064
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3000
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3019
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3037
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1506
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->onMeasure(II)V

    .line 1508
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1509
    .local v12, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1510
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1511
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1513
    .local v11, "heightSize":I
    const/4 v9, 0x0

    .line 1514
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1515
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1517
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1518
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v12, :cond_0

    .line 1519
    if-nez v10, :cond_1

    .line 1520
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1522
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p2}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1524
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1525
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1526
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/SemHorizontalListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1528
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 1529
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1528
    invoke-virtual {v1, v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1534
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v10, :cond_5

    .line 1535
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 1536
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalScrollbarHeight()I

    move-result v1

    .line 1535
    add-int v11, v0, v1

    .line 1541
    :goto_1
    if-nez v12, :cond_2

    .line 1542
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    .line 1543
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 1542
    add-int v4, v0, v1

    .line 1546
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_3

    move-object v0, p0

    move v1, p2

    move v5, v3

    .line 1548
    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    .line 1551
    :cond_3
    invoke-virtual {p0, v4, v11}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1552
    iput p2, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 1504
    return-void

    .line 1517
    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1538
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v11, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1438
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1439
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1440
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1441
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v0, v5, v6

    .line 1442
    .local v0, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1443
    .local v1, "childRight":I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, p1, v5

    sub-int v5, v1, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1445
    .local v4, "offset":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1447
    .local v3, "left":I
    :goto_0
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1448
    new-instance v5, Landroid/widget/SemHorizontalListView$FocusSelector;

    invoke-direct {v5, p0, v7}, Landroid/widget/SemHorizontalListView$FocusSelector;-><init>(Landroid/widget/SemHorizontalListView;Landroid/widget/SemHorizontalListView$FocusSelector;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    .line 1450
    :cond_0
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    invoke-virtual {v5, v0, v3}, Landroid/widget/SemHorizontalListView$FocusSelector;->setup(II)Landroid/widget/SemHorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1453
    .end local v0    # "childPosition":I
    .end local v1    # "childRight":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "offset":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->onSizeChanged(IIII)V

    .line 1437
    return-void

    .line 1446
    .restart local v0    # "childPosition":I
    .restart local v1    # "childRight":I
    .restart local v2    # "focusedChild":Landroid/view/View;
    .restart local v4    # "offset":I
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v5, v4

    .restart local v3    # "left":I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2086
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2087
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 4700
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onWindowFocusChanged(Z)V

    .line 4701
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    .line 4702
    new-instance v0, Landroid/widget/SemHorizontalListView$3;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$3;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4699
    :cond_0
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3206
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 3207
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3208
    .local v0, "nextPage":I
    const/4 v2, 0x0

    .line 3216
    .local v2, "rightSide":Z
    :goto_0
    if-ltz v0, :cond_5

    .line 3217
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 3218
    .local v1, "position":I
    if-ltz v1, :cond_5

    .line 3219
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 3220
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 3222
    if-eqz v2, :cond_0

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_0

    .line 3223
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 3226
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3227
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 3230
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3231
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 3232
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3233
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3236
    :cond_2
    return v7

    .line 3209
    .end local v0    # "nextPage":I
    .end local v1    # "position":I
    .end local v2    # "rightSide":Z
    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_4

    .line 3210
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3211
    .restart local v0    # "nextPage":I
    const/4 v2, 0x1

    .restart local v2    # "rightSide":Z
    goto :goto_0

    .line 3213
    .end local v0    # "nextPage":I
    .end local v2    # "rightSide":Z
    :cond_4
    return v6

    .line 3240
    .restart local v0    # "nextPage":I
    .restart local v2    # "rightSide":Z
    :cond_5
    return v6
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1583
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 574
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 580
    :cond_0
    const/4 v0, 0x1

    .line 582
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 583
    return v0

    .line 585
    .end local v0    # "result":Z
    :cond_2
    return v2
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 477
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 483
    :cond_0
    const/4 v0, 0x1

    .line 485
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 486
    return v0

    .line 488
    .end local v0    # "result":Z
    :cond_2
    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 769
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 772
    .local v8, "rectLeftWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 773
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 776
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 777
    .local v6, "listUnfadedLeft":I
    add-int v7, v6, v12

    .line 778
    .local v7, "listUnfadedRight":I
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 780
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingLeftFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 782
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v8, v4, :cond_1

    .line 783
    :cond_0
    add-int/2addr v6, v4

    .line 787
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 788
    .local v1, "childCount":I
    add-int/lit8 v13, v1, -0x1

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    .line 790
    .local v9, "rightOfRightChild":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingRightFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 792
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    .line 793
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v4

    if-ge v13, v14, :cond_3

    .line 794
    :cond_2
    sub-int/2addr v7, v4

    .line 798
    :cond_3
    const/4 v11, 0x0

    .line 800
    .local v11, "scrollXDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-le v13, v6, :cond_7

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_6

    .line 807
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v6

    add-int/lit8 v11, v13, 0x0

    .line 814
    :goto_0
    sub-int v3, v9, v7

    .line 815
    .local v3, "distanceToRight":I
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 835
    .end local v3    # "distanceToRight":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 836
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 837
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    .line 838
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 840
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 842
    :cond_5
    return v10

    .line 810
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    add-int/lit8 v11, v13, 0x0

    goto :goto_0

    .line 816
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-ge v13, v6, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v13, v7, :cond_4

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_8

    .line 823
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v7, v13

    rsub-int/lit8 v11, v13, 0x0

    .line 830
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 831
    .local v5, "left":I
    sub-int v2, v5, v6

    .line 832
    .local v2, "deltaToLeft":I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 826
    .end local v2    # "deltaToLeft":I
    .end local v5    # "left":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    rsub-int/lit8 v11, v13, 0x0

    goto :goto_3

    .line 835
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 690
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 692
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    .line 694
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 686
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 626
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 627
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 631
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 632
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    .line 634
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 635
    :cond_1
    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 640
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 641
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 643
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    .line 644
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 645
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 646
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 647
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 649
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 650
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 652
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 655
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_5

    .line 656
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_4

    .line 657
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v5}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 665
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 666
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 668
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 670
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 679
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 626
    return-void

    .line 637
    :cond_3
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 659
    :cond_4
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 661
    .end local v0    # "position":I
    :cond_5
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_6

    .line 662
    invoke-virtual {p0, v4, v4}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 663
    .end local v0    # "position":I
    :cond_6
    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 673
    .end local v0    # "position":I
    :cond_7
    iput-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 674
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 676
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .prologue
    .line 167
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .line 166
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4497
    if-eqz p1, :cond_1

    .line 4498
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4502
    :goto_0
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4503
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    .line 4504
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4505
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4496
    return-void

    .line 4500
    :cond_1
    iput v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 4503
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 4522
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4523
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4524
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4521
    return-void
.end method

.method public setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    .prologue
    .line 172
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 174
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    new-instance v1, Landroid/widget/SemHorizontalListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalListView$1;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    .line 171
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 4560
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 4561
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4559
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 4537
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4538
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4536
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 4160
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    .line 4161
    if-nez p1, :cond_0

    .line 4162
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 4159
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4601
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4602
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4600
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4580
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4581
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-gez v0, :cond_0

    .line 4582
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4579
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 608
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2702
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    .line 2701
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2942
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2943
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2944
    iput v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2945
    return-void

    .line 2948
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2949
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelection(I)V

    .line 2941
    :goto_0
    return-void

    .line 2951
    :cond_1
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2952
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromStart(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 2756
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 2757
    return-void

    .line 2760
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2761
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2762
    if-ltz p1, :cond_1

    .line 2763
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2769
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    .line 2770
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 2771
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2774
    :goto_1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2

    .line 2775
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2776
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2779
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 2780
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2782
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2755
    :cond_4
    return-void

    .line 2766
    :cond_5
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 2772
    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 2716
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 2717
    return-void

    .line 2720
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2721
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2722
    if-ltz p1, :cond_1

    .line 2723
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2729
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    .line 2730
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 2731
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2734
    :goto_1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2

    .line 2735
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2736
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2739
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 2740
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2742
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2715
    :cond_4
    return-void

    .line 2726
    :cond_5
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 2732
    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2793
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2794
    const/4 v0, 0x0

    .line 2796
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2798
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2799
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2800
    const/4 v0, 0x1

    .line 2806
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 2807
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2810
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 2812
    if-eqz v0, :cond_2

    .line 2813
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2792
    :cond_2
    return-void

    .line 2801
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2802
    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldCorrectTooHigh()Z
    .locals 1

    .prologue
    .line 1819
    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1240
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollByOffset(I)V

    .line 1239
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1230
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 1229
    return-void
.end method
