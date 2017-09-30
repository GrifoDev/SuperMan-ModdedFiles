.class Lcom/android/incallui/fragment/VoiceCallCardFragment$7$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/VoiceCallCardFragment$7;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7$1;->this$1:Lcom/android/incallui/fragment/VoiceCallCardFragment$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForNewOutgoingCall: onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7$1;->this$1:Lcom/android/incallui/fragment/VoiceCallCardFragment$7;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsOutgoingAnimationRunning:Z

    return-void
.end method
