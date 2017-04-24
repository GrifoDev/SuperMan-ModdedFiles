.class public Lcom/samsung/android/settings/widget/BrightnessIconView;
.super Landroid/widget/ImageView;
.source "BrightnessIconView.java"


# instance fields
.field private mCirclePaint:Landroid/graphics/Paint;

.field private mInnerCircleRadious:F

.field private mMax:F

.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/BrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/BrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/BrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mInnerCircleRadious:F

    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mMax:F

    iput v1, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mRatio:F

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/BrightnessIconView;->Init(Landroid/content/Context;)V

    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mInnerCircleRadious:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mCirclePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BrightnessIconView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mInnerCircleRadious:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mInnerCircleRadious:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mInnerCircleRadious:F

    iget-object v3, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/settings/widget/BrightnessIconView;->mMax:F

    return-void
.end method
