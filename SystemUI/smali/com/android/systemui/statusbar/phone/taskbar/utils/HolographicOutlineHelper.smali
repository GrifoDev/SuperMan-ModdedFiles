.class public Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field static INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;

.field public static final MAX_OUTER_BLUR_RADIUS:I

.field private static final sInnerBlurMaskFilter_0:Landroid/graphics/BlurMaskFilter;

.field private static final sOuterBlurMaskFilter_0:Landroid/graphics/BlurMaskFilter;

.field private static final sOuterBlurMaskFilter_1:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getScreenDensity()F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v4, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->sOuterBlurMaskFilter_0:Landroid/graphics/BlurMaskFilter;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->sOuterBlurMaskFilter_1:Landroid/graphics/BlurMaskFilter;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v4, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->sInnerBlurMaskFilter_0:Landroid/graphics/BlurMaskFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static obtain()Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;

    return-object v0
.end method


# virtual methods
.method public createDragOutlineForIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 16

    const/16 v2, 0xa0

    const/16 v3, 0xfe

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->setAlphaClip(Landroid/graphics/Bitmap;III)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->sOuterBlurMaskFilter_0:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x2

    new-array v12, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->sOuterBlurMaskFilter_1:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x2

    new-array v9, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v9}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/high16 v3, -0x1000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->sInnerBlurMaskFilter_0:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x2

    new-array v14, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v14}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    aget v2, v14, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    aget v2, v14, v2

    neg-int v2, v2

    int-to-float v5, v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v2, 0x1

    aget v2, v14, v2

    neg-int v2, v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    aget v2, v14, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    aget v2, v12, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v12, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v11, v2, :cond_0

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public setAlphaClip(Landroid/graphics/Bitmap;III)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v9, 0x0

    :goto_0
    array-length v0, v1

    if-ge v9, v0, :cond_1

    aget v0, v1, v9

    ushr-int/lit8 v8, v0, 0x18

    if-lt v8, p2, :cond_0

    if-gt v8, p3, :cond_0

    aput p4, v1, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method
