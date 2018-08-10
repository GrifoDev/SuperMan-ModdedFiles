.class Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "SeslMaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->storeOriginals()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->goToNextColor()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setStartTrim(F)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mFinishing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRotationCount:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    rem-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRotationCount:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mFinishing:Z

    const-wide/16 v0, 0x693

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->val$ring:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRotationCount:F

    return-void
.end method
