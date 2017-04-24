.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;
.super Ljava/lang/Object;
.source "VoiceCallButtonFragment.java"

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
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
