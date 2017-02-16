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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->debug:Z

    .line 84
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    .line 90
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    .line 95
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 100
    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    .line 101
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 112
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 161
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 162
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 163
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 164
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mScrollLogic:I

    .line 167
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mAnimEnd:Z

    .line 171
    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimary:I

    .line 172
    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimaryDark:I

    .line 174
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->DEFAULT_MAX_DEPTH:I

    .line 179
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSipResizeAnimationState:Z

    .line 182
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    .line 3072
    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mFirstLanguageGap:I

    .line 3081
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    .line 191
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    .line 192
    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 193
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->init(Landroid/content/Context;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->debug:Z

    .line 84
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    .line 90
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    .line 95
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    .line 101
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 112
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 161
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 162
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 163
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 164
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mScrollLogic:I

    .line 167
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mAnimEnd:Z

    .line 171
    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimary:I

    .line 172
    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mColorPrimaryDark:I

    .line 174
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->DEFAULT_MAX_DEPTH:I

    .line 179
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSipResizeAnimationState:Z

    .line 182
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    .line 3072
    iput v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mFirstLanguageGap:I

    .line 3081
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    .line 204
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    .line 205
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    .line 217
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    .line 218
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->init(Landroid/content/Context;I)V

    .line 202
    return-void
.end method

.method private addMissingSubIndexes(III)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "numberOfMissingElements"    # I

    .prologue
    .line 1175
    const/4 v1, 0x0

    .line 1176
    .local v1, "index":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getItemPlusSpaceWidth()I

    move-result v2

    .line 1177
    .local v2, "indexPlusSpaceWidth":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    .line 1178
    .local v0, "depth":I
    mul-int v3, v2, v0

    .line 1179
    .local v3, "missingX":I
    const/4 v4, 0x0

    .line 1180
    .local v4, "noSubIndexes":Z
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getPosition()I

    move-result v5

    .line 1181
    .local v5, "pos":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 1183
    .local v8, "width":I
    :goto_0
    if-ge v1, p3, :cond_0

    if-eqz v4, :cond_1

    .line 1173
    :cond_0
    return-void

    .line 1185
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1187
    .local v7, "subIndex":[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v9, v7

    if-eqz v9, :cond_4

    .line 1189
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v9, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    .line 1191
    iget-object v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-nez v5, :cond_3

    move v9, v3

    :goto_1
    invoke-virtual {v10, v9, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v9

    .line 1190
    iput-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 1194
    add-int/2addr v3, v2

    .line 1195
    add-int/lit8 v1, v1, 0x1

    .line 1197
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v6

    .line 1198
    .local v6, "position":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_2

    .line 1200
    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    .line 1202
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    goto :goto_0

    .line 1191
    .end local v6    # "position":I
    :cond_3
    sub-int v9, v8, v3

    goto :goto_1

    .line 1206
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private calcEndPosition(II)I
    .locals 4
    .param p1, "langStartPosition"    # I
    .param p2, "maxStartPosition"    # I

    .prologue
    .line 365
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 366
    .local v2, "endPosition":I
    if-ne p1, p2, :cond_0

    .line 368
    return v2

    .line 372
    :cond_0
    const/4 v1, 0x0

    .local v1, "curLang":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    aget v3, v3, v1

    add-int/lit8 v0, v3, -0x1

    .line 375
    .local v0, "candidateEndPosition":I
    if-ge v0, v2, :cond_1

    if-lt v0, p1, :cond_1

    .line 377
    move v2, v0

    .line 372
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "candidateEndPosition":I
    :cond_2
    return v2
.end method

.method private getDbPositionLanguage(I)I
    .locals 2
    .param p1, "dbPosition"    # I

    .prologue
    .line 723
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbEndPositions:[I

    if-nez v1, :cond_1

    .line 724
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 726
    :cond_1
    const/4 v0, 0x0

    .line 729
    .local v0, "curLanguage":I
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_2

    .line 731
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbEndPositions:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_4

    .line 738
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_3

    .line 740
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    .line 743
    :cond_3
    return v0

    .line 729
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    .prologue
    .line 1054
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v0

    .line 1055
    .local v0, "currentLang":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    .line 1056
    .local v2, "indexerAlphabetSize":I
    const/4 v1, 0x0

    .line 1058
    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 1060
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    :cond_0
    if-ge v1, v2, :cond_1

    .line 1065
    return v1

    .line 1069
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1081
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-nez v3, :cond_0

    .line 1082
    return v4

    .line 1085
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v0

    .line 1086
    .local v0, "currentLang":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    .line 1087
    .local v2, "indexerAlphabetSize":I
    add-int/lit8 v1, v2, -0x1

    .line 1089
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 1091
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1094
    :cond_1
    if-lez v1, :cond_2

    .line 1096
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    return v3

    .line 1100
    :cond_2
    return v4
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 12
    .param p1, "indexPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 626
    const/4 v3, -0x1

    .line 627
    .local v3, "dbPosition":I
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-nez v9, :cond_1

    .line 628
    :cond_0
    return v3

    .line 631
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v9, :cond_2

    .line 632
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCachingValue(I)I

    move-result v9

    return v9

    .line 639
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v1

    .line 642
    .local v1, "currentLanguage":I
    const/4 v0, 0x0

    .line 644
    .local v0, "bLangChanged":Z
    move-object v8, p1

    .line 645
    .local v8, "searchChar":Ljava/lang/String;
    const/4 v6, 0x0

    .line 646
    .local v6, "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_5

    .line 649
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 650
    .local v7, "prevIndexPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 651
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9, v7, v11}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 689
    .end local v6    # "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    .end local v7    # "prevIndexPath":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_c

    .line 691
    :cond_4
    return v3

    .line 652
    .restart local v6    # "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v11, :cond_3

    .line 654
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v4

    .line 655
    .local v4, "desiredLanguage":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v6

    .line 656
    .local v6, "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_7

    .line 658
    :cond_6
    return v3

    .line 661
    :cond_7
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_9

    .line 664
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget-object v9, v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 665
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget v3, v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    .line 661
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 668
    :cond_9
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->getDbPositionLanguage(I)I

    move-result v2

    .line 671
    .local v2, "dbPosLanguage":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_a

    .line 673
    return v3

    .line 676
    :cond_a
    if-ne v4, v1, :cond_b

    .line 678
    return v3

    .line 683
    :cond_b
    const/4 v0, 0x1

    .line 684
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 685
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    .line 694
    .end local v2    # "dbPosLanguage":I
    .end local v4    # "desiredLanguage":I
    .end local v5    # "i":I
    .end local v6    # "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_e

    .line 697
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget-object v9, v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 698
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget v3, v9, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mPosition:I

    .line 694
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 704
    :cond_e
    if-eqz v0, :cond_f

    .line 706
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 707
    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v6

    .line 710
    :cond_f
    return v3
.end method

.method private getNumberOfMissingSubIndexes(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 1165
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v2, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getNumberOfSmallerOrEqualIndexes(I)I

    move-result v1

    .line 1166
    .local v1, "numberOfExpectedSmallerOrEqualIndexes":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    .line 1168
    .local v0, "depth":I
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "indexPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 606
    .local v2, "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;>;"
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 607
    :cond_0
    return-object v5

    .line 609
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 610
    .local v0, "a":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 611
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget-boolean v3, v3, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mExists:Z

    if-eqz v3, :cond_2

    .line 613
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/samsung/android/widget/SemAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 610
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    :cond_3
    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 801
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 802
    .local v6, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 805
    .local v5, "x":F
    packed-switch v0, :pswitch_data_0

    .line 975
    return v10

    .line 809
    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 810
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 812
    return v10

    .line 814
    :cond_0
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v7, :cond_2

    .line 816
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 823
    .local v4, "position":I
    :goto_0
    if-eq v4, v11, :cond_1

    .line 825
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    .line 977
    .end local v4    # "position":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 978
    return v12

    .line 821
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    .restart local v4    # "position":I
    goto :goto_0

    .line 832
    .end local v4    # "position":I
    :pswitch_1
    float-to-int v7, v5

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getNumberOfMissingSubIndexes(I)I

    move-result v2

    .line 835
    .local v2, "numberOfMissingSubIndexes":I
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    if-eqz v7, :cond_4

    if-lt v2, v12, :cond_4

    .line 837
    :cond_3
    return v12

    .line 835
    :cond_4
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mAnimEnd:Z

    if-eqz v7, :cond_3

    .line 841
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 846
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v7, :cond_6

    .line 890
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

    .line 894
    iput-boolean v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    .line 897
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v3, v7, v8

    .line 898
    .local v3, "numberOfRemovals":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_8

    .line 900
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeSubIndex()V

    .line 898
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 850
    .end local v1    # "i":I
    .end local v3    # "numberOfRemovals":I
    :cond_6
    if-lez v2, :cond_7

    .line 853
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 879
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 880
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 881
    .restart local v4    # "position":I
    if-eq v4, v11, :cond_1

    .line 883
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_1

    .line 903
    .end local v4    # "position":I
    .restart local v1    # "i":I
    .restart local v3    # "numberOfRemovals":I
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 904
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v7, :cond_9

    .line 906
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 912
    .restart local v4    # "position":I
    :goto_3
    if-eq v4, v11, :cond_1

    .line 914
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_1

    .line 910
    .end local v4    # "position":I
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    .restart local v4    # "position":I
    goto :goto_3

    .line 926
    .end local v1    # "i":I
    .end local v3    # "numberOfRemovals":I
    .end local v4    # "position":I
    :cond_a
    iput-boolean v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    .line 928
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 931
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 932
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b

    .line 933
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    .line 934
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7, v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawEffect(F)V

    .line 935
    iput v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    .line 939
    :cond_b
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v7, :cond_c

    .line 941
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 947
    .restart local v4    # "position":I
    :goto_4
    if-eq v4, v11, :cond_1

    .line 949
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_1

    .line 945
    .end local v4    # "position":I
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    .restart local v4    # "position":I
    goto :goto_4

    .line 957
    .end local v2    # "numberOfMissingSubIndexes":I
    .end local v4    # "position":I
    :pswitch_2
    iput-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 958
    iput-boolean v10, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bNoSubIndexes:Z

    .line 959
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 960
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 963
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->close()V

    .line 965
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    if-eqz v7, :cond_d

    .line 966
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v7, v6}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    .line 968
    :cond_d
    const v7, -0x39e3c400    # -9999.0f

    iput v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    goto/16 :goto_1

    .line 805
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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gravity"    # I

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 234
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    .line 236
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 239
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 241
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

    .line 242
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->DEFAULT_MAX_DEPTH:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setMaxDepth(I)V

    .line 230
    return-void
.end method

.method private initIndexerLanguagesBounds()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v1, :cond_1

    .line 274
    :cond_0
    return v2

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 278
    return v2

    .line 281
    :cond_2
    const/4 v0, 0x0

    .line 283
    .local v0, "bSecondLanguageShifted":Z
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    .line 285
    return v2
.end method

.method private initLangPositionBounds()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollStartPositions:[I

    .line 252
    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollEndPositions:[I

    .line 253
    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    .line 254
    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbEndPositions:[I

    .line 249
    return-void
.end method

.method private notifyIndexChange(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1230
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    if-eqz v1, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onIndexChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setLangPosition(Lcom/samsung/android/widget/SemIndexScrollView;II)V
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/widget/SemIndexScrollView;
    .param p2, "position"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 989
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v2, :cond_1

    .line 991
    :cond_0
    return-void

    .line 994
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollStartPositions:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollEndPositions:[I

    if-nez v2, :cond_4

    .line 996
    :cond_2
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mFirstLanguageGap:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1001
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sub-int v2, p3, v2

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mFirstLanguageGap:I

    .line 1004
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->initIndexerLanguagesBounds()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1006
    return-void

    .line 1010
    :cond_4
    const/4 v0, 0x0

    .line 1013
    .local v0, "curLanguage":I
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v2, :cond_5

    .line 1015
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollStartPositions:[I

    aget v2, v2, v0

    if-lt p2, v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollEndPositions:[I

    aget v2, v2, v0

    if-gt p2, v2, :cond_8

    .line 1022
    :cond_5
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v2, :cond_6

    .line 1024
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    .line 1027
    :cond_6
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    if-eq v0, v2, :cond_7

    .line 1029
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 1030
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 1031
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 1032
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 1037
    :try_start_0
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    const/4 v3, 0x0

    invoke-direct {p0, p0, v2, v0, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :goto_1
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    .line 1043
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 987
    :cond_7
    return-void

    .line 1013
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_1
.end method

.method private setSimpleIndexWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    .line 498
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    .line 496
    return-void
.end method

.method private startAnimation(Ljava/lang/Object;IIF)V
    .locals 9
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "currentLang"    # I
    .param p3, "newLang"    # I
    .param p4, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v4, v5

    .line 1117
    .local v4, "mTop":F
    :try_start_0
    const-string/jumbo v5, "y"

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 1118
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

    .line 1117
    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1119
    .local v3, "mAnimUp":Landroid/animation/ObjectAnimator;
    const-string/jumbo v5, "y"

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 1120
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

    .line 1119
    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1121
    .local v2, "mAnimDown":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1122
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    if-ge p2, p3, :cond_0

    .line 1123
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1128
    :goto_0
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1129
    new-instance v5, Lcom/samsung/android/widget/SemIndexScrollView$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/widget/SemIndexScrollView$1;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1153
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1112
    return-void

    .line 1126
    :cond_0
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1157
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v2    # "mAnimDown":Landroid/animation/ObjectAnimator;
    .end local v3    # "mAnimUp":Landroid/animation/ObjectAnimator;
    :catch_0
    move-exception v1

    .line 1158
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    throw v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    .line 395
    return-void

    .line 399
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSipResizeAnimationState:Z

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setDimensionns(II)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    .line 389
    :cond_3
    return-void
.end method

.method protected dispatchSipResizeAnimationState(Z)Z
    .locals 1
    .param p1, "isStart"    # Z

    .prologue
    .line 3267
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSipResizeAnimationState:Z

    .line 3268
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 527
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 529
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 531
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_2

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 536
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 511
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 513
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 518
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 508
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 3245
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3242
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 3257
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1220
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 766
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 767
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEffectBackgroundColor(I)V
    .locals 3
    .param p1, "effectBackgroundColor"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-wrap0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 584
    return-void
.end method

.method public setEffectTextColor(I)V
    .locals 1
    .param p1, "effectTextColor"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    .line 575
    return-void
.end method

.method public setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bgDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 547
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 545
    return-void
.end method

.method public setIndexBarGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 593
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    .line 594
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setPosition(I)V

    .line 592
    return-void
.end method

.method public setIndexBarPressedTextColor(I)V
    .locals 2
    .param p1, "pressedTextColor"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 566
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 567
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I

    .line 564
    return-void
.end method

.method public setIndexBarTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-set1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I

    .line 555
    return-void
.end method

.method public setIndexScrollMargin(II)V
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setIndexScrollBgMargin(II)V

    .line 752
    :cond_0
    return-void
.end method

.method public setIndexer(Lcom/samsung/android/widget/SemAbstractIndexer;)V
    .locals 5
    .param p1, "indexer"    # Lcom/samsung/android/widget/SemAbstractIndexer;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SemIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 427
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 430
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 431
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    .line 432
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 435
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get3(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 439
    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 442
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 448
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

    .line 449
    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollStartPositions:[I

    .line 450
    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangScrollEndPositions:[I

    .line 451
    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbStartPositions:[I

    .line 452
    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mLangDbEndPositions:[I

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->initIndexerLanguagesBounds()Z

    .line 419
    return-void

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;)V
    .locals 0
    .param p1, "iOnIndexBarEventListener"    # Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    .line 1244
    return-void
.end method

.method public setSimpleIndexScroll([Ljava/lang/String;I)V
    .locals 4
    .param p1, "indexBarChar"    # [Ljava/lang/String;
    .param p2, "width"    # I

    .prologue
    const/4 v3, -0x1

    .line 467
    if-nez p1, :cond_0

    .line 468
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "SemIndexView.setSimpleIndexScroll(indexBarChar) "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 475
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 476
    .local v0, "rsrc":Landroid/content/res/Resources;
    const v1, 0x105036c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexWidth(I)V

    .line 478
    if-eqz p2, :cond_1

    .line 479
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexWidth(I)V

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 483
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-get3(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v1, p1, v3, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 466
    return-void
.end method
