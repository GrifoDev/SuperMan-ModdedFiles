.class Lcom/android/incallui/fragment/VoiceCallCardFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForMoveInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "VoiceCallCardFragment"

    const-string v2, "animateForMoveInfo: onAnimationEnd"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-static {v1, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$002(Lcom/android/incallui/fragment/VoiceCallCardFragment;Z)Z

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_0
    return-void
.end method
