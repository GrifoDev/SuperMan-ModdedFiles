.class public Lcom/android/incallui/carriermatching/CircularCountDownProgress;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularCountDownProgress"


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCircleBounds:Landroid/graphics/RectF;

.field private mCurrentTime:J

.field private mEndTime:J

.field private mMaxTime:J

.field private mProgress:D

.field private mProgressMillisecond:J

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mStrokeProgress:F

.field private mTextOffset:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mUpdateView:Ljava/lang/Runnable;

.field private mViewHandler:Landroid/os/Handler;

.field private onFinishListener:Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mMaxTime:J

    const-string v0, "CircularCountDownProgress"

    const-string v1, "CircularCountdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->initCountDownView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mMaxTime:J

    const-string v0, "CircularCountDownProgress"

    const-string v1, "CircularCountdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->initCountDownView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mMaxTime:J

    const-string v0, "CircularCountDownProgress"

    const-string v1, "CircularCountdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->initCountDownView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/incallui/carriermatching/CircularCountDownProgress;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressMillisecond:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/incallui/carriermatching/CircularCountDownProgress;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressMillisecond:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/incallui/carriermatching/CircularCountDownProgress;D)D
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgress:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mMaxTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->onFinishListener:Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mUpdateView:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initCountDownView()V
    .locals 5

    const v4, 0x7f0e0057

    const/4 v3, 0x1

    const-string v0, "CircularCountDownProgress"

    const-string v1, "initCountDownView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mStrokeProgress:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mStrokeProgress:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v3

    iget v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mStrokeProgress:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    const-string v0, "CircularCountDownProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextOffset:F

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    sub-float v1, v6, v1

    iget v2, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    sub-float v2, v7, v2

    iget v3, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    add-float/2addr v3, v6

    iget v5, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    add-float/2addr v5, v7

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mRadius:F

    iget v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mStrokeProgress:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-wide v8, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgress:D

    const-wide v10, 0x4076800000000000L    # 360.0

    mul-double/2addr v8, v10

    double-to-float v3, v8

    iget-object v5, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressMillisecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iget-wide v2, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mProgressMillisecond:J

    const-wide/16 v8, 0x64

    cmp-long v1, v2, v8

    if-gtz v1, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextOffset:F

    add-float/2addr v1, v7

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    move v4, v0

    goto :goto_0
.end method

.method public setOnFinishListener(Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->onFinishListener:Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;

    return-void
.end method

.method public startCountDown(I)V
    .locals 4

    const-string v0, "CircularCountDownProgress"

    const-string v1, "startCountDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mMaxTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mEndTime:J

    iget-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mEndTime:J

    iput-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mCurrentTime:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mViewHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;-><init>(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mUpdateView:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopCountDown()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mUpdateView:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mMaxTime:J

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->mUpdateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
