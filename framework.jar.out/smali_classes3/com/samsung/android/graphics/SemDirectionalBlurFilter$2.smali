.class Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;
.super Ljava/lang/Object;
.source "SemDirectionalBlurFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->animateRadius(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:[F

.field private data1:[F

.field private data2:[F

.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;FF)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemDirectionalBlurFilter;
    .param p2, "val$aEndValue"    # F
    .param p3, "val$aStartValue"    # F

    .prologue
    const/16 v1, 0x40

    .line 230
    iput-object p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->params:[F

    .line 232
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data1:[F

    .line 233
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data2:[F

    .line 234
    const/16 v0, 0x80

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data:[F

    .line 230
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 18
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    .line 240
    sget-boolean v12, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->sLogingEnabled:Z

    if-eqz v12, :cond_0

    .line 241
    const-string/jumbo v12, "HWUIIF"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SemDirectionalBlurFilter animateRadius aFraction = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->val$aEndValue:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->val$aStartValue:F

    sub-float/2addr v13, v14

    mul-float v13, v13, p1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->val$aStartValue:F

    add-float/2addr v13, v14

    invoke-static {v12, v13}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-set1(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;F)F

    .line 246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v12}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v12

    const/high16 v13, 0x437a0000    # 250.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    const/high16 v13, 0x437a0000    # 250.0f

    invoke-static {v12, v13}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-set1(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;F)F

    .line 251
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v12}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v13}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get1(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v6, v12

    .line 252
    .local v6, "interFactor":I
    const/4 v9, 0x0

    .line 254
    .local v9, "power":F
    const/16 v12, 0x40

    if-le v6, v12, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v12}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v12

    int-to-float v13, v6

    div-float v9, v12, v13

    .line 256
    const/16 v6, 0x40

    .line 264
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v12}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_5

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data1:[F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    aput v13, v12, v14

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data2:[F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v12, v14

    .line 267
    return-void

    .line 248
    .end local v6    # "interFactor":I
    .end local v9    # "power":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v12}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-set1(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;F)F

    goto :goto_0

    .line 257
    .restart local v6    # "interFactor":I
    .restart local v9    # "power":F
    :cond_3
    const/4 v12, 0x1

    if-ge v6, v12, :cond_4

    .line 258
    const/high16 v9, 0x3f800000    # 1.0f

    .line 259
    const/4 v6, 0x1

    goto :goto_1

    .line 261
    :cond_4
    const v9, 0x3fd6c12b

    goto :goto_1

    .line 270
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v12}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v12

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    const v13, 0x3f19999a    # 0.6f

    add-float v11, v12, v13

    .line 271
    .local v11, "sigma":F
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    double-to-float v2, v12

    .line 272
    .local v2, "coeff1":F
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v11

    mul-float/2addr v12, v11

    const/high16 v13, -0x40800000    # -1.0f

    div-float v3, v13, v12

    .line 273
    .local v3, "coeff2":F
    const/4 v8, 0x0

    .line 274
    .local v8, "normalizeFactor":F
    const/16 v12, 0x80

    new-array v4, v12, [F

    .line 275
    .local v4, "data":[F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v12}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v12

    int-to-float v13, v6

    div-float v7, v12, v13

    .line 276
    .local v7, "interpalationStep":F
    const/4 v10, 0x0

    .line 278
    .local v10, "r":F
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_6

    .line 279
    float-to-double v12, v2

    mul-float v14, v10, v10

    mul-float/2addr v14, v3

    float-to-double v14, v14

    const-wide v16, 0x4005bf0a8b145769L    # Math.E

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v9

    mul-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v4, v5

    .line 280
    aget v12, v4, v5

    add-float/2addr v8, v12

    .line 281
    add-float/2addr v10, v7

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 284
    :cond_6
    mul-float v12, v2, v9

    const/4 v13, 0x0

    aput v12, v4, v13

    .line 285
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    .line 286
    const/4 v12, 0x0

    aget v12, v4, v12

    add-float/2addr v8, v12

    .line 288
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_7

    .line 289
    aget v12, v4, v5

    div-float/2addr v12, v8

    aput v12, v4, v5

    .line 288
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 292
    :cond_7
    const/4 v10, 0x0

    .line 294
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_8

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data1:[F

    aget v13, v4, v5

    aput v13, v12, v5

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data2:[F

    aput v10, v12, v5

    .line 297
    add-float/2addr v10, v7

    .line 294
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 300
    :cond_8
    sget-boolean v12, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->sLogingEnabled:Z

    if-eqz v12, :cond_9

    .line 301
    const-string/jumbo v12, "HWUIIF"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SemDirectionalBlurFilter animateRadius mRadius = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v14}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string/jumbo v12, "HWUIIF"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SemDirectionalBlurFilter animateRadius interpalationStep = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string/jumbo v12, "HWUIIF"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SemDirectionalBlurFilter animateRadius interFactor = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->params:[F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    invoke-static {v13}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->-get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->params:[F

    const/4 v13, 0x1

    aput v7, v12, v13

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->params:[F

    int-to-float v13, v6

    const/4 v14, 0x2

    aput v13, v12, v14

    .line 309
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->params:[F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    iget-object v13, v13, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->params:[F

    array-length v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v15, v13, v0, v14}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data1:[F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    iget-object v13, v13, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data1:[F

    array-length v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v15, v13, v0, v14}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data2:[F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurFilter;

    iget-object v13, v13, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data2:[F

    array-length v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v15, v13, v0, v14}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 312
    const-string/jumbo v12, "filterParams"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->params:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 313
    const-string/jumbo v12, "filterData01"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data1:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 314
    const-string/jumbo v12, "filterData02"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;->data2:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 239
    return-void
.end method
