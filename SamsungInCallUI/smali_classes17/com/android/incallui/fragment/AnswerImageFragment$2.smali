.class Lcom/android/incallui/fragment/AnswerImageFragment$2;
.super Ljava/lang/Object;
.source "AnswerImageFragment.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/AnswerImageFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerImageFragment$2;->this$0:Lcom/android/incallui/fragment/AnswerImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AnswerImageFragment"

    const-string v1, "onDrawerClosed"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment$2;->this$0:Lcom/android/incallui/fragment/AnswerImageFragment;

    # invokes: Lcom/android/incallui/fragment/AnswerImageFragment;->animateHideForMaskPanel()V
    invoke-static {v0}, Lcom/android/incallui/fragment/AnswerImageFragment;->access$100(Lcom/android/incallui/fragment/AnswerImageFragment;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment$2;->this$0:Lcom/android/incallui/fragment/AnswerImageFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerImageFragment$2;->this$0:Lcom/android/incallui/fragment/AnswerImageFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerImageFragment$2;->this$0:Lcom/android/incallui/fragment/AnswerImageFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/incallui/fragment/AnswerImageFragment;->setDescriptionToHandle(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/fragment/AnswerImageFragment;->access$000(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
