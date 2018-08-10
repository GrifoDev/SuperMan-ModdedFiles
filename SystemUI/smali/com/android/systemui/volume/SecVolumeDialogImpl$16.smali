.class Lcom/android/systemui/volume/SecVolumeDialogImpl$16;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->createCollapseExpandAnim()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v1

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
