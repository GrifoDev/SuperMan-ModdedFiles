.class Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;
.super Landroid/os/ResultReceiver;
.source "InCallUIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;Landroid/os/Handler;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "this$0"    # Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    iput-object p3, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got result from service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v1}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    # invokes: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->handleQueryComplete(Lcom/android/incallui/CallerInfo;)V
    invoke-static {v0, v1}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$400(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;Lcom/android/incallui/CallerInfo;)V

    .line 104
    :goto_1
    return-void

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v1}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    # invokes: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->clearContactInfo(Lcom/android/incallui/CallerInfo;)V
    invoke-static {v0, v1}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$100(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;Lcom/android/incallui/CallerInfo;)V

    .line 88
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v0}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->beautifyCnapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v0}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v1}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v0}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v0}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v1}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    .line 92
    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$200(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$200(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->val$call:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->this$0:Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    # getter for: Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    invoke-static {v2}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->access$300(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    goto :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
