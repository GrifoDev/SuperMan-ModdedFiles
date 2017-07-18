.class Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-static {v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-static {v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setPercent(F)V

    return-void
.end method
