.class Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;
.super Ljava/lang/Object;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LeftShortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get1(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "RightShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0
.end method
