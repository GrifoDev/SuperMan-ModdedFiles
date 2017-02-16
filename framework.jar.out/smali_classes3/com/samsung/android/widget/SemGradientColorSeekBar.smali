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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    .line 31
    iput-object p1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private initColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x2

    .line 43
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 44
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 46
    aget v1, v0, v3

    .line 47
    .local v1, "value":F
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v3

    .line 49
    iget-object v2, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 50
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 42
    return-void
.end method

.method private initProgressDrawable()V
    .locals 6

    .prologue
    .line 69
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050349

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 71
    .local v2, "radius":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060193

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 72
    .local v0, "progressDrawableColor":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105034a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 74
    .local v1, "progressDrawableStroke":I
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v5, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 75
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 76
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 77
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 78
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method private initThumb()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10807df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 85
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 88
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const/16 v2, 0x29

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 59
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 35
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initColor(I)V

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initProgressDrawable()V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initThumb()V

    .line 34
    return-void
.end method

.method restoreColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initColor(I)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method
