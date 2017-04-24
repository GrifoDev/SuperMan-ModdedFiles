.class public abstract Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDeleting:Z

.field protected mDisableListeners:Z

.field private mEnabledToast:Landroid/widget/Toast;

.field protected mId:Ljava/lang/String;

.field protected mRule:Landroid/app/AutomaticZenRule;

.field private mRuleName:Landroid/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mZenMode:Lcom/android/settings/SecDropDownPreference;


# direct methods
.method static synthetic -set0(Lcom/android/settings/notification/ZenModeRuleSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDeleting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->showRuleNameDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private getZenRule()Landroid/app/AutomaticZenRule;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method

.method private refreshRuleOrFinish()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getZenRule()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private showDeleteRuleDialog()V
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0b1988

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b10f5

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase$4;-><init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V

    const v4, 0x7f0b1989

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    :cond_0
    return-void
.end method

.method private showRuleNameDialog()V
    .locals 3

    new-instance v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;-><init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->show()V

    return-void
.end method

.method private toastAndFinish()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDeleting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0b199a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateRuleName()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControlsInternal()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/settings/SecDropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    return-void
.end method

.method private updateRuleName()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected abstract getEnabledToastText()I
.end method

.method protected abstract getZenModeDependency()Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-boolean v2, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate getIntent()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v2, "ZenModeSettings"

    const-string/jumbo v3, "No intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    return-void

    :cond_1
    const-string/jumbo v2, "android.service.notification.extra.RULE_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    sget-boolean v2, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onCreateInternal()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "rule_name"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/preference/Preference;

    new-instance v3, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;-><init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v2, "zen_mode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SecDropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/settings/SecDropDownPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/settings/SecDropDownPreference;

    new-array v3, v7, [Ljava/lang/CharSequence;

    const v4, 0x7f0b1946

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f0b1947

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b1948

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/settings/SecDropDownPreference;

    new-array v3, v7, [Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/settings/SecDropDownPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;-><init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/settings/SecDropDownPreference;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getZenModeDependency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setDependency(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    const-string/jumbo v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f140014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOptionsItemSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1106dd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v1, 0xae

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->showDeleteRuleDialog()V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControls()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    move v0, p2

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-ne p2, v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v3, 0xb0

    invoke-static {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    sget-boolean v2, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChanged enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2, p2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getEnabledToastText()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_0
.end method

.method protected onZenModeChanged()V
    .locals 0

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControls()V

    :cond_0
    return-void
.end method

.method protected abstract setRule(Landroid/app/AutomaticZenRule;)Z
.end method

.method protected abstract updateControlsInternal()V
.end method

.method protected updateRule(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
