.class Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get19(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const-string/jumbo v4, "screen_brightness_mode"

    const/4 v5, -0x2

    invoke-static {v2, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->-set9(Lcom/android/server/display/AutomaticBrightnessController;I)I

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get19(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get8(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap7(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
