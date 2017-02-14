.class Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;
.super Ljava/lang/Object;
.source "MirrorLink.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MirrorLinkSettingOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "MirrorLinkSettingOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
