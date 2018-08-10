.class Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$7;
.super Ljava/lang/Object;
.source "KeyguardInfinityPreview.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goLockMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$7;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$7;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-get1(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->changeAlpha(F)V

    return-void
.end method
