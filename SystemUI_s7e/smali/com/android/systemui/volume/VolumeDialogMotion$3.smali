.class Lcom/android/systemui/volume/VolumeDialogMotion$3;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get2(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get2(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->-wrap0(Lcom/android/systemui/volume/VolumeDialogMotion;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get1(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v0

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get5(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
