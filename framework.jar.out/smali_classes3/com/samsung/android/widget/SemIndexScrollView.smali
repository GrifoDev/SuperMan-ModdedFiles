.class public Lcom/samsung/android/widget/SemIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "SemIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;,
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;,
        Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;,
        Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;
    }
.end annotation


# static fields
.field private static final FAVORITE_CHAR:C = '\u2606'

.field public static final GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field private static final NO_PREV_LANG:I = 0x0

.field private static final OUT_OF_BOUNDARY:F = -9999.0f

.field private static final TAG:Ljava/lang/String; = "SemIndexScrollView"

.field private static mSECRobotoLightRegularFont:Landroid/graphics/Typeface;


# instance fields
.field private DEFAULT_MAX_DEPTH:I

.field private FEW_ELEMENT_LOGIC:I

.field private MANY_ELEMENTS_REPRESENTED_BY_DOT:I

.field private MANY_ELEMENT_LOGIC:I

.field private final debug:Z

.field private mAnimEnd:Z

.field private mCalculatedIndexStr:Ljava/lang/String;

.field private mColorPrimary:I

.field private mColorPrimaryDark:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:Ljava/lang/String;

.field private mFirstLanguageGap:I

.field private mHasOverlayChild:Z

.field private mIndexBarGravity:I

.field mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

.field private mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

.field private mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

.field private final mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

.field private mLangDbEndPositions:[I

.field private mLangDbStartPositions:[I

.field private mLangScrollEndPositions:[I

.field private mLangScrollStartPositions:[I

.field private mNumberOfLanguages:I

.field private mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

.field private mPrevSetLang:I

.field private mRegisteredDataSetObserver:Z

.field private mScrollLogic:I

.field private mSipResizeAnimationState:Z

.field private mTouchY:F

.field private mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

.field private m_bNoSubIndexes:Z

.field private m_bSimpleIndexScroll:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->DEFAULT_MAX_DEPTH:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    return-object v0
.end method

.method static synthetic -get11()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mScrollLogic:I

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemIndexScrollView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENT_LOGIC:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemIndexScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mAnimEnd:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimary:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemAbstractIndexer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemIndexScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mAnimEnd:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemIndexScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimary:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemIndexScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimaryDark:I

    return p1
.end method

.method static synthetic -set3(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    sput-object p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemIndexScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mScrollLogic:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemIndexScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->initLangPositionBounds()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->debug:Z

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENT_LOGIC:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mScrollLogic:I

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mAnimEnd:Z

    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimary:I

    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimaryDark:I

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->DEFAULT_MAX_DEPTH:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSipResizeAnimationState:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->debug:Z

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENT_LOGIC:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mScrollLogic:I

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mAnimEnd:Z

    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimary:I

    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimaryDark:I

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->DEFAULT_MAX_DEPTH:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSipResizeAnimationState:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->init(Landroid/content/Context;I)V

    return-void
.end method

.method private addMissingSubIndexes(III)V
    .locals 11

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getItemPlusSpaceWidth()I

    move-result v2

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    mul-int v3, v2, v0

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getPosition()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    :goto_0
    if-ge v1, p3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v9, v7

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v9, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-nez v5, :cond_3

    move v9, v3

    :goto_1
    invoke-virtual {v10, v9, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_2

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sub-int v9, v8, v3

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private calcEndPosition(II)I
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    if-ne p1, p2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    aget v3, v3, v1

    add-int/lit8 v0, v3, -0x1

    if-ge v0, v2, :cond_1

    if-lt v0, p1, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getDbPositionLanguage(I)I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbEndPositions:[I

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbEndPositions:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_4

    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    :cond_3
    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    return v1

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    return v3

    :cond_2
    return v4
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-nez v9, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCachingValue(I)I

    move-result v9

    return v9

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v1

    const/4 v0, 0x0

    move-object v8, p1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9, v7, v11}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_c

    :cond_4
    return v3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v11, :cond_3

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v4

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_7

    :cond_6
    return v3

    :cond_7
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_9

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget-object v9, v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget v3, v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->getDbPositionLanguage(I)I

    move-result v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_a

    return v3

    :cond_a
    if-ne v4, v1, :cond_b

    return v3

    :cond_b
    const/4 v0, 0x1

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :cond_c
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_e

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget-object v9, v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget v3, v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_f

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v6

    :cond_f
    return v3
.end method

.method private getNumberOfMissingSubIndexes(I)I
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v2, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getNumberOfSmallerOrEqualIndexes(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget-boolean v3, v3, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mExists:Z

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    packed-switch v0, :pswitch_data_0

    return v10

    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-nez v7, :cond_0

    return v10

    :cond_0
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    :goto_0
    if-eq v4, v11, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v12

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_0

    :pswitch_1
    float-to-int v7, v5

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getNumberOfMissingSubIndexes(I)I

    move-result v2

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    if-eqz v7, :cond_4

    if-lt v2, v12, :cond_4

    :cond_3
    return v12

    :cond_4
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mAnimEnd:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_a

    iput-boolean v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v3, v7, v8

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_8

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeSubIndex()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-lez v2, :cond_7

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v11, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    :goto_3
    if-eq v4, v11, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_3

    :cond_a
    iput-boolean v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7, v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawEffect(F)V

    iput v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    :cond_b
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    :goto_4
    if-eq v4, v11, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_4

    :pswitch_2
    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iput-boolean v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->resetSelectedIndex()V

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->close()V

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v7, v6}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    :cond_d
    const v7, -0x39e3c400    # -9999.0f

    iput v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;I)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->DEFAULT_MAX_DEPTH:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setMaxDepth(I)V

    return-void
.end method

.method private initIndexerLanguagesBounds()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    return v2
.end method

.method private initLangPositionBounds()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollStartPositions:[I

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollEndPositions:[I

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbEndPositions:[I

    return-void
.end method

.method private notifyIndexChange(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onIndexChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setLangPosition(Lcom/samsung/android/widget/SemIndexScrollView;II)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollStartPositions:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollEndPositions:[I

    if-nez v2, :cond_4

    :cond_2
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mFirstLanguageGap:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sub-int v2, p3, v2

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mFirstLanguageGap:I

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->initIndexerLanguagesBounds()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollStartPositions:[I

    aget v2, v2, v0

    if-lt p2, v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollEndPositions:[I

    aget v2, v2, v0

    if-gt p2, v2, :cond_8

    :cond_5
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    :cond_6
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->resetSelectedIndex()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    :try_start_0
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    const/4 v3, 0x0

    invoke-direct {p0, p0, v2, v0, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setSimpleIndexWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    return-void
.end method

.method private startAnimation(Ljava/lang/Object;IIF)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v4, v5

    :try_start_0
    const-string/jumbo v5, "y"

    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string/jumbo v5, "y"

    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-ge p2, p3, :cond_0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/samsung/android/widget/SemIndexScrollView$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/widget/SemIndexScrollView$1;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    throw v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSipResizeAnimationState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setDimensionns(II)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected dispatchSipResizeAnimationState(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSipResizeAnimationState:Z

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEffectBackgroundColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-wrap0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    return-void
.end method

.method public setEffectTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    return-void
.end method

.method public setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setIndexBarGravity(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setPosition(I)V

    return-void
.end method

.method public setIndexBarPressedTextColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I

    return-void
.end method

.method public setIndexBarTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I

    return-void
.end method

.method public setIndexScrollMargin(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setIndexScrollBgMargin(II)V

    :cond_0
    return-void
.end method

.method public setIndexer(Lcom/samsung/android/widget/SemAbstractIndexer;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SemIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get3(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->resetSelectedIndex()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollStartPositions:[I

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollEndPositions:[I

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbEndPositions:[I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->initIndexerLanguagesBounds()Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    return-void
.end method

.method public setSimpleIndexScroll([Ljava/lang/String;I)V
    .locals 4

    const/4 v3, -0x1

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "SemIndexView.setSimpleIndexScroll(indexBarChar) "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105036d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexWidth(I)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexWidth(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get3(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v1, p1, v3, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    return-void
.end method
