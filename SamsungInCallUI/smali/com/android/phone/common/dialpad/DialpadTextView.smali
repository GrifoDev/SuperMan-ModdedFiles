.class public Lcom/android/phone/common/dialpad/DialpadTextView;
.super Landroid/widget/TextView;


# instance fields
.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/phone/common/dialpad/DialpadTextView;->resolveSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/phone/common/dialpad/DialpadTextView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/common/dialpad/DialpadTextView;->setMeasuredDimension(II)V

    return-void
.end method
