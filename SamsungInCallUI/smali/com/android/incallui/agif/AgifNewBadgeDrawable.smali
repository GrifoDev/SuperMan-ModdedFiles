.class public Lcom/android/incallui/agif/AgifNewBadgeDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "N"

    iput-object v1, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mText:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mBgPaint:Landroid/graphics/Paint;

    const v2, 0x7f0e0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string v1, "sec-roboto-light"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f0e001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f0a03bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v6

    sub-int v8, v0, v7

    int-to-float v1, v8

    int-to-float v2, v7

    add-int v0, v8, v6

    int-to-float v3, v0

    add-int v0, v6, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    div-int/lit8 v0, v6, 0x2

    add-int/2addr v0, v8

    int-to-float v4, v0

    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v7

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
