.class public Lcom/android/launcher2/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StrokeTextView"


# instance fields
.field private mStroke:Z

.field private mStrokeColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/StrokeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/StrokeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->StrokeTextStyle:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/StrokeTextView;->mStroke:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/StrokeTextView;->mStrokeColor:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/StrokeTextView;->mStrokeWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/StrokeTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/StrokeTextView;->getShadowColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/StrokeTextView;->getShadowRadius()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/StrokeTextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/StrokeTextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lcom/android/launcher2/StrokeTextView;->mStroke:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p0}, Lcom/android/launcher2/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/StrokeTextView;->mStrokeWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher2/StrokeTextView;->mStrokeColor:I

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method
