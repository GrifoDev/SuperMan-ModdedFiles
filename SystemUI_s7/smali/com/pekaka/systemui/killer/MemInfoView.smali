.class public Lcom/pekaka/systemui/killer/MemInfoView;
.super Landroid/view/View;
.source "MemInfoView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Ljava/util/Observer;


# instance fields
.field private mBackPaint:Landroid/graphics/Paint;

.field private mFrontPaint:Landroid/graphics/Paint;

.field private mFullFrontPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mPercent:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private refreshAnim:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mHandler:Landroid/os/Handler;

    const-string v6, "killer_meminfo_background"

    const-string v7, "color"

    invoke-static {p1, v6, v7}, Lcom/pekaka/util/AssetUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v6, "killer_meminfo_front"

    const-string v7, "color"

    invoke-static {p1, v6, v7}, Lcom/pekaka/util/AssetUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v6, "killer_meminfo_full_front"

    const-string v7, "color"

    invoke-static {p1, v6, v7}, Lcom/pekaka/util/AssetUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v6, "killer_meminfo_txt"

    const-string v7, "color"

    invoke-static {p1, v6, v7}, Lcom/pekaka/util/AssetUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v6, "killer_meminfo_txt_size"

    const-string v7, "dimen"

    invoke-static {p1, v6, v7}, Lcom/pekaka/util/AssetUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mBackPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFrontPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFullFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFullFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFullFrontPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFullFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextSize:I

    iget-object v6, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private createAnimation(II)V
    .locals 5

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-array v0, v1, [I

    aput p1, v0, v2

    aput v2, v0, v3

    aput p2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_1
    return-void

    :cond_0
    new-array v0, v4, [I

    aput v2, v0, v2

    aput p2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    new-array v1, v1, [I

    aput p1, v1, v2

    aput v2, v1, v3

    aput p2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    new-array v1, v4, [I

    aput v2, v1, v2

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_1
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemInfoView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemInfoView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemInfoView;->getMeasuredWidth()I

    move-result v11

    int-to-float v3, v11

    int-to-float v4, v6

    iget-object v5, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mBackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_0
    const/16 v0, 0x50

    if-le v10, v0, :cond_1

    iget-object v5, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFullFrontPaint:Landroid/graphics/Paint;

    :goto_1
    mul-int v0, v6, v10

    div-int/lit8 v0, v0, 0x64

    sub-int v0, v6, v0

    int-to-float v2, v0

    int-to-float v3, v11

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    int-to-float v0, v11

    sub-float/2addr v0, v7

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    iget v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextSize:I

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextSize:I

    add-int/2addr v0, v1

    int-to-float v9, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v10, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mPercent:I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mFrontPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "db_inkeffect_pekaka_memkiller_picker"

    const v9, -0xcc4a1a

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v3, v7, :cond_0

    move v5, v4

    :goto_0
    if-ne v0, v7, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/pekaka/systemui/killer/MemInfoView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/16 v6, 0x50

    invoke-static {v6, p1}, Lcom/pekaka/systemui/killer/MemInfoView;->resolveSize(II)I

    move-result v5

    goto :goto_0

    :cond_1
    const/16 v6, 0x64

    invoke-static {v6, p2}, Lcom/pekaka/systemui/killer/MemInfoView;->resolveSize(II)I

    move-result v2

    goto :goto_1
.end method

.method public setPercent(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pekaka/systemui/killer/MemInfoView;->startAnimation(I)V

    iput p1, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mPercent:I

    return-void
.end method

.method public setPercentNoAnimation(I)V
    .locals 0

    iput p1, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mPercent:I

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemInfoView;->invalidate()V

    return-void
.end method

.method public startAnimation(I)V
    .locals 1

    iget v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mPercent:I

    invoke-direct {p0, v0, p1}, Lcom/pekaka/systemui/killer/MemInfoView;->createAnimation(II)V

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemInfoView;->refreshAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    instance-of v1, p2, Lcom/pekaka/systemui/killer/MemInfo;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/pekaka/systemui/killer/MemInfo;

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemInfoView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/pekaka/systemui/killer/MemInfoView$1;

    invoke-direct {v2, p0, v0}, Lcom/pekaka/systemui/killer/MemInfoView$1;-><init>(Lcom/pekaka/systemui/killer/MemInfoView;Lcom/pekaka/systemui/killer/MemInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
