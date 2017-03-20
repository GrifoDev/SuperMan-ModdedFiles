.class Lcom/android/incallui/fragment/view/CallCardMcidView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardMcidView.java"


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
    .param p1, "this$0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 423
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$200(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtnImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$300(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02031d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    const/4 v1, 0x1

    # setter for: Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z
    invoke-static {v0, v1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$102(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z

    .line 427
    :cond_0
    return-void
.end method
