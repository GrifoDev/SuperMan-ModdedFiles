.class Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$1;
.super Ljava/lang/Object;
.source "WarnView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->internalInitialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-static {v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->onUpdate(IF)V

    return-void
.end method
