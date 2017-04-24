.class public Lcom/android/settings/applications/DefaultPhonePreference;
.super Lcom/android/settings/AppListPreference;
.source "DefaultPhonePreference.java"

# interfaces
.implements Lcom/android/settings/SelfAvailablePreference;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultPhonePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0b03ab

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultPhonePreference;->setResDescription(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultPhonePreference;->loadDialerApps()V

    return-void
.end method

.method private getDefaultPackage()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultPhonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/DefaultPhonePreference;->mUserId:I

    invoke-static {v0, v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSystemPackage()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultPhonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string/jumbo v3, "no_outgoing_calls"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadDialerApps()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultPhonePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/applications/DefaultPhonePreference;->mUserId:I

    invoke-static {v3, v4}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultPhonePreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultPhonePreference;->getSystemPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/settings/applications/DefaultPhonePreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultPhonePreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/DefaultPhonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
