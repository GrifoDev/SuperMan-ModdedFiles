.class Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    iput-object p2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->access$200(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRadius(F)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-static {v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->access$300(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleAlpha(Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->val$animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->access$400(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
