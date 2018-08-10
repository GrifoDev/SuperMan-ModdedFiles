.class Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "SeslMaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

.field final synthetic val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 13

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget-boolean v10, v10, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mFinishing:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getMinProgressArc(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)F

    move-result v3

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v7

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10, p1, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->updateRingColor(FLcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)V

    const v10, 0x3ecccccd    # 0.4f

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_0

    const v10, 0x3ecccccd    # 0.4f

    div-float v5, p1, v10

    const v10, 0x3f4ccccd    # 0.8f

    sub-float/2addr v10, v3

    sget-object v11, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setStartTrim(F)V

    :cond_0
    const v10, 0x3ecccccd    # 0.4f

    cmpl-float v10, p1, v10

    if-lez v10, :cond_1

    const v10, 0x3f4ccccd    # 0.8f

    sub-float v2, v10, v3

    const v10, 0x3ecccccd    # 0.4f

    sub-float v10, p1, v10

    const v11, 0x3f19999a    # 0.6f

    div-float v5, v10, v11

    sget-object v10, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v10, v2

    add-float v0, v7, v10

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setEndTrim(F)V

    :cond_1
    sget-object v10, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v10, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v10, v11

    add-float v4, v8, v10

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setRotation(F)V

    const/high16 v10, 0x44070000    # 540.0f

    mul-float/2addr v10, p1

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget v11, v11, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRotationCount:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x44870000    # 1080.0f

    mul-float/2addr v11, v12

    add-float v1, v10, v11

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v10, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setRotation(F)V

    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v10, p1, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->applyFinishTranslation(FLcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)V

    goto :goto_0
.end method
