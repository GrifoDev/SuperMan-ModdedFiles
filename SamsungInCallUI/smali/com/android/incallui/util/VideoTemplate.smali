.class public Lcom/android/incallui/util/VideoTemplate;
.super Ljava/lang/Object;


# instance fields
.field private mHeight:I

.field private mWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v1, v1}, Lcom/android/incallui/util/VideoTemplate;-><init>(FFII)V

    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    iput p2, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    iput p3, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    iput p4, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/VideoTemplate;-><init>(FFII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/util/VideoTemplate;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/VideoTemplate;-><init>(FFII)V

    return-void
.end method

.method public static toString(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "NULL"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "{x=%s, y=%s, width=%s, ScaleX=%s, height=%s, ScaleY=%s} "

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areSame(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth(Landroid/view/View;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight(Landroid/view/View;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public areSame(Lcom/android/incallui/util/VideoTemplate;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v2

    float-to-int v2, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    float-to-int v2, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 2

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getCenterAlignTemplete(II)Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    iget v2, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    new-instance v2, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v2}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    invoke-virtual {v2, v1}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    invoke-virtual {v2, p1}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    invoke-virtual {v2, p2}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    return-object v2
.end method

.method public getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/util/VideoTemplate;->getAspectRatio()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    :goto_0
    iget v2, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    iget v3, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    iget v4, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    new-instance v4, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v4}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    invoke-virtual {v4, v2, v3}, Lcom/android/incallui/util/VideoTemplate;->set(FF)V

    invoke-virtual {v4, v1, v0}, Lcom/android/incallui/util/VideoTemplate;->setSize(II)V

    return-object v4

    :cond_0
    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v1, v0

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return v0
.end method

.method public getHeight(Landroid/view/View;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getHeightDifference(I)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    return v0
.end method

.method public getWidth(Landroid/view/View;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getWidthDifference(I)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    return v0
.end method

.method public invertSize()V
    .locals 2

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    iput v1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return-void
.end method

.method public isLandscape()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSamePosition(FF)Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    float-to-int v0, v0

    float-to-int v1, p1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    float-to-int v0, v0

    float-to-int v1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSamePosition(Lcom/android/incallui/util/VideoTemplate;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v2

    float-to-int v2, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    float-to-int v2, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resize(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    iput p2, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return-void
.end method

.method public set(FF)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    iput p2, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    iput p2, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{x=%s, y=%s, width=%s, height=%s} "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/util/VideoTemplate;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return-void
.end method

.method public zoom(F)V
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return-void
.end method
