.class Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;
.super Ljava/lang/Object;
.source "StorageDashboardFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->-get0(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "InternalStorage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->-get0(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->-get0(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->-get0(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    return-void
.end method
