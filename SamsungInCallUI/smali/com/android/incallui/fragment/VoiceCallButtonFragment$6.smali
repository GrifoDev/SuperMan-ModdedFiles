.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;->animateForManager(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method
