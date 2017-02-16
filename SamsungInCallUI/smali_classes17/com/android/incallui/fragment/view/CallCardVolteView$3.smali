.class Lcom/android/incallui/fragment/view/CallCardVolteView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardVolteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardVolteView;->animateEpdgNotifyInfoForAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/view/CallCardVolteView;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$400(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 564
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mEpdgNotifyInfoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$400(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mShowEpdgNotifyBanner:Z
    invoke-static {v0, v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$502(Lcom/android/incallui/fragment/view/CallCardVolteView;Z)Z

    .line 566
    return-void
.end method
