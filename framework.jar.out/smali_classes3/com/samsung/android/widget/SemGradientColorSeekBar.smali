.class Lcom/samsung/android/widget/SemGradientColorSeekBar;
.super Landroid/widget/SeekBar;
.source "SemGradientColorSeekBar.java"


# static fields
.field private static final RIPPLE_EFFECT_OPACITY:I = 0x29

.field private static final SEEKBAR_THUMB_OFFSET_DEFAULT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemGradientColorSeekBar"


# instance fields
.field private mColors:[I

.field private mContext:Landroid/content/Context;

.field private progressDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    iput-object p1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initColor(I)V
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x3

    new-array v0, v2, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v1, v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v3

    iget-object v2, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private initProgressDrawable()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105034a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060193

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105034b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v5, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initThumb()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10807df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const/16 v2, 0x29

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initProgressDrawable()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initThumb()V

    return-void
.end method

.method restoreColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
