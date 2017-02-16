.class Lcom/samsung/android/graphics/SemCosineBlurFilter$1;
.super Ljava/lang/Object;
.source "SemCosineBlurFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemCosineBlurFilter;->animateRadius(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:[F

.field private data1:[F

.field private data2:[F

.field private params1:[F

.field private params2:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemCosineBlurFilter;FF)V
    .locals 5
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemCosineBlurFilter;
    .param p2, "val$aEndValue"    # F
    .param p3, "val$aStartValue"    # F

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 198
    iput-object p1, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-array v0, v3, [F

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->params1:[F

    .line 200
    new-array v0, v3, [F

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->params2:[F

    .line 201
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data1:[F

    .line 202
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data2:[F

    .line 203
    const/16 v0, 0x80

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data:[F

    .line 198
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 12
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    .line 209
    sget-boolean v7, Lcom/samsung/android/graphics/SemCosineBlurFilter;->sLogingEnabled:Z

    if-eqz v7, :cond_0

    .line 210
    const-string/jumbo v7, "HWUIIF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SemCosineBlurFilter animateRadius aFraction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    iget v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->val$aEndValue:F

    iget v9, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->val$aStartValue:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, p1

    iget v9, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->val$aStartValue:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-set0(Lcom/samsung/android/graphics/SemCosineBlurFilter;F)F

    .line 215
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v7

    const/high16 v8, 0x437a0000    # 250.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 216
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    const/high16 v8, 0x437a0000    # 250.0f

    invoke-static {v7, v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-set0(Lcom/samsung/android/graphics/SemCosineBlurFilter;F)F

    .line 220
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v7

    const/high16 v8, 0x42700000    # 60.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 221
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {v7, v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-set0(Lcom/samsung/android/graphics/SemCosineBlurFilter;F)F

    .line 223
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    .line 224
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data1:[F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 225
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data2:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 226
    return-void

    .line 217
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 218
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-set0(Lcom/samsung/android/graphics/SemCosineBlurFilter;F)F

    goto :goto_0

    .line 229
    :cond_4
    const v3, 0x402df854    # (float)Math.E

    .line 232
    .local v3, "e":F
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    div-float v0, v8, v7

    .line 233
    .local v0, "coeff1":F
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v7

    .line 230
    const v8, 0x40490fdb    # (float)Math.PI

    .line 233
    div-float v1, v8, v7

    .line 235
    .local v1, "coeff2":F
    const/4 v5, 0x0

    .line 237
    .local v5, "normalizeFactor":F
    const/16 v7, 0x80

    new-array v2, v7, [F

    .line 239
    .local v2, "data":[F
    const/4 v6, 0x0

    .local v6, "r":I
    :goto_1
    int-to-float v7, v6

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_6

    .line 240
    int-to-float v4, v6

    .line 241
    .local v4, "floatR":F
    float-to-double v8, v0

    mul-float v7, v1, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v0

    aput v7, v2, v6

    .line 242
    if-lez v6, :cond_5

    .line 243
    aget v7, v2, v6

    add-float/2addr v5, v7

    .line 239
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 247
    .end local v4    # "floatR":F
    :cond_6
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    .line 248
    const/4 v7, 0x0

    aget v7, v2, v7

    add-float/2addr v5, v7

    .line 250
    const/4 v6, 0x0

    :goto_2
    int-to-float v7, v6

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    .line 251
    aget v7, v2, v6

    div-float/2addr v7, v5

    aput v7, v2, v6

    .line 250
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 254
    :cond_7
    const/4 v6, 0x0

    :goto_3
    int-to-float v7, v6

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_8

    .line 255
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data1:[F

    aget v8, v2, v6

    aput v8, v7, v6

    .line 256
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data2:[F

    int-to-float v8, v6

    aput v8, v7, v6

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 261
    :cond_8
    sget-boolean v7, Lcom/samsung/android/graphics/SemCosineBlurFilter;->sLogingEnabled:Z

    if-eqz v7, :cond_9

    .line 262
    const-string/jumbo v7, "HWUIIF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SemCosineBlurFilter animateRadius mRadius = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v9}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string/jumbo v7, "HWUIIF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SemCosineBlurFilter animateRadius STEP_COUNT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v9}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->params1:[F

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 267
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->params2:[F

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    invoke-static {v8}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->-get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 268
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    iget-object v7, v7, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->params1:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 269
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    iget-object v7, v7, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->params2:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x2

    aput v8, v7, v9

    .line 270
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data1:[F

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    iget-object v8, v8, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    iget-object v9, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data1:[F

    array-length v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v10, v8, v11, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 271
    iget-object v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data2:[F

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemCosineBlurFilter;

    iget-object v8, v8, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    iget-object v9, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data2:[F

    array-length v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v10, v8, v11, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 272
    const-string/jumbo v7, "filterParams"

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->params1:[F

    const/4 v9, 0x0

    invoke-virtual {p2, v7, v8, v9}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 273
    const-string/jumbo v7, "filterParams"

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->params2:[F

    const/4 v9, 0x2

    invoke-virtual {p2, v7, v8, v9}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 274
    const-string/jumbo v7, "filterData01"

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data1:[F

    const/4 v9, 0x0

    invoke-virtual {p2, v7, v8, v9}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 275
    const-string/jumbo v7, "filterData02"

    iget-object v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;->data2:[F

    const/4 v9, 0x0

    invoke-virtual {p2, v7, v8, v9}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 208
    return-void
.end method
