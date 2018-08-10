.class public Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeDNDAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$1;,
        Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;,
        Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;
    }
.end annotation


# static fields
.field static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

.field private misDeleteMode:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Lcom/android/settings/utils/ZenServiceListing;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->removeZenRule(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const v2, 0x7f121b3d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    return-object v1

    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const v3, 0x7f122238

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object v1, v2, v5

    const v3, 0x7f122239

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const v0, 0x7f12222a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f12222b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f12222c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>()V

    const-string/jumbo v1, "ZenModeSettings"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    const-string/jumbo v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->secondarySetting:Ljava/lang/String;

    const-string/jumbo v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    const-string/jumbo v1, "condition provider"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    return-object v0
.end method

.method private static getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "android.service.zen.automatic.configurationActivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v3
.end method

.method private showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12220b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120552

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Ljava/lang/String;)V

    const v2, 0x7f122213

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private sortedRules()[Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mRules:Ljava/util/Set;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mRules:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    sget-object v1, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private updateControls()V
    .locals 15

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->sortedRules()[Ljava/util/Map$Entry;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->misDeleteMode:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    array-length v12, v8

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v7, v8, v11

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AutomaticZenRule;

    const-string/jumbo v10, "twschedule"

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v9, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;

    invoke-direct {v9, p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/support/v7/preference/Preference;)V

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/pm/ApplicationInfo;

    const/4 v13, 0x0

    aput-object v1, v10, v13

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v10

    :goto_2
    iget-object v13, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-direct {p0, v6, v10, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/notification/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$3;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$3;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)V

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/notification/RadioPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const v10, 0x7f080231

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/notification/RadioPreference;->setIcon(I)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const/4 v10, 0x0

    array-length v11, v8

    :goto_3
    if-ge v10, v11, :cond_5

    aget-object v7, v8, v10

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v4, p0, v12, v7}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V

    iget-boolean v12, v4, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    if-eqz v12, :cond_4

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0801df

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    const v10, 0x7f122206

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getView()Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$4;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$4;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8e

    return v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15014a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f12114c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f1207a4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    return v4

    :pswitch_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->misDeleteMode:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V

    return v5

    :pswitch_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->misDeleteMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/notification/RadioPreference;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/RadioPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v4, 0xaf

    invoke-static {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/RadioPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/RadioPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V

    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->misDeleteMode:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V

    return-void
.end method
