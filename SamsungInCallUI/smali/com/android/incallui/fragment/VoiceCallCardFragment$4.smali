.class Lcom/android/incallui/fragment/VoiceCallCardFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldPhoto(ZLcom/android/incallui/Call;I)V
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

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    return-void
.end method
