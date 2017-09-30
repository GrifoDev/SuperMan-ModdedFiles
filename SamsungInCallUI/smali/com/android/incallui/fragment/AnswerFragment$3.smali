.class Lcom/android/incallui/fragment/AnswerFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerFragment;->onFinishInflate(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerFragment$3;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AnswerFragment"

    const-string v1, "onDrawerClosed"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$3;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/AnswerFragment;->access$100(Lcom/android/incallui/fragment/AnswerFragment;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$3;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$3;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment$3;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/fragment/AnswerFragment;->access$000(Lcom/android/incallui/fragment/AnswerFragment;Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$3;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->updateNavigationBar()V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :cond_1
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$3;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_closeBlockReportNumberBySlide()V

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_closeSendMessageBySlide()V

    goto :goto_0
.end method
