.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->animateForRevealEndCallButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f0202e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    return-void
.end method
