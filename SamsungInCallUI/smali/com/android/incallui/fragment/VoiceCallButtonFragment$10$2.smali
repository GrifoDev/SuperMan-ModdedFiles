.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$2;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "animateForOutgoingCall: end"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$2;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$2;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$800(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Landroid/view/ViewStub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    return-void
.end method
