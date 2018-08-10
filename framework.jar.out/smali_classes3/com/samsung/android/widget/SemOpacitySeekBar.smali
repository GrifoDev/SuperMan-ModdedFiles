.class Lcom/samsung/android/widget/SemOpacitySeekBar;
.super Landroid/widget/SeekBar;
.source "SemOpacitySeekBar.java"


# static fields
.field private static final RIPPLE_EFFECT_OPACITY:I = 0x29

.field private static final SEEKBAR_MAX_VALUE:I = 0xff

.field private static final SEEKBAR_THUMB_OFFSET_DEFAULT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemOpacitySeekBar"


# instance fields
.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    iput-object p1, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private initColor(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x3

    new-array v1, v2, [F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    invoke-static {v4, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    aput v3, v2, v4

    iget-object v2, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    const/16 v3, 0xff

    invoke-static {v3, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgress(I)V

    return-void
.end method

.method private initProgressDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mContext:Landroid/content/Context;

    const v1, 0x108082a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initThumb()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mContext:Landroid/content/Context;

    const v4, 0x108082b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mResources:Landroid/content/res/Resources;

    const v4, 0x10501dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v3, v1, v2, v2}, Lcom/samsung/android/widget/SemOpacitySeekBar;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setThumbOffset(I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/16 v4, 0x29

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v3, v4, v6, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-lez p2, :cond_1

    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    :cond_1
    if-lez p3, :cond_2

    int-to-float v2, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    :cond_2
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setMax(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->initColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->initProgressDrawable()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->initThumb()V

    return-void
.end method

.method restoreColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->initColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
