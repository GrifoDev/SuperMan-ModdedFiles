.class public Lcom/samsung/android/settings/nfc/NfcMobileCashbee;
.super Landroid/app/Fragment;
.source "NfcMobileCashbee.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcMobileCashbee$1;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private activitySwitchBar:Lcom/android/settings/SettingsActivity;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;

.field private mfilter:Landroid/content/IntentFilter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcMobileCashbee;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee$1;-><init>(Lcom/samsung/android/settings/nfc/NfcMobileCashbee;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setExplainedWord(I)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mView:Landroid/view/View;

    const v3, 0x7f1104ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v0, 0x0

    const-string/jumbo v2, "[NfcMobileCashbee]"

    const-string/jumbo v3, "setExplainedWord "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const v0, 0x7f0b1bb1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0b1bb2

    goto :goto_0
.end method

.method private setSwitch(I)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "[NfcMobileCashbee]"

    const-string/jumbo v1, "setSwitch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->activity:Landroid/app/Activity;

    const-string/jumbo v0, "[NfcMobileCashbee]"

    const-string/jumbo v1, "[S] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    const-string/jumbo v0, "[NfcMobileCashbee]"

    const-string/jumbo v1, "[E] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "[NfcMobileCashbee]"

    const-string/jumbo v1, "[S] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "[NfcMobileCashbee]"

    const-string/jumbo v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040192

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "[NfcMobileCashbee]"

    const-string/jumbo v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "[NfcMobileCashbee]"

    const-string/jumbo v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string/jumbo v1, "[NfcMobileCashbee]"

    const-string/jumbo v2, "NfcMobileCashbee onResume & registerReceiver"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mfilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mfilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->setSwitch(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->setExplainedWord(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const-string/jumbo v1, "[NfcMobileCashbee]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckedChanged ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->setExplainedWord(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcMobileCashbee;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    return-void
.end method
