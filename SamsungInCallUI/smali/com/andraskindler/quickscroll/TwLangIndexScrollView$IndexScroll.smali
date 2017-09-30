.class Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andraskindler/quickscroll/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field public static final NO_SELECTED_DOT_INDEX:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexScroll"


# instance fields
.field private FLOAT_DIV_MULT_ERROR:F

.field private final debug:Z

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetArrayWithDots:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mAlphabetWithDotsSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mBgTintColor:I

.field private mBigText:Ljava/lang/String;

.field private mContentPadding:I

.field private mContext:Landroid/content/Context;

.field private mDepth:I

.field private mDotHeight:I

.field private mDotRepresentations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectTextColor:I

.field mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

.field private mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

.field private mHandleTextColorPressed:I

.field private mHandleTextColorPressed2ndAct:I

.field private mHeight:I

.field private mIndexBgLineWidth:F

.field private mIndexScrollPreviewRadius:F

.field private mIndexScrollViewTheme:I

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mMaxDepth:I

.field private mMinSeparatorHeight:F

.field private mOrigSelectedDotIndex:I

.field private mOrigSelectedIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mPreviewLimitY:F

.field private mSECRobotoMediumFont:Landroid/graphics/Typeface;

.field private mScreenHeight:I

.field private mScrollBottomMargin:I

.field private mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollThumbBgRect:Landroid/graphics/Rect;

.field private mScrollThumbBgRectHeight:I

.field private mScrollThumbBgRectPadding:I

.field private mScrollTop:I

.field private mScrollTopMargin:I

.field mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

.field private mSelectedIndex:I

.field private mSelectedIndexPositionInOrigAlphabet:[I

.field private mSeparatorColor:I

.field private mSeparatorHeight:F

.field private mSeparatorLeftPos:I

.field private mSeparatorThickness:I

.field private mSeparatorWidth:I

.field private mSmallText:Ljava/lang/String;

.field private mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mWidth:I

.field private mWidthShift:I

.field private m_bAlphabetArrayWithDotsUsed:Z

.field private m_bIsAlphabetInit:Z

.field private m_bSubIndexScrollExists:Z

.field private mbSetDimensionns:Z

.field final synthetic this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->debug:Z

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput-object p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;IIII)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->debug:Z

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iput p6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput-object p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V
    .locals 2

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->debug:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput p7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iput p8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p9, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput p11, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iput p12, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iput p6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->init()V

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p5, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    return-void
.end method

.method static synthetic access$600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    return v0
.end method

.method private adjustSeparatorHeight()V
    .locals 11

    const v10, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f000000    # 0.5f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    :goto_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iput v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v2, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0
.end method

.method private adjustSeparatorHeightIfRequired()V
    .locals 2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    :cond_0
    return-void
.end method

.method private allocateBgRectangle()V
    .locals 8

    const/4 v7, 0x1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v7, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v1, v0, v1

    :goto_0
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v4, v5

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v2, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)F

    move-result v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)F

    move-result v0

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v0, v4

    :cond_2
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    :goto_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v7, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_6

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v1, v0, v1

    goto :goto_1

    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method private calcDotPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 13

    iget v0, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int v8, v0, p2

    const/4 v2, 0x0

    const/4 v1, 0x0

    move/from16 v0, p3

    :goto_0
    iget v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int v3, v3, p3

    if-ge v0, v3, :cond_19

    iget-object v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    sub-int v4, v0, p3

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v9, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move v1, v5

    :goto_1
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    :goto_2
    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_c

    sub-int v7, v8, p4

    div-int/lit8 v2, v7, 0x2

    rem-int/lit8 v3, v7, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ge v3, v2, :cond_9

    if-nez v0, :cond_9

    iget v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v9, v3, [Ljava/lang/String;

    iget v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v5, v1, 0x1

    iget v1, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/lit8 v1, v1, 0x1

    div-int v1, v7, v1

    add-int/lit8 v1, v1, 0x1

    iget v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ne v3, v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v4, 0x0

    :goto_3
    if-eqz v2, :cond_0

    iget v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-eq v2, v3, :cond_2

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    :cond_2
    move/from16 v3, p3

    :goto_4
    iget v6, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int v6, v6, p3

    if-ge v3, v6, :cond_3

    sub-int v6, v3, p3

    iget-object v10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v9, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x1

    move v12, v3

    move v3, v4

    move v4, v2

    move v2, v12

    :goto_5
    iget v6, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/lit8 v6, v6, 0x1

    if-ge v2, v6, :cond_8

    mul-int v6, v1, v2

    mul-int v10, v3, v2

    sub-int/2addr v6, v10

    const/4 v10, 0x1

    if-le p2, v10, :cond_4

    add-int/lit8 v10, p2, -0x1

    add-int/2addr v6, v10

    :cond_4
    if-lez v6, :cond_6

    if-ge v6, v7, :cond_6

    const-string v10, "."

    aput-object v10, v9, v6

    add-int/lit8 v4, v4, -0x1

    :cond_5
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    if-lt v6, v7, :cond_5

    if-lez v4, :cond_5

    div-int/lit8 v10, v1, 0x2

    sub-int v10, v6, v10

    if-ge v10, v7, :cond_7

    div-int/lit8 v10, v1, 0x2

    sub-int/2addr v6, v10

    const-string v10, "."

    aput-object v10, v9, v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    move v2, v4

    move v4, v3

    goto :goto_3

    :cond_9
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v2, p2

    sub-int v2, v2, p4

    packed-switch v2, :pswitch_data_0

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v3, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    sub-int v2, v2, p4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    :cond_a
    :goto_7
    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-lez v2, :cond_b

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ltz v2, :cond_b

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    if-gez v2, :cond_11

    :cond_b
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    :cond_c
    return-void

    :pswitch_0
    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_1
    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_7

    :pswitch_2
    if-eqz p2, :cond_d

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-nez v2, :cond_d

    iget v0, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v0, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v0, 0x1

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    if-eqz p2, :cond_e

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_8

    :cond_e
    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_8

    :pswitch_3
    if-lez p4, :cond_f

    add-int/lit8 p4, p4, -0x1

    goto :goto_7

    :cond_f
    if-lez p2, :cond_a

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_10
    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v9, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v5, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-lez v5, :cond_12

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    div-int v3, v1, v2

    iget v2, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    rem-int v2, v1, v2

    :cond_12
    const/4 v5, 0x0

    :goto_9
    if-ge v5, p2, :cond_13

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v6, v6, v5

    aput-object v6, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_13
    move v5, v4

    move v6, v0

    move v4, v2

    move v0, p2

    move v2, p2

    :goto_a
    iget v10, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v10, v10, p4

    if-ge v0, v10, :cond_17

    iget-object v10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v10, v10

    sub-int v10, v10, p4

    if-ge v2, v10, :cond_14

    if-nez v6, :cond_15

    iget-object v10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    add-int v11, v2, p3

    aget-object v10, v10, v11

    aput-object v10, v9, v0

    add-int/lit8 v2, v2, 0x1

    iget v10, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ge v5, v10, :cond_14

    const/4 v6, 0x1

    :cond_14
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    const-string v6, "."

    aput-object v6, v9, v0

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v3

    if-lez v4, :cond_16

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, 0x1

    :cond_16
    const/4 v6, 0x0

    goto :goto_b

    :cond_17
    if-lez p4, :cond_18

    iget v0, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v0, v0, p4

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    aput-object v2, v9, v0

    :cond_18
    iput-object v9, p1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move v0, v7

    goto/16 :goto_1

    :cond_19
    move v0, v1

    move v1, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateShift(III)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    sub-int v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    if-le v1, p2, :cond_1

    sub-int v0, v1, p2

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-int v0, v1, p2

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v3, v2, v0

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    :goto_1
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    const-string v4, "."

    if-ne v3, v4, :cond_1

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-double v6, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    float-to-double v8, v2

    sub-double/2addr v6, v8

    double-to-float v2, v6

    add-float/2addr v2, v1

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    :goto_2
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v3, v0, v3

    aget-object v3, v2, v3

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto :goto_1

    :cond_1
    float-to-double v6, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v4, v8

    float-to-double v8, v4

    sub-double/2addr v6, v8

    double-to-float v4, v6

    add-float/2addr v4, v1

    add-float/2addr v1, v2

    move v2, v4

    goto :goto_2

    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSelectedIndexRect(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSeparators(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move v6, v7

    :goto_0
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-gt v6, v0, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-eq v6, v0, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v6, v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v1, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private getColorWithAlpha(IF)I
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private getDotIndexByY(I)Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2802(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v3

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-int v1, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    :goto_1
    int-to-float v3, p1

    int-to-float v1, v1

    sub-float v1, v3, v1

    int-to-float v3, v2

    mul-float/2addr v1, v3

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-lt v0, v2, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_2
    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2802(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v1, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    goto :goto_1

    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private getIndex(I)I
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    int-to-float v2, p1

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float v1, v2, v1

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    :goto_1
    if-ltz v1, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v0, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v3, v4

    div-float v2, v3, v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_4
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-le v0, v1, :cond_8

    :cond_5
    const-string v0, ""

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_7

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 10

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sec-roboto-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1702(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSECRobotoMediumFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    const-string v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSECRobotoMediumFont:Landroid/graphics/Typeface;

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->primary_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1802(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_second_handle_gap:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_textsize:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_separator_min_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_separator_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_separator_thickness:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorThickness:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_bg_line_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_additional_width:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1902(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_fluid_indexview_side_margin:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_fluid_indexview_top_margin:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_fluid_indexview_content_padding:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_fluid_content_min_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_visual_effect_text_color:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_index_scroll_preview_radius:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_index_scroll_preview_ypos_limit:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->primary_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2002(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_index_scroll_thumb_padding:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_index_scroll_dot_separator_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    invoke-direct {p0, v1, v9}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2002(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v8, :cond_5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v8, :cond_6

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    invoke-direct {p0, v1, v9}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    goto :goto_2
.end method

.method private initAlphabetArrayWithDotsIfRequired()V
    .locals 15

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int v3, v0, v1

    int-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_1
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v0

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    add-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_6

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v1

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    add-int/lit8 v4, v4, 0x1

    if-le v2, v4, :cond_6

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    add-int/lit8 v2, v2, 0x2

    div-int/2addr v0, v2

    :cond_6
    add-int v2, v3, v0

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    move v9, v2

    :goto_2
    add-int/lit8 v2, v9, -0x1

    mul-int/2addr v2, v0

    add-int v4, v3, v0

    if-lt v2, v4, :cond_8

    add-int/lit8 v2, v9, -0x1

    move v9, v2

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    const/4 v5, 0x0

    add-int v2, v3, v0

    rem-int v10, v2, v9

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v10, v2, :cond_d

    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v4, v0

    move v8, v2

    :goto_3
    const/4 v2, 0x0

    if-nez v8, :cond_13

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v1

    div-int v4, v2, v0

    if-nez v4, :cond_9

    const/4 v4, 0x1

    :cond_9
    add-int/lit8 v3, v4, -0x1

    const/4 v2, 0x1

    if-ne v10, v2, :cond_e

    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    :goto_4
    invoke-direct {p0, v1, v3, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->calculateShift(III)I

    move-result v1

    move v2, v4

    move v4, v6

    move v14, v5

    move v5, v0

    move v0, v3

    move v3, v14

    :goto_5
    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    if-ge v4, v6, :cond_12

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v3, v6, :cond_12

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    aput v3, v6, v4

    if-eqz v8, :cond_a

    add-int/lit8 v6, v4, 0x1

    rem-int/2addr v6, v2

    if-gtz v6, :cond_c

    :cond_a
    if-nez v8, :cond_f

    if-lez v1, :cond_b

    if-le v4, v0, :cond_c

    :cond_b
    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v6, v1

    rem-int/2addr v6, v2

    if-gtz v6, :cond_c

    if-eqz v5, :cond_c

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    const/4 v6, 0x1

    if-ne v10, v6, :cond_f

    :cond_c
    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v7, v7, v3

    aput-object v7, v6, v4

    add-int/lit8 v3, v3, 0x1

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    invoke-direct {p0, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v0, 0x1

    div-int/2addr v4, v7

    move v8, v2

    goto :goto_3

    :cond_e
    mul-int v2, v4, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_f
    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    const-string v7, "."

    aput-object v7, v6, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_10

    add-int v6, v3, v9

    :goto_7
    sub-int v7, v6, v3

    new-array v11, v7, [Ljava/lang/String;

    move v7, v3

    :goto_8
    if-ge v7, v6, :cond_11

    sub-int v12, v7, v3

    iget-object v13, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v13, v13, v7

    aput-object v13, v11, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v6, v7

    goto :goto_7

    :cond_11
    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    move v3, v6

    goto :goto_6

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto/16 :goto_0

    :cond_13
    move v1, v3

    move v3, v5

    move v5, v0

    move v0, v2

    move v2, v4

    move v4, v6

    goto/16 :goto_5
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v2

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v3

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-lt p1, v2, :cond_5

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private isInSelectedIndexVerticalRange(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isSelectedIndexDot(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageIndexScrollHeight()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-ne v0, v4, :cond_2

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v0, v4, :cond_3

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v3, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v2, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v3, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v2, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-lez v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v3, v2, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private perfectDotsSpreadingExists(II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v2, v3

    if-lez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    div-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x1

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-le v3, v4, :cond_2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v3, p2

    if-ge v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private setBgRectParams()V
    .locals 2

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addSubIndex([Ljava/lang/String;)V
    .locals 13

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    array-length v0, p1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    sub-int/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v9, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v11, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    iget v11, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    add-int/lit8 v12, v5, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawEffect(F)V
    .locals 13

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const v2, -0x39e3c400    # -9999.0f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v10

    sub-float v0, v1, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v1

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-double v6, v1

    sub-double/2addr v4, v6

    double-to-float v1, v4

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v1, v3

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v1, v1

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    mul-float/2addr v4, v11

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-float v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v1, v1

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-float v3, v4

    sub-float/2addr v1, v3

    :cond_0
    cmpl-float v3, p1, v0

    if-lez v3, :cond_4

    cmpg-float v3, p1, v1

    if-gez v3, :cond_4

    :goto_0
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_1

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v12, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v0

    invoke-interface {v0, v12, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;->onEffectStateChanged(IF)V

    :cond_3
    return-void

    :cond_4
    cmpg-float v3, p1, v0

    if-gtz v3, :cond_5

    move p1, v0

    goto :goto_0

    :cond_5
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_6

    move p1, v1

    goto :goto_0

    :cond_6
    move p1, v2

    goto :goto_0
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/samsung/android/c/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/samsung/android/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/c/a/a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->close()V

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;->onEffectStateChanged(IF)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawSelectedIndexRect(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawSeparators(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getDepth()I
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v2

    add-int/2addr v0, v2

    if-le p1, v0, :cond_4

    :cond_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_9

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_9

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v4, :cond_8

    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    :cond_5
    const-string v0, ""

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-gt v0, v2, :cond_c

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_b

    :cond_a
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v4, :cond_c

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_c

    :cond_b
    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v4, :cond_10

    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_e

    :cond_d
    const-string v0, ""

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    const-string v0, ""

    :goto_1
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v2, p1, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    move-object v0, v1

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_15

    :try_start_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_13

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_14

    :cond_13
    const-string v0, ""

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :cond_15
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getItemHeight()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    return v0
.end method

.method public getItemPlusSpaceWidth()I
    .locals 2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    return v0
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDepth()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    return v0
.end method

.method public getNumberOfSmallerOrEqualIndexes(I)I
    .locals 2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    sub-int p1, v0, p1

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-nez v1, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hasSubIndex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    return v0
.end method

.method public removeAllSubIndexes()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public removeSubIndex()V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->removeSubIndex()V

    goto :goto_0
.end method

.method public resetSelectedIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    goto :goto_0
.end method

.method public setDefaultIndexScrollWidth()V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_separator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_separator_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorThickness:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    return-void
.end method

.method public setDimensionns(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    :cond_3
    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    goto :goto_0
.end method

.method public setEffectText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    return-void
.end method

.method public setIndexScrollBgMargin(II)V
    .locals 0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    return-void
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    if-nez v1, :cond_4

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_divider_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_dimmed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_pressed_2nd_act:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_bg_activation_right_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_activated_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_bg_activation_right_2nd_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_activated_2nd_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v4, :cond_1

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_bg_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_fluid_scrollbar_handle_right_bg_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_dimmed_fluid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_press_bg_mtrl_shape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_5
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_6
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_8
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_divider_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_dimmed_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_bg_activation_right_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_activated_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v4, :cond_1

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_bg_holo_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    :cond_7
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    goto/16 :goto_4

    :cond_8
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    goto/16 :goto_5

    :cond_9
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_b
    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_bg_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgTintColor:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_8
.end method

.method public setMaxDepth(I)V
    .locals 0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    :goto_1
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    goto :goto_1
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    goto :goto_0
.end method
