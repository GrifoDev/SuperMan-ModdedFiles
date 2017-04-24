.class Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothSwitchType"
.end annotation


# instance fields
.field private mSwitchObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSwitchObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const-string/jumbo v0, "BluetoothEnabler"

    const-string/jumbo v1, "onPreferenceChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChange(Z)Z

    move-result v0

    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    const-string/jumbo v0, "BluetoothEnabler"

    const-string/jumbo v1, "onSwitchChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChange(Z)Z

    return-void
.end method

.method public removeChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setBluetoothSummary()V

    :cond_0
    return-void
.end method

.method public setBluetoothSummary()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v8, v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_5

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get3(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v4

    const/16 v8, 0xb

    if-eq v4, v8, :cond_0

    const/16 v8, 0xc

    if-ne v4, v8, :cond_7

    :cond_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get3(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get3(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectedDeviceList()Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    if-eqz v3, :cond_1

    const-string/jumbo v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get0(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPrefixName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v8, Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v8, Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :cond_6
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get1(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b19ca

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_7
    const/16 v8, 0xd

    if-eq v4, v8, :cond_8

    const/16 v8, 0xa

    if-ne v4, v8, :cond_4

    :cond_8
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get1(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b1088

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v8, Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_3
.end method

.method public setChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get4(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_1
    return-void
.end method
