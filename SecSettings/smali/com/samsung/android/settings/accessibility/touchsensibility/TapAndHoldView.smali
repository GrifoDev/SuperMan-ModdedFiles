.class public Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;
.super Landroid/widget/ImageView;
.source "TapAndHoldView.java"


# static fields
.field private static touch_time:J


# instance fields
.field private blockLongPress:Z

.field private currentTapAndHoldState:I

.field private final_touch_time:J

.field private isActivityFront:Z

.field private isLongPressDone:Z

.field private isStartCounting:Z

.field private isTouchBeforeResume:Z

.field private mBitmapHoldConfirm:Landroid/graphics/Bitmap;

.field private mBitmapHoldStandBy:Landroid/graphics/Bitmap;

.field private mBitmapTapConfirm:Landroid/graphics/Bitmap;

.field private mBitmapTapStandBy:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080113

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080112

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v5, 0x7f08010d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v5, 0x7f08010c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v5, v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    :cond_0
    instance-of v5, v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_1

    check-cast v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    :cond_1
    instance-of v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_2

    check-cast v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    :cond_2
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    return-void
.end method


# virtual methods
.method public checkAndSaveState()V
    .locals 6

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    :cond_1
    return-void
.end method

.method public checkLongPressStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    return v0
.end method

.method public checkTouchBeforeResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "TapAndHoldView"

    const-string/jumbo v2, "Unknown Tap and Hold State"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTouchTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    return-wide v0
.end method

.method public isCountingLongPressTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    iput v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-nez v2, :cond_0

    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    :cond_1
    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    return v5

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    :cond_4
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    if-nez v2, :cond_6

    iput v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    :cond_6
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    goto :goto_1
.end method

.method public refresh()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    sput-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    return-void
.end method

.method public setActivityState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    return-void
.end method

.method public updateRunningHoldStandby()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    return-void
.end method
