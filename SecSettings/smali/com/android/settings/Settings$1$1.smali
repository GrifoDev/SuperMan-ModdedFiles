.class Lcom/android/settings/Settings$1$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Settings$1;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/Settings$1;

.field final synthetic val$stateId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/Settings$1$1;->this$1:Lcom/android/settings/Settings$1;

    iput-object p2, p0, Lcom/android/settings/Settings$1$1;->val$stateId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/Settings$1$1;->this$1:Lcom/android/settings/Settings$1;

    iget-object v0, v0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Lcom/android/settings/Settings;->openSearchView()V

    iget-object v0, p0, Lcom/android/settings/Settings$1$1;->this$1:Lcom/android/settings/Settings$1;

    iget-object v0, v0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v0, v0, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$1$1;->this$1:Lcom/android/settings/Settings$1;

    iget-object v0, v0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v0, v0, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/Settings$1$1;->val$stateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$1$1;->this$1:Lcom/android/settings/Settings$1;

    iget-object v0, v0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v0, v0, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
