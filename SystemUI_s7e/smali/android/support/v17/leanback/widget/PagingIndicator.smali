.class public Landroid/support/v17/leanback/widget/PagingIndicator;
.super Landroid/view/View;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PagingIndicator$1;,
        Landroid/support/v17/leanback/widget/PagingIndicator$2;,
        Landroid/support/v17/leanback/widget/PagingIndicator$3;,
        Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
    }
.end annotation


# static fields
.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final DOT_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_DIAMETER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimator:Landroid/animation/AnimatorSet;

.field private mArrow:Landroid/graphics/Bitmap;

.field private final mArrowDiameter:I

.field private final mArrowGap:I

.field private final mArrowRadius:I

.field private final mArrowRect:Landroid/graphics/Rect;

.field private final mArrowToBgRatio:F

.field private final mBgPaint:Landroid/graphics/Paint;

.field private mCurrentPage:I

.field private mDotCenterY:I

.field private final mDotDiameter:I

.field private final mDotFgSelectColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final mDotGap:I

.field private final mDotRadius:I

.field private mDotSelectedNextX:[I

.field private mDotSelectedPrevX:[I

.field private mDotSelectedX:[I

.field private mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

.field private final mFgPaint:Landroid/graphics/Paint;

.field private final mHideAnimator:Landroid/animation/AnimatorSet;

.field private mIsLtr:Z

.field private mPageCount:I

.field private mPreviousPage:I

.field private final mShadowRadius:I

.field private final mShowAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/widget/PagingIndicator;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v17/leanback/widget/PagingIndicator;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    return v0
.end method

.method static synthetic -get10(Landroid/support/v17/leanback/widget/PagingIndicator;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get11(Landroid/support/v17/leanback/widget/PagingIndicator;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    return v0
.end method

.method static synthetic -get2(Landroid/support/v17/leanback/widget/PagingIndicator;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    return v0
.end method

.method static synthetic -get3(Landroid/support/v17/leanback/widget/PagingIndicator;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Landroid/support/v17/leanback/widget/PagingIndicator;)F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    return v0
.end method

.method static synthetic -get5(Landroid/support/v17/leanback/widget/PagingIndicator;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get6(Landroid/support/v17/leanback/widget/PagingIndicator;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    return v0
.end method

.method static synthetic -get7(Landroid/support/v17/leanback/widget/PagingIndicator;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotDiameter:I

    return v0
.end method

.method static synthetic -get8(Landroid/support/v17/leanback/widget/PagingIndicator;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    return v0
.end method

.method static synthetic -get9(Landroid/support/v17/leanback/widget/PagingIndicator;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "alpha"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "diameter"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$3;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translation_x"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotRadius:I

    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_dot_radius:I

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotDiameter:I

    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowRadius:I

    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_radius:I

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotToDotGap:I

    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_dot_gap:I

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotToArrowGap:I

    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_gap:I

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotBgColor:I

    sget v6, Landroid/support/v17/leanback/R$color;->lb_page_indicator_dot:I

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v0

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowBgColor:I

    sget v6, Landroid/support/v17/leanback/R$color;->lb_page_indicator_arrow_background:I

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    sget v5, Landroid/support/v17/leanback/R$color;->lb_page_indicator_arrow_shadow:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_shadow_radius:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_shadow_offset:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {p0, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {p0, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private adjustDotPosition()V
    .locals 6

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->deselect()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v4, v1, v0

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPreviousPage:I

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_1
    iput v1, v4, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    aget v4, v4, v0

    int-to-float v4, v4

    iput v4, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->select()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v1, v1, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPreviousPage:I

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ge v4, v5, :cond_2

    :goto_2
    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget v2, v2, v4

    int-to-float v2, v2

    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    add-int/lit8 v0, v1, 0x1

    :goto_3
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->deselect()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iput v3, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method private calculateDotPositions()V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v9

    sub-int v4, v8, v9

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v3

    add-int v8, v1, v4

    div-int/lit8 v2, v8, 0x2

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v8, :cond_0

    div-int/lit8 v8, v3, 0x2

    sub-int v5, v2, v8

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v9, v10

    aput v9, v8, v11

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v9, v5

    aput v9, v8, v11

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v8, v11

    const/4 v0, 0x1

    :goto_0
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v8, :cond_1

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v9, v10

    aput v9, v8, v0

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v9, v10

    aput v9, v8, v0

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v9, v10

    aput v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v8, v3, 0x2

    add-int v6, v2, v8

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v9, v6, v9

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v9, v10

    aput v9, v8, v11

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v9, v6, v9

    aput v9, v8, v11

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v9, v6, v9

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    aput v9, v8, v11

    const/4 v0, 0x1

    :goto_1
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v8, :cond_1

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v9, v10

    aput v9, v8, v0

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v9, v10

    aput v9, v8, v0

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v9, v10

    aput v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->adjustDotPosition()V

    return-void
.end method

.method private createDotAlphaAnimator(FF)Landroid/animation/Animator;
    .locals 4

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private createDotDiameterAnimator(FF)Landroid/animation/Animator;
    .locals 4

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1a1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private createDotTranslationXAnimator()Landroid/animation/Animator;
    .locals 5

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    neg-int v3, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1a1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getColorFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method private getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    add-int/lit8 v1, v1, -0x3

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private loadArrow()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$drawable;->lb_ic_nav_arrow:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method getDotSelectedLeftX()[I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    return-object v0
.end method

.method getDotSelectedRightX()[I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    return-object v0
.end method

.method getDotSelectedX()[I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    return-object v0
.end method

.method getPageCount()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDesiredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v2, v0

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDesiredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    return-void

    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    goto :goto_0

    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_1

    :sswitch_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eq v3, v1, :cond_2

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->onRtlPropertiesChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->calculateDotPositions()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->calculateDotPositions()V

    return-void
.end method
