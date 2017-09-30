.class Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andraskindler/quickscroll/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexRectangleTextView"
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexRectangleTextView"


# instance fields
.field private final debug:Z

.field private mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndexRectHeight:I

.field private mIndexRectPos:Landroid/graphics/Rect;

.field private mIndexRectText:Ljava/lang/String;

.field private mIndexRectTextColor:I

.field private mIndexRectTextColorDimmed:I

.field private mIndexRectTextSize:I

.field private mIndexRectTextSize3LettersMore:I

.field private mIndexRectWidth:I

.field private mIndexRectXOffset:I

.field private mIsFavoriteText:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectViewTheme:I

.field private mRes:Landroid/content/res/Resources;

.field private mStartTextPositionX:F

.field private mStartTextPositionY:F

.field private mTextWidth:F

.field private m_bColorAll:Z

.field final synthetic this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->debug:Z

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->debug:Z

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->debug:Z

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawIndexRectTextLTR(Landroid/graphics/Canvas;FZ)V
    .locals 7

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    :cond_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawIndexRectTextRTL(Landroid/graphics/Canvas;FZ)V
    .locals 7

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    :cond_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawIndexRectangle(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setTheme(I)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010433

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->primary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2002(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_popup_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_popup_text_color_dimmed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    :goto_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_index_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize3LettersMore:I

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setIndexRectHeight()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sec-roboto-light"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1702(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_popup_text_color_dimmed_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    goto :goto_0
.end method

.method private initIndexRectPos(II)V
    .locals 5

    div-int/lit8 v0, p1, 0x2

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    add-int/2addr v1, v0

    div-int/lit8 v2, p2, 0x2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setIndexRectHeight()V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_rectangle_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    return-void
.end method

.method private setIndexRectWidth()V
    .locals 4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_rectangle_characters_width_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_rectangle_width_two_letter:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_2

    :goto_0
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_rectangle_width_one_letter:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    if-le v3, v0, :cond_1

    add-int v0, v1, v2

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_rectangle_width_two_letter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isColorAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    if-le v4, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->initIndexRectPos(II)V

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->drawIndexRectangle(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v2, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v1, v4

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    new-instance v6, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v6}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    int-to-float v5, v5

    iget v7, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v7

    neg-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_4

    iget-boolean v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$4100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->drawIndexRectTextRTL(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->drawIndexRectTextLTR(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_index_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :cond_5
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_5

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v4, v4

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_index_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v4, v4

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setColorAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    return-void
.end method

.method public setIndexRectText(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2606

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    const-string v0, "favorite"

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize3LettersMore:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->setIndexRectWidth()V

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    :cond_0
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scroll_popup_bg_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_popup_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_popup_text_color_dimmed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    :goto_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$4000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$4000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scroll_popup_bg_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_popup_text_color_dimmed_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
