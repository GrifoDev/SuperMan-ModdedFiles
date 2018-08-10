.class Lcom/android/settings/deviceinfo/StorageSettings$4;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "InternalStorage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/SettingsActivity;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageSettings;->-set0(Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v4, "private"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, ":settings:prefs"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    const-class v4, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f121a7c

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/android/settings/deviceinfo/StorageSettings;->-wrap2(Lcom/android/settings/deviceinfo/StorageSettings;Ljava/lang/String;IILandroid/os/Bundle;)V

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/Settings$StorageDashboardActivity;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4
    return-void
.end method
