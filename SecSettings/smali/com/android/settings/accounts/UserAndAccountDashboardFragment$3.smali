.class Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;
.super Ljava/lang/Object;
.source "UserAndAccountDashboardFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/UserAndAccountDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 12

    const-wide/16 v10, 0x64

    iget-object v6, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v6}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UserAndAccountDashboard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    const-class v7, Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v6, v7}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-wrap0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;Ljava/lang/Class;)Lcom/android/settings/core/PreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountPreferenceController;->getProfileData()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    const-string/jumbo v6, "UserAndAccountDashboard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mEmCallback: enableAutoSync = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v2

    const-string/jumbo v6, "AutoSyncOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-virtual {v6}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;

    invoke-direct {v7, p0, v3, v5}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$1;-><init>(Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;ZLjava/lang/String;)V

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v6, "AutoSyncOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-virtual {v6}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$2;

    invoke-direct {v7, p0, v3, v5}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3$2;-><init>(Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;ZLjava/lang/String;)V

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "AddAccount"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountPreferenceController;->getProfileData()Landroid/util/SparseArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    if-eqz v4, :cond_5

    iget-object v6, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v6}, Lcom/android/settings/DimmableIconPreference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v6}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v6}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v6}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/settings/accounts/UserAndAccountDashboardFragment$3;->this$0:Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-static {v6}, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;->-get0(Lcom/android/settings/accounts/UserAndAccountDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
