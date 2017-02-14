.class Landroid/media/Cea608CCWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    const/high16 v1, -0x1000000

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    const v1, 0x105009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const v1, 0x105009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_1

    const/4 v1, -0x1

    :goto_1
    if-eqz v4, :cond_2

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    :goto_2
    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    neg-float v8, v2

    neg-float v9, v2

    invoke-virtual {p0, v7, v8, v9, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v6}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    iget v6, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v6, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v6, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v6}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private setBackgroundSpans(I)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v4, v3, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    const/4 v6, 0x0

    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v1, v3, v4

    invoke-virtual {p0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    invoke-virtual {p0, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string/jumbo v4, "1234567890123456789012345678901234"

    const-string/jumbo v5, "1234567890123456789012345678901234"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Landroid/media/Cea608CCWidget;->-get0()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-static {}, Landroid/media/Cea608CCWidget;->-get0()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v0, v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v2, v3

    div-float v3, v2, v0

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method
