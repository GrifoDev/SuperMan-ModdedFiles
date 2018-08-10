.class public Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
.super Ljava/lang/Object;
.source "MediaNotificationProcessor.java"


# instance fields
.field private mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

.field private final mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

.field private final mContext:Landroid/content/Context;

.field private mFilteredBackgroundHsl:[F

.field private mIsLowPriority:Z

.field private final mPackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    new-instance v0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mPackageContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    return-void
.end method

.method private findBackgroundColorAndFilter(Landroid/support/v7/graphics/Palette;)I
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    const/4 v6, -0x1

    return v6

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v5

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v3, v0, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v1

    if-lez v6, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move-object v2, v3

    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v1, v6

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    return v6

    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    const/high16 v7, 0x40200000    # 2.5f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    return v6

    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    return v6
.end method

.method private hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x46afc800    # 22500.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x3f60624dd2f1a9fcL    # 0.002

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isBlack([F)Z
    .locals 2

    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3da3d70a    # 0.08f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhite([F)Z
    .locals 2

    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhiteOrBlack([F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhite([F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private selectForegroundColor(ILandroid/support/v7/graphics/Palette;)I
    .locals 7

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->isColorLight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v5

    const/high16 v6, -0x1000000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v5

    const/4 v6, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I

    move-result v0

    return v0
.end method

.method private selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectVibrantCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4, p3}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectMutedCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    if-ne p5, v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    const v2, 0x3e428f5c    # 0.19f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    :cond_3
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    :cond_4
    return p6
.end method

.method private selectMutedCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v4

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v5

    aget v0, v5, v6

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v5

    aget v3, v5, v6

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    mul-float v5, v0, v2

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    return-object p1

    :cond_0
    return-object p2

    :cond_1
    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    if-eqz v4, :cond_3

    return-object p2

    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method private selectVibrantCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    return-object p2

    :cond_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    if-eqz v3, :cond_3

    return-object p2

    :cond_3
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_notification_MediaNotificationProcessor_2612(I[F)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_notification_MediaNotificationProcessor_5787(I[F)Z
    .locals 4

    const/4 v1, 0x0

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x43af0000    # 350.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V
    .locals 27

    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v17

    const/4 v8, 0x0

    const/4 v11, 0x0

    if-eqz v17, :cond_2

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setRebuildStyledRemoteViews(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mPackageContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification;->isColorizedMedia()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    mul-int v6, v21, v15

    const/16 v22, 0x57e4

    move/from16 v0, v22

    if-le v6, v0, :cond_0

    int-to-float v0, v6

    move/from16 v22, v0

    const v23, 0x46afc800    # 22500.0f

    div-float v22, v23, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    int-to-double v0, v15

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v22

    double-to-int v15, v0

    :cond_0
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v11, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v8}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v22

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/graphics/Palette$Builder;->setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v22

    const/16 v23, 0x57e4

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/graphics/Palette$Builder;->resizeBitmapArea(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundColorAndFilter(Landroid/support/v7/graphics/Palette;)I

    move-result v7

    const v20, 0x3ecccccd    # 0.4f

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/graphics/Palette$Builder;->setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    new-instance v22, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA$1;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColor(ILandroid/support/v7/graphics/Palette;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v14}, Landroid/app/Notification$Builder;->setColorPalette(II)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v11, v7, v1}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;->colorize(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mIsLowPriority:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const v16, 0x7f06012a

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v7

    goto :goto_0

    :cond_4
    const v16, 0x7f060125

    goto :goto_2

    :cond_5
    const/16 v22, 0x0

    goto :goto_1
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mIsLowPriority:Z

    return-void
.end method
