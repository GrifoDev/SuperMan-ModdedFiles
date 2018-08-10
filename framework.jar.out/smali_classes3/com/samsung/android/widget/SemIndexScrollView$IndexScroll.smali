.class Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# static fields
.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "IndexScroll"


# instance fields
.field private final debug:Z

.field private mAdditionalSpace:I

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mBgTintColor:I

.field private mBigText:Ljava/lang/String;

.field private mContentMinHeight:F

.field private mContentPadding:I

.field private mContext:Landroid/content/Context;

.field private mDotHeight:I

.field mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

.field private mHeight:I

.field private mIndexScrollPreviewRadius:F

.field private mIsAlphabetInit:Z

.field private mIsSetDimensions:Z

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mPreviewLimitY:F

.field private mScreenHeight:I

.field private mScrollBottomMargin:I

.field private mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollThumbBgRect:Landroid/graphics/Rect;

.field private mScrollThumbBgRectHeight:I

.field private mScrollThumbBgRectPadding:I

.field private mScrollTop:I

.field private mScrollTopMargin:I

.field mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

.field private mSelectedIndex:I

.field private mSeparatorHeight:F

.field private mSmallText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mWidth:I

.field private mWidthShift:I

.field final synthetic this$0:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IF)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->debug:Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iput p4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput-object p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;III)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->debug:Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iput p4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iput p5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput-object p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method private adjustSeparatorHeight()V
    .locals 8

    const v7, 0x3ecccccd    # 0.4f

    const v6, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get3(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0
.end method

.method private allocateBgRectangle()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v2, v4, v5

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v1, v2, v4

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    :goto_1
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemIndexScrollView;->-get8(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemIndexScrollView;->-get8(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_6

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    :goto_3
    return-void

    :cond_2
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v2, v4, v5

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int v0, v3, v4

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v3, v0, v4

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3
.end method

.method private calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 27

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v23, v0

    sub-int v8, v23, p2

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    add-int v9, v23, p3

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move-object/from16 v24, v0

    sub-int v25, v9, p3

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v26

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_16

    sub-int v19, v8, p4

    div-int/lit8 v23, v19, 0x2

    add-int/lit8 v11, v23, -0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v0, v11, :cond_8

    xor-int/lit8 v23, v18, 0x1

    if-eqz v23, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v5, v0, [Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    div-int v23, v19, v23

    add-int/lit8 v12, v23, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v11, :cond_0

    const/4 v12, 0x2

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v21, v0

    const/16 v16, 0x0

    :cond_1
    if-eqz v21, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v21, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v23, v0

    sub-int v24, v9, p3

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, p3

    move/from16 v2, v25

    move/from16 v3, v24

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    if-ge v13, v0, :cond_1

    mul-int v23, v12, v13

    mul-int v24, v16, v13

    sub-int v22, v23, v24

    const/16 v23, 0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    add-int/lit8 v23, p2, -0x1

    add-int v22, v22, v23

    :cond_3
    if-lez v22, :cond_5

    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    const-string/jumbo v23, "."

    aput-object v23, v5, v22

    add-int/lit8 v21, v21, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    move/from16 v0, v22

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    if-lez v21, :cond_4

    div-int/lit8 v23, v12, 0x2

    sub-int v23, v22, v23

    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    div-int/lit8 v23, v12, 0x2

    sub-int v23, v22, v23

    const-string/jumbo v24, "."

    aput-object v24, v5, v23

    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    :cond_6
    const/16 v16, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    goto/16 :goto_0

    :cond_8
    const/16 v18, 0x1

    const/16 v17, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    sub-int v23, v23, p2

    sub-int v23, v23, p4

    packed-switch v23, :pswitch_data_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, p2

    sub-int v23, v23, p4

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    :cond_9
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    if-lez v23, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    if-gez v23, :cond_f

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_4

    :pswitch_2
    if-eqz p2, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    if-nez v23, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/16 v17, 0x1

    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    :cond_b
    if-eqz p2, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_5

    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_5

    :pswitch_3
    if-lez p4, :cond_d

    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_4

    :cond_d
    if-lez p2, :cond_9

    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v23, v0

    if-ltz v23, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v5, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    if-lez v23, :cond_10

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    div-int v6, v20, v23

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    rem-int v10, v20, v23

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, p2

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v22, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v23, v0

    sub-int v15, v23, p4

    move/from16 v14, p2

    :goto_6
    if-ge v14, v15, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, p4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v23, v0

    add-int v24, v22, p3

    aget-object v23, v23, v24

    aput-object v23, v5, v14

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_11

    const/16 v17, 0x1

    :cond_11
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_12
    const-string/jumbo v23, "."

    aput-object v23, v5, v14

    add-int/lit8 v7, v7, 0x1

    add-int v22, v22, v6

    if-lez v10, :cond_13

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v22, v22, 0x1

    :cond_13
    const/16 v17, 0x0

    goto :goto_7

    :cond_14
    if-lez p4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v23, v23, v24

    aput-object v23, v5, v15

    :cond_15
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    goto/16 :goto_3

    :cond_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v8, v9

    int-to-float v3, v8

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v9, v9, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int v1, v8, v9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v0, v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v8, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v4, v8, v0

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v12, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    mul-float v9, v7, v11

    sub-float v5, v8, v9

    const-string/jumbo v8, "."

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v11

    sub-float/2addr v8, v9

    add-float v6, v3, v8

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v8, v8

    add-float/2addr v3, v8

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v8, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v9, v9, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v9, v0, v9

    aget-object v4, v8, v9

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto :goto_1

    :cond_1
    mul-float v8, v2, v11

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v11

    sub-float/2addr v8, v9

    add-float v6, v3, v8

    add-float/2addr v3, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get8(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private getColorWithAlpha(IF)I
    .locals 6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method private getIndex(I)I
    .locals 6

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    int-to-float v3, p1

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float v2, v3, v0

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v1, v3

    :goto_0
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v4, v4

    div-float v2, v3, v4

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v1, v3

    int-to-float v3, v1

    add-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v3, :cond_0

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_1
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_8

    :cond_5
    const-string/jumbo v0, ""

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_7

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private init()V
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get6(Lcom/samsung/android/widget/SemIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-set0(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get6(Lcom/samsung/android/widget/SemIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    iput v10, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    iput v10, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    const v0, 0x1050246

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    const v0, 0x1050243

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextSize:I

    const v0, 0x1050245

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    const v0, 0x1050241

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    const v0, 0x105023f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    const v0, 0x105023e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    const v0, 0x105023d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    const v0, 0x1050239

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    const v0, 0x105023c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010433

    invoke-virtual {v0, v1, v8, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    const v0, 0x1050244

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    const v0, 0x1050240

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get1(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v7, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    const v0, 0x108084b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iput v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1110083

    invoke-virtual {v0, v1, v8, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v8, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    const v0, 0x1060178

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    const v0, 0x108084a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    :goto_0
    const v0, 0x1060176

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgTintColor:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgTintColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    return-void

    :cond_1
    const v0, 0x1060177

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    const v0, 0x1080849

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-gt p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private manageIndexScrollHeight()V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get3(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-ne v1, v3, :cond_2

    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v1, v3, :cond_3

    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get2(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemAbstractIndexer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->isUseDigitIndex()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get3(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    :goto_0
    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v4}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto :goto_0
.end method

.method private setBgRectParams()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->allocateBgRectangle()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawEffect(F)V
    .locals 10

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float v2, v3, v4

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sub-float v0, v3, v4

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v4, v4

    mul-double/2addr v4, v8

    double-to-float v4, v4

    add-float v2, v3, v4

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v4, v4

    mul-double/2addr v4, v8

    double-to-float v4, v4

    sub-float v0, v3, v4

    :cond_0
    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_3

    cmpg-float v3, p1, v0

    if-gez v3, :cond_3

    move v1, p1

    :cond_1
    :goto_0
    const v3, -0x39e3c400    # -9999.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemIndexScrollView;->-get1(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemIndexScrollView;->-get4(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemIndexScrollView;->-get4(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onPressed(F)V

    :cond_2
    return-void

    :cond_3
    cmpg-float v3, p1, v2

    if-gtz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    cmpl-float v3, p1, v0

    if-ltz v3, :cond_1

    move v1, v0

    goto :goto_0
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get1(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get1(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->close()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get4(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get4(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    :cond_2
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3

    :cond_2
    const-string/jumbo v0, ""

    return-object v0

    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_8

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-gez v0, :cond_6

    :cond_5
    const-string/jumbo v0, ""

    return-object v0

    :cond_6
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_a

    :cond_9
    return-object v3

    :cond_a
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v2, :cond_b

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_9

    :cond_b
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-gez v0, :cond_d

    :cond_c
    const-string/jumbo v0, ""

    return-object v0

    :cond_d
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_e
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    return v0
.end method

.method public resetSelectedIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    :cond_2
    return-void
.end method

.method public setEffectText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    return-void
.end method

.method public setIndexScrollBgMargin(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    return-void
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->allocateBgRectangle()V

    return-void
.end method
