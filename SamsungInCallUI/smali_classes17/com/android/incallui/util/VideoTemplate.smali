.class public Lcom/android/incallui/util/VideoTemplate;
.super Ljava/lang/Object;
.source "VideoTemplate.java"


# instance fields
.field private mHeight:I

.field private mWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v0, v1, v1}, Lcom/android/incallui/util/VideoTemplate;-><init>(FFII)V

    .line 15
    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    .line 27
    iput p2, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    .line 28
    iput p3, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    .line 29
    iput p4, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/VideoTemplate;-><init>(FFII)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/util/VideoTemplate;)V
    .locals 4
    .param p1, "target"    # Lcom/android/incallui/util/VideoTemplate;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/VideoTemplate;-><init>(FFII)V

    .line 23
    return-void
.end method

.method public static toString(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "target"    # Landroid/view/View;

    .prologue
    .line 123
    if-nez p0, :cond_0

    const-string v0, "NULL"

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " {x=%s, y=%s, width=%s, ScaleX=%s, height=%s, ScaleY=%s} "

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 125
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

    .line 124
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areSame(Landroid/view/View;)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 74
    if-nez p1, :cond_1

    .line 75
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
    .param p1, "target"    # Lcom/android/incallui/util/VideoTemplate;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 70
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

.method public getCenterAlignTemplete(II)Lcom/android/incallui/util/VideoTemplate;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 91
    iget v3, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    iget v4, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    sub-int/2addr v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    add-float v1, v3, v4

    .line 92
    .local v1, "x":F
    iget v3, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    iget v4, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    sub-int/2addr v4, p2

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 93
    .local v2, "y":F
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    .line 94
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    .line 95
    invoke-virtual {v0, v2}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    .line 97
    invoke-virtual {v0, p2}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    .line 98
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    return v0
.end method

.method public getHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 114
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 115
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

.method public getWidth()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    return v0
.end method

.method public getWidth(Landroid/view/View;)I
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 110
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

.method public getX()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    return v0
.end method

.method public isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z
    .locals 3
    .param p1, "target"    # Lcom/android/incallui/util/VideoTemplate;

    .prologue
    const/4 v0, 0x0

    .line 79
    if-nez p1, :cond_1

    .line 80
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

    .prologue
    .line 65
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
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 102
    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    .line 103
    iget v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    iget v1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    .line 104
    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    .line 105
    iput p2, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    .line 106
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    .line 58
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    .line 50
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    .line 34
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    const-string v0, " {x=%s, y=%s, width=%s, height=%s} "

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
    .param p1, "target"    # Lcom/android/incallui/util/VideoTemplate;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mX:F

    .line 85
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mY:F

    .line 86
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mWidth:I

    .line 87
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/VideoTemplate;->mHeight:I

    .line 88
    return-void
.end method
