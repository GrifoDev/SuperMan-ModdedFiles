.class Lcom/samsung/android/graphics/SemZoomBlurFilter$2;
.super Ljava/lang/Object;
.source "SemZoomBlurFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemZoomBlurFilter;->animateQuality(IIJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:[F

.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

.field final synthetic val$aEndValue:I

.field final synthetic val$aStartValue:I


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemZoomBlurFilter;II)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->val$aEndValue:I

    iput p3, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->val$aStartValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->params:[F

    const/16 v0, 0x40

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->data:[F

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 8

    const/16 v7, 0x40

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/graphics/SemZoomBlurFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemZoomBlurFilter animateQuality aFraction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    iget v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->val$aEndValue:I

    iget v3, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->val$aStartValue:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->val$aStartValue:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-set0(Lcom/samsung/android/graphics/SemZoomBlurFilter;I)I

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-get0(Lcom/samsung/android/graphics/SemZoomBlurFilter;)I

    move-result v1

    if-ge v1, v6, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-static {v1, v6}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-set0(Lcom/samsung/android/graphics/SemZoomBlurFilter;I)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-get0(Lcom/samsung/android/graphics/SemZoomBlurFilter;)I

    move-result v1

    if-le v1, v7, :cond_2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-static {v1, v7}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-set0(Lcom/samsung/android/graphics/SemZoomBlurFilter;I)I

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-get0(Lcom/samsung/android/graphics/SemZoomBlurFilter;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->data:[F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-get0(Lcom/samsung/android/graphics/SemZoomBlurFilter;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/samsung/android/graphics/SemZoomBlurFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemZoomBlurFilter animateQuality mQuality = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-static {v3}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-get0(Lcom/samsung/android/graphics/SemZoomBlurFilter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->params:[F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->-get0(Lcom/samsung/android/graphics/SemZoomBlurFilter;)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->params:[F

    aget v2, v2, v4

    aput v2, v1, v5

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->data:[F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemZoomBlurFilter;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->data:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    const-string/jumbo v1, "filterData01"

    iget-object v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->data:[F

    invoke-virtual {p2, v1, v2, v4}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    const-string/jumbo v1, "filterParams"

    iget-object v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;->params:[F

    invoke-virtual {p2, v1, v2, v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    return-void
.end method
