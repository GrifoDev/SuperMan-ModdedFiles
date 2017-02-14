.class Lcom/android/server/wifioffload/WifiOffloadService$3;
.super Landroid/database/ContentObserver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v3}, Lcom/android/server/wifioffload/WifiOffloadService;->-get0(Lcom/android/server/wifioffload/WifiOffloadService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    invoke-static {v4, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->-set0(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-get0(Lcom/android/server/wifioffload/WifiOffloadService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_offload_network_notify"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-static {v3, v1}, Lcom/android/server/wifioffload/WifiOffloadService;->-set3(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const-string/jumbo v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in getting \'AirplaneMode\' setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
