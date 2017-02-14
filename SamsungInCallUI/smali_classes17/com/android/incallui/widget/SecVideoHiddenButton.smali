.class public Lcom/android/incallui/widget/SecVideoHiddenButton;
.super Landroid/widget/Button;
.source "SecVideoHiddenButton.java"


# instance fields
.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoHiddenButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoHiddenButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoHiddenButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mRippleEffectHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoHiddenButton;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredWidth:I

    if-nez v1, :cond_1

    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredWidth:I

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredWidth:I

    :cond_0
    iget v1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredHeight:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoHiddenButton;->getMeasuredHeight()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredHeight:I

    iget v1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredWidth:I

    iget v2, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredHeight:I

    iget v3, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mRippleEffectWidth:I

    iget v4, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mRippleEffectHeight:I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredWidth:I

    iput p2, p0, Lcom/android/incallui/widget/SecVideoHiddenButton;->mMeasuredHeight:I

    return-void
.end method
