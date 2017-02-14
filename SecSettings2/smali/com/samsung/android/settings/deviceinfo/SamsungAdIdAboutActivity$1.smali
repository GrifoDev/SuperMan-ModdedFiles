.class Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;
.super Ljava/lang/Object;
.source "SamsungAdIdAboutActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void
.end method
