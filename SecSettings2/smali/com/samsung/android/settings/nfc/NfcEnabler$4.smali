.class Lcom/samsung/android/settings/nfc/NfcEnabler$4;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field final synthetic val$alertType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->val$alertType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->val$alertType:Ljava/lang/String;

    const-string/jumbo v1, "NfcSettingsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get6(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get6(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get6(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get4(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get4(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get4(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->val$alertType:Ljava/lang/String;

    const-string/jumbo v1, "AndroidBeamOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->val$alertType:Ljava/lang/String;

    const-string/jumbo v1, "RwOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get5(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method
