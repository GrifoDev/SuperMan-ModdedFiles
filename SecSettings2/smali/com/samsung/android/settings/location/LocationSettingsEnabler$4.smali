.class Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;
.super Ljava/lang/Object;
.source "LocationSettingsEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_enable"

    invoke-static {v1, v2, v3}, Lcom/android/settings/VoWiFiCallingDBManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "wifi_call_enable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
