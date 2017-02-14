.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    return-void
.end method

.method public onEdit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogForModify()V

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forget()V

    return-void
.end method

.method public onSave(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->connect(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method
