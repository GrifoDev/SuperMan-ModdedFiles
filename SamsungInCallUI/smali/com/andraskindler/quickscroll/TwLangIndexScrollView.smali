.class public Lcom/andraskindler/quickscroll/TwLangIndexScrollView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;,
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;,
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;,
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;,
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;,
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;,
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;
    }
.end annotation


# static fields
.field private static final AMERICANO:Z = false

.field public static final DARK_THEME:I = 0x0

.field public static final DEFAULT_MAX_DEPTH:I = 0x1

.field private static final FAVORITE_CHAR:C = '\u2606'

.field private static final LATTE:Z = false

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field private static final MOCHA:Z = false

.field private static final NO_PREV_LANG:I = 0x0

.field private static final OUT_OF_BOUNDARY:F = -9999.0f

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwLangIndexScrollView"

.field private static final TW_SCAFE_2016B:Z = true

.field private static mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

.field private static previousPos:I


# instance fields
.field private FEW_ELEMENT_LOGIC:I

.field private MANY_ELEMENTS_REPRESENTED_BY_DOT:I

.field private MANY_ELEMENT_LOGIC:I

.field private final debug:Z

.field private mAnimEnd:Z

.field private mCalculatedIndexStr:Ljava/lang/String;

.field private mColorPrimary:I

.field private mColorPrimaryDark:I

.field private mContext:Landroid/content/Context;

.field private mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

.field private mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private mCstmBigTextColor:I

.field private mCstmEffectColor:I

.field private mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mCstmHandleTextColorPressed:I

.field private mCstmSeparatorColor:I

.field private mCstmSmallTextColor:I

.field private mCstmTextColorDimmed:I

.field private mCurrentIndex:Ljava/lang/String;

.field private mEnableCustomTheme:Z

.field private mFirstLanguageGap:I

.field private mHandlePosition:I

.field private mHasOverlayChild:Z

.field private mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

.field mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

.field private mIndexScrollAdditionalSpace:I

.field private mIndexScrollEffect:Lcom/samsung/android/c/a/a;

.field private mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

.field private mIndexScrollViewTheme:I

.field private mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

.field private final mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

.field private mIsFavoriteContactMode:Z

.field private mIsFluid:Z

.field private mLangDbEndPositions:[I

.field private mLangDbStartPositions:[I

.field private mLangScrollEndPositions:[I

.field private mLangScrollStartPositions:[I

.field private mNumberOfLanguages:I

.field private mOnIndexScrollEffectListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

.field private mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

.field private mPrevSetLang:I

.field private mRegisteredDataSetObserver:Z

.field private mScrollLogic:I

.field private mSipResizeAnimationState:Z

.field private mTouchY:F

.field private mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

.field private m_bNoSubIndexes:Z

.field private m_bSimpleIndexScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->previousPos:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->debug:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mAnimEnd:Z

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->debug:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mAnimEnd:Z

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->debug:Z

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mAnimEnd:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/R$styleable;->TwIndexView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    :try_start_0
    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$styleable;->TwIndexView_twIndexViewHandlePosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v1, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catch_0
    move-exception v1

    const-string v1, "TwLangIndexScrollView"

    const-string v2, "Occured NumberFormatException. Set handle position as default.(RIGHT_HANDLE)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->debug:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mAnimEnd:Z

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->debug:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mAnimEnd:Z

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    invoke-static {p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    invoke-static {p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    invoke-static {p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I

    invoke-static {p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I

    invoke-static {p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I

    :cond_0
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mAnimEnd:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mAnimEnd:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/samsung/android/c/a/a;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/c/a/a;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->initLangPositionBounds()V

    return-void
.end method

.method static synthetic access$1700()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    sput-object p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I

    return v0
.end method

.method static synthetic access$1802(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I

    return p1
.end method

.method static synthetic access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I

    return v0
.end method

.method static synthetic access$1902(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I

    return p1
.end method

.method static synthetic access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I

    return v0
.end method

.method static synthetic access$2002(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I

    return p1
.end method

.method static synthetic access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I

    return v0
.end method

.method static synthetic access$2400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I

    return v0
.end method

.method static synthetic access$2500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I

    return v0
.end method

.method static synthetic access$2600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    return v0
.end method

.method static synthetic access$2700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    return v0
.end method

.method static synthetic access$2800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I

    return v0
.end method

.method static synthetic access$2802(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I

    return p1
.end method

.method static synthetic access$2900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    return v0
.end method

.method static synthetic access$3000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    return v0
.end method

.method static synthetic access$3100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I

    return v0
.end method

.method static synthetic access$3400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    return v0
.end method

.method static synthetic access$3500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    return v0
.end method

.method static synthetic access$3600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexScrollEffectListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F

    return v0
.end method

.method static synthetic access$3900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method static synthetic access$4000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private addMissingSubIndexes(III)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getItemPlusSpaceWidth()I

    move-result v4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    mul-int v1, v4, v0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getWidth()I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_3

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v7, v0

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v7, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    if-nez v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v7, v0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    add-int/2addr v1, v4

    add-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    invoke-direct {p0, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->notifyIndexChange(I)V

    :cond_0
    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_2
    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_1
    sub-int v0, v6, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    move v2, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method private calcEndPosition(II)I
    .locals 3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ne p1, p2, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v2, v1, :cond_2

    if-lt v2, p1, :cond_2

    move v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getDbPositionLanguage(I)I
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbEndPositions:[I

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getCurrentLang()I

    move-result v1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v3, v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getCurrentLang()I

    move-result v2

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v4, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v4

    if-eq v2, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    sub-int v0, v3, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 10

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-nez v0, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getCurrentLang()I

    move-result v6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v1, v0, v5}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    move v0, v4

    move v4, v2

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_9

    :cond_3
    move v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_d

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v7

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    move v1, v2

    move v3, v4

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    iget v3, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    invoke-direct {p0, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getDbPositionLanguage(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    if-eq v7, v6, :cond_1

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v1, v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v0

    move v4, v5

    move-object v9, v0

    move v0, v3

    move-object v3, v9

    goto :goto_1

    :cond_9
    move v1, v0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0, v6}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    :cond_b
    move v3, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move-object v3, v0

    move v0, v4

    move v4, v2

    goto/16 :goto_1
.end method

.method private getNumberOfMissingSubIndexes(I)I
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getNumberOfSmallerOrEqualIndexes(I)I

    move-result v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    iget-boolean v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mExists:Z

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {v2, v4, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eq v0, v8, :cond_1

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->notifyIndexChange(I)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->invalidate()V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v0

    goto :goto_1

    :pswitch_1
    float-to-int v2, v4

    invoke-direct {p0, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getNumberOfMissingSubIndexes(I)I

    move-result v2

    iget-boolean v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    if-ne v5, v1, :cond_3

    if-ge v2, v1, :cond_4

    :cond_3
    iget-boolean v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mAnimEnd:Z

    if-nez v5, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    float-to-int v6, v4

    float-to-int v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v5, :cond_8

    if-lez v2, :cond_6

    float-to-int v0, v4

    float-to-int v5, v3

    invoke-direct {p0, v0, v5, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->addMissingSubIndexes(III)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    float-to-int v2, v4

    float-to-int v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v2, v0

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v2, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    float-to-int v2, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_1

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto :goto_2

    :cond_7
    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_b

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v2, v5

    :goto_3
    if-ge v0, v2, :cond_9

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->removeSubIndex()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    float-to-int v2, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v0

    :goto_4
    if-eq v0, v8, :cond_1

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v0

    goto :goto_4

    :cond_b
    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    float-to-int v2, v4

    float-to-int v4, v3

    invoke-virtual {v0, v2, v4}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawEffect(F)V

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F

    :cond_c
    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v0

    :goto_5
    if-eq v0, v8, :cond_1

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v0

    goto :goto_5

    :pswitch_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    :cond_e
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;II)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/c/a/a;

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    if-nez v0, :cond_1

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_1
    iput-boolean v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getWidth()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, v7}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setMaxDepth(I)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getWidth()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, v7}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setMaxDepth(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-direct {v0, p0, p1, p3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    :goto_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private initIndexerLanguagesBounds()Z
    .locals 10

    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbEndPositions:[I

    move v0, v1

    move v2, v3

    move v4, v3

    :goto_1
    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v6, v2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v6}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v6}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v7

    if-lez v2, :cond_b

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-ltz v6, :cond_b

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-gt v6, v9, :cond_b

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v6, v7

    iget-object v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v8}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-gt v6, v8, :cond_b

    if-ne v2, v5, :cond_2

    move v4, v5

    :cond_2
    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v6, v7

    :goto_2
    iget-object v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aput v7, v8, v2

    if-le v7, v0, :cond_3

    move v0, v7

    :cond_3
    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aput v6, v7, v2

    if-lez v2, :cond_4

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    if-eq v6, v7, :cond_5

    :cond_4
    if-ne v2, v5, :cond_6

    if-eqz v4, :cond_6

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    if-ne v6, v7, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    add-int/lit8 v7, v2, -0x1

    aput v1, v6, v7

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v7, v2, -0x1

    aput v1, v6, v7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v2, v4}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    :goto_3
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v3, v2, :cond_a

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aget v2, v2, v3

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aput v1, v2, v3

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aput v1, v2, v3

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v2

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbEndPositions:[I

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v6, v6, v3

    invoke-direct {p0, v6, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->calcEndPosition(II)I

    move-result v6

    aput v6, v4, v3

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aget v6, v6, v3

    aput v6, v4, v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-ltz v4, :cond_8

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-gt v4, v9, :cond_8

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_8

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aget v4, v2, v3

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v4, v6

    aput v4, v2, v3

    goto :goto_4

    :cond_a
    move v3, v5

    goto/16 :goto_0

    :cond_b
    move v6, v7

    goto/16 :goto_2
.end method

.method private initLangPositionBounds()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbEndPositions:[I

    return-void
.end method

.method private isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 9

    const/16 v8, 0xd

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    move v4, v0

    :cond_0
    :goto_0
    if-eq v2, v8, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_2

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-eq v8, v6, :cond_0

    const/16 v6, 0xc

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v7

    if-eq v6, v7, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    goto :goto_0

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/16 v3, 0x11

    if-ne v2, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method private notifyIndexChange(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

    invoke-interface {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;->onIndexSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setLangPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;II)V
    .locals 5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    if-nez v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p3, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mFirstLanguageGap:I

    :cond_3
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->initIndexerLanguagesBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aget v1, v1, v0

    if-lt p2, v1, :cond_7

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aget v1, v1, v0

    if-gt p2, v1, :cond_7

    :cond_5
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    :cond_6
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v1, v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v3

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    :try_start_0
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    const/4 v2, 0x0

    invoke-direct {p0, p0, v1, v0, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->invalidate()V

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private startAnimation(Ljava/lang/Object;IIF)V
    .locals 7

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getTop()I

    move-result v0

    int-to-float v0, v0

    :try_start_0
    const-string v1, "y"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v4}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v5

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-ge p2, p3, :cond_0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;

    invoke-direct {v0, p0, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setDimensionns(II)V

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/c/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/c/a/a;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/c/a/a;->a(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->invalidate()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setIndexRectText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->invalidate()V

    goto :goto_1
.end method

.method protected dispatchSipResizeAnimationState(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    const/4 v0, 0x0

    return v0
.end method

.method public enableCustomTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    return-void
.end method

.method public getFirstHandleWidth()I
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getItemWidth()I

    move-result v0

    return v0
.end method

.method public getHandlePosition()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method public isFavoriteContactMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHasOverlayChild:Z

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getParent()Landroid/view/ViewParent;

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

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdditionalTouchAreaEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_additional_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I

    goto :goto_0
.end method

.method public setCustomThemeSet(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)V
    .locals 1

    invoke-static {p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$1000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$1100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I

    invoke-static {p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    invoke-static {p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;->access$1200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z

    return-void
.end method

.method public setHandlePosition(I)V
    .locals 1

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mHandlePosition:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setPosition(I)V

    return-void
.end method

.method public setIndexScrollMargin(II)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setIndexScrollBgMargin(II)V

    :cond_0
    return-void
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setTheme(I)V

    :cond_0
    return-void
.end method

.method public setIndexer(Lcom/andraskindler/quickscroll/TwAbstractIndexer;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    iget-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setColorAll(Z)V

    :cond_2
    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexerObserver:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->access$600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->access$600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->access$700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbStartPositions:[I

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mLangDbEndPositions:[I

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->initIndexerLanguagesBounds()Z

    return-void
.end method

.method public setOnIndexScrollEffectListener(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexScrollEffectListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    return-void
.end method

.method public setOnIndexSelectedListener(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;

    return-void
.end method

.method public setSimpleIndexHandleChar([Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexHandleChar(handleChar) "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexer:Lcom/andraskindler/quickscroll/TwAbstractIndexer;

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;

    iget-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setColorAll(Z)V

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->access$600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->access$600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->access$700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1, v2, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    return-void
.end method

.method public setSimpleIndexHandleCharForContact([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    return-void
.end method

.method public setSimpleIndexHandleCharForContact_HK([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    return-void
.end method

.method public setSimpleIndexWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    goto :goto_0
.end method

.method public setSubscrollLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setMaxDepth(I)V

    :cond_0
    return-void
.end method
