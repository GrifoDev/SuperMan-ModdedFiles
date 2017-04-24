.class Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_DO_NOT_SHOW_STRAIN_POPUP:Landroid/net/Uri;

.field private final BRIGHTNESS_HBM_PMS_ENTER:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_PMS_MARKER_SCREEN:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    const-string/jumbo v0, "brightness_pms_marker_screen"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_PMS_MARKER_SCREEN:Landroid/net/Uri;

    const-string/jumbo v0, "high_brightness_mode_pms_enter"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_HBM_PMS_ENTER:Landroid/net/Uri;

    const-string/jumbo v0, "shown_max_brightness_dialog"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_DO_NOT_SHOW_STRAIN_POPUP:Landroid/net/Uri;

    const-string/jumbo v0, "display_outdoor_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/settings/BrightnessController;->-set0(Lcom/android/systemui/settings/BrightnessController;Z)Z

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v2, "StatusBar.BrightnessController"

    const-string/jumbo v4, "BRIGHTNESS_MODE_URI changed"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-wrap2(Lcom/android/systemui/settings/BrightnessController;)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-wrap4(Lcom/android/systemui/settings/BrightnessController;)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get1(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4, v3}, Lcom/android/systemui/settings/BrightnessController;->-set0(Lcom/android/systemui/settings/BrightnessController;Z)Z

    throw v2

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_PMS_MARKER_SCREEN:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v2, "StatusBar.BrightnessController"

    const-string/jumbo v4, "BRIGHTNESS_PMS_MARKER_SCREEN changed"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-wrap4(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get0(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "StatusBar.BrightnessController"

    const-string/jumbo v4, "BRIGHTNESS_URI changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-wrap4(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_HBM_PMS_ENTER:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-wrap1(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_DO_NOT_SHOW_STRAIN_POPUP:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController;->setDoNotShowStrainPopup()V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v5}, Lcom/android/systemui/settings/BrightnessController;->-get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "display_outdoor_mode"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    invoke-static {v4, v2}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    const-string/jumbo v2, "StatusBar.BrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Outdoor changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v5}, Lcom/android/systemui/settings/BrightnessController;->-get3(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get3(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/systemui/settings/BrightnessController;->-wrap3(Lcom/android/systemui/settings/BrightnessController;Z)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "StatusBar.BrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "brightness uri ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-wrap2(Lcom/android/systemui/settings/BrightnessController;)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-wrap4(Lcom/android/systemui/settings/BrightnessController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v3}, Lcom/android/systemui/settings/BrightnessController;->-set0(Lcom/android/systemui/settings/BrightnessController;Z)Z

    return-void
.end method

.method public startObserving()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_PMS_MARKER_SCREEN:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_HBM_PMS_ENTER:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_DO_NOT_SHOW_STRAIN_POPUP:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
