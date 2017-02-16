.class public Lcom/android/lg/rambar/CircleRamView;
.super Landroid/widget/ImageView;
.source "CircleRamView.java"


# instance fields
.field private mArcOffset:F

.field private mAttached:Z

.field private mAvailableMemory:Ljava/lang/String;

.field private mCircleSize:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHighLevel:J

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLevel:J

.field private mLowLevel:J

.field private mMediumLevel:J

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintGreen:Landroid/graphics/Paint;

.field private final mPaintOrange:Landroid/graphics/Paint;

.field private final mPaintRed:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mRectLeft:Landroid/graphics/RectF;

.field private mTextArc:Landroid/graphics/Path;

.field private mTotalMemory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lg/rambar/CircleRamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lg/rambar/CircleRamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/16 v7, 0x44

    const/16 v6, 0xaa

    const/4 v5, 0x1

    const/16 v4, 0xff

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/lg/rambar/CircleRamView$1;

    invoke-direct {v0, p0}, Lcom/android/lg/rambar/CircleRamView$1;-><init>(Lcom/android/lg/rambar/CircleRamView;)V

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mInvalidate:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/lg/rambar/CircleRamView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    const/16 v1, 0xa6

    const/16 v2, 0xc6

    const/16 v3, 0x3d

    invoke-static {v6, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    const/16 v1, 0xbb

    const/16 v2, 0x33

    invoke-static {v6, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    invoke-static {v6, v4, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/lg/rambar/CircleRamView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/lg/rambar/CircleRamView;->mAttached:Z

    return v0
.end method

.method static synthetic access$1(Lcom/android/lg/rambar/CircleRamView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/lg/rambar/CircleRamView;->update()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/lg/rambar/CircleRamView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/lg/rambar/CircleRamView;->updateMemoryInfo()V

    return-void
.end method

.method private getLevel()J
    .locals 2

    iget-wide v0, p0, Lcom/android/lg/rambar/CircleRamView;->mLevel:J

    return-wide v0
.end method

.method private init()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v8, 0x40000000    # 2.0f

    iget v3, p0, Lcom/android/lg/rambar/CircleRamView;->mCircleSize:I

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/lg/rambar/CircleRamView;->initSizeMeasureIconHeight()V

    :cond_0
    iget v3, p0, Lcom/android/lg/rambar/CircleRamView;->mCircleSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40d00000    # 6.5f

    div-float v2, v3, v4

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float v0, v2, v3

    iget-object v3, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/android/lg/rambar/CircleRamView;->getPaddingLeft()I

    move-result v1

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    div-float v5, v2, v8

    add-float/2addr v4, v5

    const/4 v5, 0x0

    div-float v6, v2, v8

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/lg/rambar/CircleRamView;->mCircleSize:I

    int-to-float v6, v6

    div-float v7, v2, v8

    sub-float/2addr v6, v7

    int-to-float v7, v1

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/lg/rambar/CircleRamView;->mCircleSize:I

    int-to-float v7, v7

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/lg/rambar/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/lg/rambar/CircleRamView;->mTextArc:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/lg/rambar/CircleRamView;->mTextArc:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/lg/rambar/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v9, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v3, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sub-float v3, v2, v0

    iput v3, p0, Lcom/android/lg/rambar/CircleRamView;->mArcOffset:F

    invoke-virtual {p0, v10, v10}, Lcom/android/lg/rambar/CircleRamView;->onMeasure(II)V

    return-void
.end method

.method private initSizeMeasureIconHeight()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/lg/rambar/CircleRamView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/lg/rambar/CircleRamView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/lg/rambar/CircleRamView;->mCircleSize:I

    return-void
.end method

.method private setCurrentLevel(J)V
    .locals 3

    iput-wide p1, p0, Lcom/android/lg/rambar/CircleRamView;->mLevel:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x100000

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mAvailableMemory:Ljava/lang/String;

    return-void
.end method

.method private setLevels(JJJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/lg/rambar/CircleRamView;->mLowLevel:J

    iput-wide p3, p0, Lcom/android/lg/rambar/CircleRamView;->mMediumLevel:J

    iput-wide p5, p0, Lcom/android/lg/rambar/CircleRamView;->mHighLevel:J

    return-void
.end method

.method private update()V
    .locals 3

    new-instance v0, Lcom/android/lg/rambar/CircleRamView$2;

    invoke-direct {v0, p0}, Lcom/android/lg/rambar/CircleRamView$2;-><init>(Lcom/android/lg/rambar/CircleRamView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lg/rambar/CircleRamView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateMemoryInfo()V
    .locals 8

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v4, p0, Lcom/android/lg/rambar/CircleRamView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-direct {p0, v1, v2}, Lcom/android/lg/rambar/CircleRamView;->setCurrentLevel(J)V

    iget-object v4, p0, Lcom/android/lg/rambar/CircleRamView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/lg/rambar/CircleRamView;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/lg/rambar/CircleRamView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/lg/rambar/CircleRamView;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method drawCircle(Landroid/graphics/Canvas;JLandroid/graphics/RectF;)V
    .locals 8

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/android/lg/rambar/CircleRamView;->mLowLevel:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    iget-object v7, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    :goto_0
    long-to-float v0, p2

    iget-wide v1, p0, Lcom/android/lg/rambar/CircleRamView;->mHighLevel:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v2, 0x43340000    # 180.0f

    const v0, 0x40666666    # 3.6f

    int-to-float v1, v6

    mul-float v3, v0, v1

    move-object v0, p1

    move-object v1, p4

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/lg/rambar/CircleRamView;->mAvailableMemory:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lg/rambar/CircleRamView;->mTotalMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lg/rambar/CircleRamView;->mTextArc:Landroid/graphics/Path;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/lg/rambar/CircleRamView;->mArcOffset:F

    iget-object v5, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/lg/rambar/CircleRamView;->mMediumLevel:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    iget-object v7, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/lg/rambar/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/lg/rambar/CircleRamView;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lg/rambar/CircleRamView;->mAttached:Z

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lg/rambar/CircleRamView;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/lg/rambar/CircleRamView;->mAttached:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/lg/rambar/CircleRamView;->mAttached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    iput v1, p0, Lcom/android/lg/rambar/CircleRamView;->mCircleSize:I

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/lg/rambar/CircleRamView;->init()V

    :cond_0
    invoke-direct {p0}, Lcom/android/lg/rambar/CircleRamView;->updateMemoryInfo()V

    invoke-direct {p0}, Lcom/android/lg/rambar/CircleRamView;->getLevel()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lg/rambar/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/lg/rambar/CircleRamView;->drawCircle(Landroid/graphics/Canvas;JLandroid/graphics/RectF;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    new-instance v10, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v10}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    invoke-virtual {v7, v10}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v8, v10, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v5, v10, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x100000

    div-long v1, v5, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lg/rambar/CircleRamView;->mTotalMemory:Ljava/lang/String;

    long-to-float v0, v5

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-long v1, v0

    long-to-float v0, v5

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    float-to-long v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/lg/rambar/CircleRamView;->setLevels(JJJ)V

    invoke-direct {p0, v8, v9}, Lcom/android/lg/rambar/CircleRamView;->setCurrentLevel(J)V

    return-void
.end method
