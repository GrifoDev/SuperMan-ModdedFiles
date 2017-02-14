.class public Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SamsungLegalInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f0800cf

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TFN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "warranty"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "end_user_license_agreement"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string/jumbo v3, "end_user_license_agreement"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v3, "VZW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.app.setupwizard.EULA_NOTITLE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.app.SecSetupWizard.SamsungLegal"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
