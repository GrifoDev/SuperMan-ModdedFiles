.class Lcom/android/incallui/fragment/AnswerFragment$16;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerFragment;->animateHideForMaskPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/AnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerFragment$16;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$16;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$16;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$16;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$16;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment$16;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/AnswerFragment;->access$300(Lcom/android/incallui/fragment/AnswerFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
