.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
