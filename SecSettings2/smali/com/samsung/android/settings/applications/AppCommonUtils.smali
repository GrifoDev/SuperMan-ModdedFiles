.class public Lcom/samsung/android/settings/applications/AppCommonUtils;
.super Ljava/lang/Object;
.source "AppCommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlayTitle()I
    .locals 2

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b038a

    return v0

    :cond_0
    const v0, 0x7f0b1aa3

    return v0
.end method

.method public static getWriteSettingsTitle()I
    .locals 2

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b038b

    return v0

    :cond_0
    const v0, 0x7f0b1aad    # 1.849012E38f

    return v0
.end method

.method public static hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string/jumbo v4, "getDefaultApplicationInternal"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p0, v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static updateDefaultBrowserPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultBrowserPreference;)V
    .locals 7

    const v6, 0x7f0b0166

    const/4 v4, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "http:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {p2, v4}, Lcom/android/settings/applications/DefaultBrowserPreference;->setEnabled(Z)V

    return-void

    :cond_1
    invoke-virtual {p2, v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(I)V

    const-string/jumbo v5, "AppCommonUtils"

    const-string/jumbo v6, "Cannot set empty default Browser value!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V
    .locals 6

    const/4 v4, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    instance-of v3, p2, Lcom/android/settings/applications/DefaultHomePreference;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/android/settings/applications/DefaultHomePreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultHomePreference;->refreshHomeOptions()V

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    invoke-virtual {p1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_2

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/high16 v3, 0x10000

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static updateDefaultPhonePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultPhonePreference;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultPhonePreference;->loadDialerApps()V

    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultPhonePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "tel:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultPhonePreference;->setEnabled(Z)V

    const/high16 v3, 0x10000

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/DefaultPhonePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    const v3, 0x7f0b0166

    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultPhonePreference;->setSummary(I)V

    const-string/jumbo v3, "AppCommonUtils"

    const-string/jumbo v4, "Cannot set empty default Phone value!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateDefaultSMSPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultSmsPreference;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultSmsPreference;->loadSmsApps()V

    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultSmsPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const v2, 0x7f0b0166

    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
