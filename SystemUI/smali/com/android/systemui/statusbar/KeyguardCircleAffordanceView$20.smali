.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

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

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    return-void
.end method
