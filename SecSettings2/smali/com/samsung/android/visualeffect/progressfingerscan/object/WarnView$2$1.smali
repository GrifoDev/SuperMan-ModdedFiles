.class Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2$1;
.super Ljava/lang/Object;
.source "WarnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2$1;->this$1:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2$1;->this$1:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2$1;->this$1:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;

    iget-object v1, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->setAnimator(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2$1;->this$1:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
