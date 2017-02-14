.class Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;
.super Ljava/lang/Object;
.source "BluetoothDualPlaySettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualPlayModeEnabler"
.end annotation


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->onSwitchStateChange(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "pause :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "resume :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "setChecked :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "setupSwitchBar :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public teardownSwitchBar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "teardownSwitchBar :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
