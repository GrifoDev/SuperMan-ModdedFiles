.class Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$3;
.super Ljava/lang/Object;
.source "Finger.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$3;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$3;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->access$402(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$3;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$3;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->access$400(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setAlpha(F)V

    return-void
.end method
