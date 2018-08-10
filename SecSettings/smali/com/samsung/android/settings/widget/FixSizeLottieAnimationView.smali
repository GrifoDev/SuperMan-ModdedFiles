.class public Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "FixSizeLottieAnimationView.java"


# instance fields
.field canFix:Z

.field targetH:I

.field targetW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->canFix:Z

    const-string/jumbo v3, "log"

    const-string/jumbo v4, "FixSizeLottieAnimationView()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x10100f4

    const v4, 0x10100f5

    :try_start_0
    filled-new-array {v3, v4}, [I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->targetW:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->targetH:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->canFix:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "log"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->canFix:Z

    goto :goto_0
.end method


# virtual methods
.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p1    # Lcom/airbnb/lottie/LottieComposition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    const-string/jumbo v4, "log"

    const-string/jumbo v5, "setComposition()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->canFix:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->setScale(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v4, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->targetW:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->targetH:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->targetW:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    iget v4, p0, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->targetH:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->setScale(F)V

    goto :goto_0
.end method
