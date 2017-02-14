.class public Lcom/samsung/android/datasaving/SavedDataCircleView;
.super Landroid/view/View;
.source "SavedDataCircleView.java"


# instance fields
.field private mBackgroundColor:I

.field private mCenterX:F

.field private mCenterY:F

.field private mEndAngle:F

.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mRadius:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mRadius:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mBackgroundColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mOval:Landroid/graphics/RectF;

    return-void
.end method

.method private setEndAngle(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/datasaving/SavedDataCircleView;->validateAngle(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mEndAngle:F

    return-void
.end method

.method private validateAngle(F)F
    .locals 2

    move v0, p1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float v0, p1, v1

    :cond_0
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v2, 0x43870000    # 270.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mOval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mCenterX:F

    iget v4, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mRadius:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mCenterY:F

    iget v5, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mRadius:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mCenterX:F

    iget v6, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mRadius:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mCenterY:F

    iget v7, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mRadius:F

    add-float/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mEndAngle:F

    sub-float v3, v0, v2

    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr v3, v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mBackgroundColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mOval:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCircleCenter(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mCenterX:F

    iput p2, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mCenterY:F

    return-void
.end method

.method public setPaintColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setPercent(F)V
    .locals 2

    const v0, 0x40666666    # 3.6f

    mul-float/2addr v0, p1

    const/high16 v1, 0x43870000    # 270.0f

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setEndAngle(F)V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mRadius:F

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method
