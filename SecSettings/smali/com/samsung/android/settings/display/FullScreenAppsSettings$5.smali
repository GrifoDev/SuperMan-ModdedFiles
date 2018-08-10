.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;
.super Ljava/lang/Object;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FullScreenAppsOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "FullScreenAppsOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
