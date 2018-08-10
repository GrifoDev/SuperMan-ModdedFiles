.class public Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;
.super Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;
.source "ShadowBuilder.java"


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

    const v0, 0x3f666666    # 0.9f

    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;-><init>(Landroid/view/View;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPointFactor:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPointFactor:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->createBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->init(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPointFactor:F

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->init(Landroid/view/View;)V

    return-void
.end method

.method private createBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    const/4 v4, 0x0

    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v3, v5, v9

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-direct {p0, p1, v2, v4, v9}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleInDraw:Z

    return-object v1

    :cond_2
    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 16

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/TextView;

    if-nez v12, :cond_0

    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/ImageView;

    if-eqz v12, :cond_6

    :cond_0
    if-eqz p4, :cond_6

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/TextView;

    if-eqz v12, :cond_4

    move-object/from16 v12, p1

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v12, 0x0

    array-length v14, v13

    :goto_0
    if-ge v12, v14, :cond_1

    aget-object v3, v13, v12

    if-eqz v3, :cond_3

    move-object v5, v3

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f0b0020

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int v12, v12, p3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int v13, v13, p3

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, p3

    int-to-float v12, v0

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    int-to-float v13, v9

    add-float/2addr v12, v13

    move/from16 v0, p3

    int-to-float v13, v0

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v12, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_5

    const v12, 0x3f59999a    # 0.85f

    const v13, 0x3f59999a    # 0.85f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/ImageView;

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_1

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;

    iget-object v12, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v12, :cond_8

    move-object/from16 v11, p1

    check-cast v11, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getExtendedPaddingTop()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTextVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTextVisible(Z)V

    const/4 v8, 0x1

    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    neg-int v12, v12

    div-int/lit8 v13, p3, 0x2

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    neg-int v13, v13

    div-int/lit8 v14, p3, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v12, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v8, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTextVisible(Z)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/TextView;

    if-eqz v12, :cond_7

    move-object/from16 v10, p1

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method private init(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

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

    iput v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScale:F

    instance-of v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getLastTouchPoint()[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mTouch:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mTouch:[I

    aget v5, v4, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    aput v5, v4, v7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mTouch:[I

    aget v4, v4, v7

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mTouch:[I

    aput v7, v4, v7

    :cond_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScale:F

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->resetPaint()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    const/4 v0, 0x0

    :goto_4
    const/4 v4, 0x2

    new-array v4, v4, [I

    div-int/lit8 v5, v1, 0x2

    aput v5, v4, v7

    div-int/lit8 v5, v0, 0x2

    const/4 v6, 0x1

    aput v5, v4, v6

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mTouch:[I

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_4
.end method


# virtual methods
.method public bridge synthetic clearSurface()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;->clearSurface()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTouchOffset()[I
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mTouch:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPointFactor:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScale:F

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPointFactor:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScale:F

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    return-object v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "[DS]ShadowBuilder"

    const-string/jumbo v4, "Bitmap is recycled; draw ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleInDraw:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v3, v2

    int-to-float v4, v1

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string/jumbo v0, "[DS]ShadowBuilder"

    const-string/jumbo v1, "Bitmap is null. shadow metrics not provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mTouch:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mTouch:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mScaleFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public resetPaint()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method
