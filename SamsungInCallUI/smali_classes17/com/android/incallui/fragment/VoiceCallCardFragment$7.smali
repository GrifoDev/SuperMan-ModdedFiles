.class Lcom/android/incallui/fragment/VoiceCallCardFragment$7;
.super Ljava/lang/Object;
.source "VoiceCallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForNewOutgoingCall(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

.field final synthetic val$startPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->val$startPoint:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v4, "VoiceCallCardFragment"

    const-string v5, "onGlobalLayout..."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$200(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->val$startPoint:Landroid/graphics/Point;

    invoke-static {v4, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$400(Lcom/android/incallui/fragment/VoiceCallCardFragment;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v4, v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v4, v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/fragment/VoiceCallCardFragment$7$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$7$1;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment$7;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v4, v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/CallButtonUi;->animateForRevealEndCallButton()V

    goto :goto_0
.end method
