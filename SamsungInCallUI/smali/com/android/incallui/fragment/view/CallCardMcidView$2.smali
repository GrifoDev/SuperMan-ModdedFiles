.class Lcom/android/incallui/fragment/view/CallCardMcidView$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardMcidView;->animateBlendingImage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$200(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$300(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0203d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$102(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z

    :cond_0
    return-void
.end method
