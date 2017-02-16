.class public Landroid/text/style/IconMarginSpan;
.super Ljava/lang/Object;
.source "IconMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPad:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "pad"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 34
    iput p2, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    .line 32
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "istartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 57
    check-cast p1, Landroid/text/Spanned;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 58
    iget-object v2, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 60
    .local v0, "ht":I
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v2, p5

    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p4

    sub-int v1, v0, v2

    .line 61
    .local v1, "need":I
    if-lez v1, :cond_0

    .line 62
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v2, v1

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 64
    :cond_0
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v2, p5

    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p4

    sub-int v1, v0, v2

    .line 65
    if-lez v1, :cond_1

    .line 66
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v2, v1

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 56
    .end local v0    # "ht":I
    .end local v1    # "need":I
    :cond_1
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 45
    check-cast p8, Landroid/text/Spanned;

    .end local p8    # "text":Ljava/lang/CharSequence;
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 46
    .local v2, "st":I
    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    move-object/from16 v0, p12

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 48
    .local v1, "itop":I
    if-gez p4, :cond_0

    .line 49
    iget-object v3, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr p3, v3

    .line 51
    :cond_0
    iget-object v3, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v4, p3

    int-to-float v5, v1

    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 44
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    add-int/2addr v0, v1

    return v0
.end method
