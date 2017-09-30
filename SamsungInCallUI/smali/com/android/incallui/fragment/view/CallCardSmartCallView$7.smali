.class Lcom/android/incallui/fragment/view/CallCardSmartCallView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$7;->this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$7;->this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->access$000(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$7;->this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->access$000(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
