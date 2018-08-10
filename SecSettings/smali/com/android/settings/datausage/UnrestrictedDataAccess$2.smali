.class Lcom/android/settings/datausage/UnrestrictedDataAccess$2;
.super Landroid/os/Handler;
.source "UnrestrictedDataAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x2c

    const/16 v3, 0x2b

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-virtual {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get7(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get5(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get7(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get5(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get6(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get5(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get6(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get5(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_7
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AllowUnrestrictedDataUsage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
