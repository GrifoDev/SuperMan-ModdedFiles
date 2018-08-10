.class Lcom/android/systemui/qs/tiles/HotspotTile$3;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;->showWifiSharingSelectDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x4d

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "feature"

    const-string/jumbo v5, "MHWS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v8, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "wifi_ap_wifi_sharing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get5(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "ON"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "provider value after ok button "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v7, "wifi_ap_wifi_sharing"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get12(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    if-ne p2, v8, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap1(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get5(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->getMetricsCategory()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$enable:Z

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get6(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$enable:Z

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "wifi_ap_wifi_sharing"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "OFF"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in getting provider value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$enable:Z

    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap7(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    goto :goto_2
.end method
