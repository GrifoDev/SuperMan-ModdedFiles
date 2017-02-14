.class Lcom/android/launcher2/ShadowBuilder;
.super Lcom/android/launcher2/UpdateableShadowBuilder;
.source "ShadowBuilder.java"


# static fields
.field private static final DEFAULT_SCALE_FACTOR:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ShadowBuilder"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPointFactor:F

.field private mScale:F

.field private mScaleFactor:F

.field private mScaleInDraw:Z

.field private mTouch:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FF)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iput v1, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    iput p2, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iput p3, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    invoke-direct {p0, p1}, Lcom/android/launcher2/ShadowBuilder;->createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iput v1, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    iput-object p2, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;F)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iput v1, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    iput p3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iput-object p2, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;)V

    return-void
.end method

.method private createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "ShadowBuilder"

    const-string v3, "getWorkspace() returned null. createBitmap will return null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleInDraw:Z

    goto :goto_0
.end method

.method private init(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    instance-of v4, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_4

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getLastTouchPoint()[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    move v1, v5

    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v6, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v4, v4, v5

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aput v5, v4, v5

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v6, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v4, v8

    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v4, v4, v8

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aput v5, v4, v8

    :cond_2
    iput v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/ShadowBuilder;->resetPaint()V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_4
    instance-of v4, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v4, :cond_5

    check-cast p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLastTouchPoint()[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v6, v4, v5

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v5, v4, v8

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    aput v5, v4, v8

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_6

    move v1, v5

    :goto_3
    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_7

    move v0, v5

    :goto_4
    const/4 v4, 0x2

    new-array v4, v4, [I

    div-int/lit8 v6, v1, 0x2

    aput v6, v4, v5

    div-int/lit8 v5, v0, 0x2

    aput v5, v4, v8

    iput-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_4
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTouch()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getTouchOffset()[I
    .locals 5

    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "ShadowBuilder"

    const-string v4, "Bitmap is recycled; draw ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-boolean v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleInDraw:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v3, v2

    int-to-float v4, v1

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "ShadowBuilder"

    const-string v1, "Bitmap is null. shadow metrics not provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public resetPaint()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method
