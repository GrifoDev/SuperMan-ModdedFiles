.class Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whitepages/nameid/e$a;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/incallui/Call;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/whitepages/nameid/e$a;


# direct methods
.method constructor <init>(Lcom/whitepages/nameid/e$a;Landroid/os/Handler;Lcom/android/incallui/Call;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    iput-object p3, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->a:Lcom/android/incallui/Call;

    iput-object p4, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

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

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v2}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;Ljava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v1}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;Lcom/android/incallui/CallerInfo;)V

    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v0}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->a:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whitepages/nameid/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v0}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v1}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v0}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v0}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v1}, Lcom/whitepages/nameid/e$a;->a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v3}, Lcom/whitepages/nameid/e$a;->b(Lcom/whitepages/nameid/e$a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v0}, Lcom/whitepages/nameid/e$a;->b(Lcom/whitepages/nameid/e$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->a:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;->c:Lcom/whitepages/nameid/e$a;

    invoke-static {v2}, Lcom/whitepages/nameid/e$a;->c(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
