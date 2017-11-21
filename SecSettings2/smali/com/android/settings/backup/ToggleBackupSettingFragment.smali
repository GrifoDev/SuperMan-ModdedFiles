.class public Lcom/android/settings/backup/ToggleBackupSettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mSummaryPreference:Landroid/support/v7/preference/Preference;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mWaitingForConfirmationDialog:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/backup/ToggleBackupSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->showEraseBackupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ToggleBackupSettingFragment"

    const-string/jumbo v2, "Error communicating with BackupManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private showEraseBackupDialog()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_full_data_backup_aware"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b1736

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1737

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    invoke-direct {p0, v1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    invoke-direct {p0, v2}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    new-instance v1, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0402e7

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_full_data_backup_aware"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f0b03ba

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b172e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f0b172f

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_2
.end method
