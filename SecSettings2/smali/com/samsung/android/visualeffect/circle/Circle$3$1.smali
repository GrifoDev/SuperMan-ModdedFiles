.class Lcom/samsung/android/visualeffect/circle/Circle$3$1;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/circle/Circle$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/visualeffect/circle/Circle$3;

.field final synthetic val$curProgress:F


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/Circle$3;F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/Circle$3$1;->this$1:Lcom/samsung/android/visualeffect/circle/Circle$3;

    iput p2, p0, Lcom/samsung/android/visualeffect/circle/Circle$3$1;->val$curProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle$3$1;->this$1:Lcom/samsung/android/visualeffect/circle/Circle$3;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/Circle$3;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/circle/Circle;->-get1(Lcom/samsung/android/visualeffect/circle/Circle;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/Circle$3$1;->val$curProgress:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/Circle$3$1;->this$1:Lcom/samsung/android/visualeffect/circle/Circle$3;

    iget-object v2, v2, Lcom/samsung/android/visualeffect/circle/Circle$3;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v2}, Lcom/samsung/android/visualeffect/circle/Circle;->-get2(Lcom/samsung/android/visualeffect/circle/Circle;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle$3$1;->this$1:Lcom/samsung/android/visualeffect/circle/Circle$3;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/Circle$3;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/circle/Circle;->-get1(Lcom/samsung/android/visualeffect/circle/Circle;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
