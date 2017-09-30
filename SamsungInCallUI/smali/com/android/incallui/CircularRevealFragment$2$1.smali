.class Lcom/android/incallui/CircularRevealFragment$2$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CircularRevealFragment$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CircularRevealFragment$2;


# direct methods
.method constructor <init>(Lcom/android/incallui/CircularRevealFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CircularRevealFragment$2$1;->this$1:Lcom/android/incallui/CircularRevealFragment$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CircularRevealFragment$2$1;->this$1:Lcom/android/incallui/CircularRevealFragment$2;

    iget-object v0, v0, Lcom/android/incallui/CircularRevealFragment$2;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/incallui/CircularRevealFragment$2$1;->this$1:Lcom/android/incallui/CircularRevealFragment$2;

    iget-object v0, v0, Lcom/android/incallui/CircularRevealFragment$2;->this$0:Lcom/android/incallui/CircularRevealFragment;

    invoke-static {v0}, Lcom/android/incallui/CircularRevealFragment;->access$200(Lcom/android/incallui/CircularRevealFragment;)Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CircularRevealFragment$2$1;->this$1:Lcom/android/incallui/CircularRevealFragment$2;

    iget-object v0, v0, Lcom/android/incallui/CircularRevealFragment$2;->this$0:Lcom/android/incallui/CircularRevealFragment;

    invoke-static {v0}, Lcom/android/incallui/CircularRevealFragment;->access$200(Lcom/android/incallui/CircularRevealFragment;)Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CircularRevealFragment$2$1;->this$1:Lcom/android/incallui/CircularRevealFragment$2;

    iget-object v1, v1, Lcom/android/incallui/CircularRevealFragment$2;->this$0:Lcom/android/incallui/CircularRevealFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CircularRevealFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;->onCircularRevealComplete(Landroid/app/FragmentManager;)V

    :cond_0
    return-void
.end method
