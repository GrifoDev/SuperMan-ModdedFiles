.class public Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;
.super Ljava/lang/Object;
.source "PairedRecentTaskThumbnail.java"


# instance fields
.field private mBgFillPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mSmallestSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mSmallestSize:I

    return-void
.end method

.method private drawPairedTaskThumbLandscape(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHwBitmapsInSwModeEnabled()Z

    move-result v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setHwBitmapsInSwModeEnabled(Z)V

    invoke-virtual {v0, p2, v10, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, p3, v6, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f0d0046

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    iget-object v6, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07046e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v0, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setHwBitmapsInSwModeEnabled(Z)V

    return-void
.end method

.method private drawPairedTaskThumbPortrait(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHwBitmapsInSwModeEnabled()Z

    move-result v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setHwBitmapsInSwModeEnabled(Z)V

    invoke-virtual {v0, p2, v10, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v0, p3, v10, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f0d0046

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    iget-object v6, p0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07046e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v0, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setHwBitmapsInSwModeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 20

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v10

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v13

    :goto_0
    const/4 v9, 0x0

    if-eqz v10, :cond_0

    iget-object v9, v10, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v12, 0x0

    if-eqz v13, :cond_1

    iget-object v12, v13, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :cond_1
    if-nez v9, :cond_2

    const-string/jumbo v3, "PairedRecentTaskThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dock null / dockedThumbnail = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " fullThumbnail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    if-nez v12, :cond_3

    const-string/jumbo v3, "PairedRecentTaskThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "full null / dockedThumbnail = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " fullThumbnail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    :goto_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    const-string/jumbo v3, "PairedRecentTaskThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dockedThumbnail width for drawing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "PairedRecentTaskThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fullThumbnail width for drawing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_7

    const-string/jumbo v3, "PairedRecentTaskThumbnail"

    const-string/jumbo v4, "getPairedRecentTasksThumbnail :: ORIENTATION_PORTRAIT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v14

    mul-int/lit8 v15, v14, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9, v12}, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->drawPairedTaskThumbPortrait(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_3
    new-instance v19, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct/range {v19 .. v19}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/systemui/recents/model/ThumbnailData;->orientation:I

    iget v3, v10, Lcom/android/systemui/recents/model/ThumbnailData;->scale:F

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/systemui/recents/model/ThumbnailData;->scale:F

    move/from16 v0, p2

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    return-object v19

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v13

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mSmallestSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mSmallestSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mSmallestSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->mSmallestSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v3, "PairedRecentTaskThumbnail"

    const-string/jumbo v4, "getPairedRecentTasksThumbnail :: ORIENTATION_LANDSCAPE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v14

    move v15, v14

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9, v12}, Lcom/android/systemui/recents/model/PairedRecentTaskThumbnail;->drawPairedTaskThumbLandscape(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3
.end method
