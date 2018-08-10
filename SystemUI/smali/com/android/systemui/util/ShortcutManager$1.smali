.class Lcom/android/systemui/util/ShortcutManager$1;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 4

    const-string/jumbo v1, "lock_application_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "set_shortcuts_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/util/ShortcutManager;->-get3(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/ShortcutManager;->-set1(Lcom/android/systemui/util/ShortcutManager;Z)Z

    const-string/jumbo v1, "ShortcutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSystemSettingsChanged oldShortcutVisibleForMDM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mShortcutVisibleForMDM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->-get3(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/util/ShortcutManager;->-get3(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "current_sec_appicon_theme_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    goto :goto_0
.end method
