.class Lcom/android/systemui/servicebox/utils/SecTransition$2;
.super Ljava/lang/Object;
.source "SecTransition.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/utils/SecTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/utils/SecTransition;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get1(Lcom/android/systemui/servicebox/utils/SecTransition;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animation state isn\'t none "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get0(Lcom/android/systemui/servicebox/utils/SecTransition;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->-set0(Lcom/android/systemui/servicebox/utils/SecTransition;I)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->-wrap2(Lcom/android/systemui/servicebox/utils/SecTransition;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get5(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get3(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnAll(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->-wrap0(Lcom/android/systemui/servicebox/utils/SecTransition;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->-wrap1(Lcom/android/systemui/servicebox/utils/SecTransition;Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get4(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get4(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get2(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->-set0(Lcom/android/systemui/servicebox/utils/SecTransition;I)I

    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animation started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition$2;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get0(Lcom/android/systemui/servicebox/utils/SecTransition;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
