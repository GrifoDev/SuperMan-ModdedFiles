.class public Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsForSetupWizard.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

.field private mScreenReaderPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private findFirstServiceWithSpokenFeedback()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v4, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    return-object v1

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private updateScreenReaderPreference()V
    .locals 8

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findFirstServiceWithSpokenFeedback()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_0
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v6, "component_name"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v6, "preference_key"

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "title"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0b1637

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v6, "summary"

    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x16f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "screen_magnification_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "screen_reader_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "title"

    const v4, 0x7f0b15f2

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "summary"

    const v4, 0x7f0b15f4

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->updateScreenReaderPreference()V

    return-void
.end method
