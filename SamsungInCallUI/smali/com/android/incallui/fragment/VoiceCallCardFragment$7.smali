.class Lcom/android/incallui/fragment/VoiceCallCardFragment$7;
.super Ljava/lang/Object;

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
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onGlobalLayout..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$200(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->val$startPoint:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$400(Lcom/android/incallui/fragment/VoiceCallCardFragment;)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$7$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$7$1;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->animateForRevealEndCallButton()V

    goto :goto_0
.end method
