.class Lcom/android/settings/applications/AppLaunchSettings$1;
.super Ljava/lang/Object;
.source "AppLaunchSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppLaunchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppLaunchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppLaunchSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get1(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ApplicationInfoSetAsDefaultClearDefaults"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get0(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/android/settings/applications/ClearDefaultsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->getmActivitiesButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get1(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get1(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ClearDefaults"

    const-string/jumbo v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get1(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ApplicationInfoSetAsDefault"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get0(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/android/settings/applications/ClearDefaultsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->getmActivitiesButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get1(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get1(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ClearDefaults"

    const-string/jumbo v3, "Valid"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get1(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ApplicationInfoSetAsDefault"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->-get1(Lcom/android/settings/applications/AppLaunchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
