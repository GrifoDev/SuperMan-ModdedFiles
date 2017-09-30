.class Lcom/android/incallui/fragment/AnswerFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/16 v4, 0x64

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContentWidth:I

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContent;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContent;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/incallui/fragment/AnswerFragment;->mRejectCallWithMsgContentWidth:I

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$5;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
