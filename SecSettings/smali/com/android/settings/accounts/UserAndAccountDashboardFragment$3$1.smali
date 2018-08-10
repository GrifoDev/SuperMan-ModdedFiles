.class Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;
.super Ljava/lang/Object;
.source "UserAndAccountDashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

.field final synthetic val$finalEnableAutoSync:Z

.field final synthetic val$stateId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    iput-boolean p2, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->val$finalEnableAutoSync:Z

    iput-object p3, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->val$stateId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    iget-object v1, v1, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    const-string/jumbo v2, "auto_sync_account_data"

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->val$finalEnableAutoSync:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    iget-object v1, v1, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->val$stateId:Ljava/lang/String;

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    iget-object v1, v1, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Account"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    iget-object v1, v1, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    iget-object v1, v1, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->val$stateId:Ljava/lang/String;

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    iget-object v1, v1, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Account"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;->this$1:Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;

    iget-object v1, v1, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
