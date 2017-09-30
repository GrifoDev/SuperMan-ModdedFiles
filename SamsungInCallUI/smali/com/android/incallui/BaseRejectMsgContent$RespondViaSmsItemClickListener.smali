.class public Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/BaseRejectMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/BaseRejectMsgContent;


# direct methods
.method public constructor <init>(Lcom/android/incallui/BaseRejectMsgContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f10022a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v0, v0, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v0, v3}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- message: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    :cond_2
    const-string v1, "support_spam_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    invoke-virtual {v1}, Lcom/android/incallui/BaseRejectMsgContent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    packed-switch p3, :pswitch_data_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v1, v1, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v1, v1, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v1, v0}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_blockNumber()V

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/BaseRejectMsgContent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PackageHelpers;->spamBlockClicked(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v0, v0, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v0, v3}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_reportNumber()V

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/BaseRejectMsgContent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PackageHelpers;->spamReportClicked(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/BaseRejectMsgContent;

    iget-object v0, v0, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    invoke-interface {v0, v3}, Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
