.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "GoogleSubtitlesOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitlesState"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap13(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->performClick()Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitlesState"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "GoogleSubtitlesOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitlesState"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->performClick()Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitlesState"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->performClick()Z

    :cond_7
    const-string/jumbo v5, "LanguageSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/accessibility/LocalePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageName"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/accessibility/LocalePreference;->performClick()V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageName"

    const-string/jumbo v7, "State"

    const-string/jumbo v8, "Off"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/accessibility/LocalePreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v5, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getLanguageItemFromList(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageName"

    const-string/jumbo v7, "Valid"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/accessibility/LocalePreference;->performClick()V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/accessibility/LocalePreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageName"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitlesLanguageLanguageName"

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/accessibility/LocalePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_c
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageName"

    const-string/jumbo v7, "Valid"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitlesLanguageLanguageName"

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/accessibility/LocalePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "TextSizeMaxSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "TextSizeMinSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "TextSizeIncreaseSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "TextSizeDecreaseSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "TextSizeSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap11(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    goto/16 :goto_0

    :cond_10
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap3(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap8(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap9(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap10(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap7(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap6(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap2(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap5(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->-wrap4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    goto/16 :goto_0
.end method
