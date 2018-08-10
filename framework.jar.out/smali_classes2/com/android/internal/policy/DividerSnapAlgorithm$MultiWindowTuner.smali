.class Lcom/android/internal/policy/DividerSnapAlgorithm$MultiWindowTuner;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DividerSnapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowTuner"
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm$MultiWindowTuner;->getMultiWindowInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/res/Resources;)I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm$MultiWindowTuner;->getMultiWindowSnapMode(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDividerSize(I)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->DUAL_DISPLAY_FULLVIEW_MODE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return p0
.end method

.method private static getMultiWindowInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->DUAL_DISPLAY_FULLVIEW_MODE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private static getMultiWindowSnapMode(Landroid/content/res/Resources;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->DUAL_DISPLAY_FULLVIEW_MODE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const v0, 0x10e0071

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method
