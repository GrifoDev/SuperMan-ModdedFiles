.class public Lcom/samsung/android/visualeffect/check/DoneView;
.super Landroid/view/View;
.source "DoneView.java"


# instance fields
.field final RELATIVE_STARTX:F

.field final RELATIVE_STARTY:F

.field final RELATIVE_STROKE:F

.field final RELATIVE_X1:F

.field final RELATIVE_X2:F

.field final RELATIVE_Y1:F

.field final RELATIVE_Y2:F

.field final RELATIVE_Y2_ABSOLUTE:F

.field STARTX:F

.field STARTY:F

.field STROKE:F

.field X1:F

.field X2:F

.field Y1:F

.field Y2:F

.field Y2_ABSOLUTE:F

.field initialDraw:Z

.field mAnimator:Landroid/animation/ValueAnimator;

.field mPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field posX:F

.field posY:F

.field x1delta:F

.field x2delta:F

.field y1delta:F

.field y2delta:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const v5, 0x41d7851f    # 26.94f

    const v4, 0x41bc8f5c    # 23.57f

    const v3, 0x4191d70a    # 18.23f

    const v2, 0x409ccccd    # 4.9f

    const v1, 0x421feb85    # 39.98f

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTX:F

    const v0, 0x422c3333    # 43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTY:F

    iput v4, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X1:F

    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y1:F

    const v0, 0x421fae14    # 39.92f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X2:F

    const v0, -0x3de0147b    # -39.98f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2_ABSOLUTE:F

    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STROKE:F

    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    const v0, 0x422c3333    # 43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    iput v4, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    const v0, 0x421fae14    # 39.92f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v6, 0x41bc8f5c    # 23.57f

    const v5, 0x4191d70a    # 18.23f

    const v3, 0x409ccccd    # 4.9f

    const/4 v4, 0x1

    const v2, 0x421feb85    # 39.98f

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTX:F

    const v1, 0x422c3333    # 43.05f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTY:F

    iput v6, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X1:F

    const v1, 0x41d7851f    # 26.94f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y1:F

    const v1, 0x421fae14    # 39.92f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X2:F

    const v1, -0x3de0147b    # -39.98f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2:F

    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2_ABSOLUTE:F

    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STROKE:F

    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    const v1, 0x422c3333    # 43.05f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    iput v6, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    const v1, 0x41d7851f    # 26.94f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    const v1, 0x421fae14    # 39.92f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2:F

    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    sget-object v1, Lcom/android/settings/R$styleable;->DoneView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/visualeffect/check/DoneView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/check/DoneView$1;-><init>(Lcom/samsung/android/visualeffect/check/DoneView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/visualeffect/check/DoneView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/check/DoneView$2;-><init>(Lcom/samsung/android/visualeffect/check/DoneView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const v5, 0x41d7851f    # 26.94f

    const v4, 0x41bc8f5c    # 23.57f

    const v3, 0x4191d70a    # 18.23f

    const v2, 0x409ccccd    # 4.9f

    const v1, 0x421feb85    # 39.98f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTX:F

    const v0, 0x422c3333    # 43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTY:F

    iput v4, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X1:F

    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y1:F

    const v0, 0x421fae14    # 39.92f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X2:F

    const v0, -0x3de0147b    # -39.98f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2_ABSOLUTE:F

    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STROKE:F

    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    const v0, 0x422c3333    # 43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    iput v4, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    const v0, 0x421fae14    # 39.92f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    return-void
.end method

.method private transformToAbsoluteCoordinate(II)V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v0, p1

    const v1, 0x4191d70a    # 18.23f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    int-to-float v0, p2

    const v1, 0x422c3333    # 43.05f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    int-to-float v0, p1

    const v1, 0x41bc8f5c    # 23.57f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    int-to-float v0, p2

    const v1, 0x41d7851f    # 26.94f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    int-to-float v0, p1

    const v1, 0x421fae14    # 39.92f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    int-to-float v0, p2

    const v1, -0x3de0147b    # -39.98f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2:F

    int-to-float v0, p2

    const v1, 0x421feb85    # 39.98f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    int-to-float v0, p1

    const v1, 0x409ccccd    # 4.9f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/check/DoneView;->transformToAbsoluteCoordinate(II)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    iget v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    iget v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    iget v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/check/DoneView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41bc8f5c    # 23.57f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/check/DoneView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41d7851f    # 26.94f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/check/DoneView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x421fae14    # 39.92f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/check/DoneView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, -0x3de0147b    # -39.98f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    goto :goto_0
.end method

.method public playAnimation()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
