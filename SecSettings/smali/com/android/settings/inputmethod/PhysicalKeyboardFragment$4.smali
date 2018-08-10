.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ShowVirtualKeyboardOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-wrap1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get4(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ShowVirtualKeyboard"

    const-string/jumbo v5, "AlreadyON"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PhysicalKeyboard"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get3(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ShowVirtualKeyboard"

    const-string/jumbo v5, "AlreadyON"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PhysicalKeyboard"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "ShowVirtualKeyboardOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-wrap1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get4(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ShowVirtualKeyboard"

    const-string/jumbo v5, "AlreadyOFF"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PhysicalKeyboard"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get3(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ShowVirtualKeyboard"

    const-string/jumbo v5, "AlreadyOFF"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PhysicalKeyboard"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "Keyboardshortcuts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1
.end method
