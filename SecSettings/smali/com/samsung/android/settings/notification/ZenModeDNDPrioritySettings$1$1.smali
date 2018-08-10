.class Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1$1;
.super Ljava/lang/Object;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
