.class Lcom/android/server/aod/AODManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAODModeUri:Landroid/net/Uri;

.field private final mAODShowStateUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "aod_show_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    const-string/jumbo v0, "aod_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODModeUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get10(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "aod_night_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-wrap36(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService;->updateBatteryStats()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get13(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODModeUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get13(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get9(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/settings/AODSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->getAODEnableSettings()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-wrap21(Lcom/android/server/aod/AODManagerService;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-wrap36(Lcom/android/server/aod/AODManagerService;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-wrap31(Lcom/android/server/aod/AODManagerService;)V

    goto :goto_1
.end method
