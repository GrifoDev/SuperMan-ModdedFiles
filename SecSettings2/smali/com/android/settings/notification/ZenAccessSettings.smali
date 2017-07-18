.class public Lcom/android/settings/notification/ZenAccessSettings;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;,
        Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;,
        Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

.field private mPkgMan:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/ZenAccessSettings;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenAccessSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/ZenAccessSettings;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;-><init>(Lcom/android/settings/notification/ZenAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    return-void
.end method

.method private static deleteRules(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/ZenAccessSettings$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getEnabledNotificationListeners()Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enabled_notification_listeners"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_1

    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private hasAccess(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private reloadList()V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Landroid/app/NotificationManager;->getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getEnabledNotificationListeners()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    new-instance v10, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v11, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-direct {v10, v11}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v7, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v12}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v10, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenAccessSettings;->hasAccess(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v7, v12}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const v10, 0x7f0b1a8e

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenAccessSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v10, Lcom/android/settings/notification/ZenAccessSettings$1;

    invoke-direct {v10, p0, v6, v5}, Lcom/android/settings/notification/ZenAccessSettings$1;-><init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static setAccess(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/notification/ZenAccessSettings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xb4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_notification_listeners"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b00dc

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings;->setEmptyText(I)V

    return-void
.end method
