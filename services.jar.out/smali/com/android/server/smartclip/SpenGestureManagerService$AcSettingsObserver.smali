.class Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AcSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private isFloatingIconEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "air_cmd_use_minimized"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method observe()V
    .locals 3

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->isFloatingIconEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap8(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    const-string/jumbo v1, "air_cmd_use_minimized"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->isFloatingIconEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap8(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    return-void
.end method
