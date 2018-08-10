.class Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;
.super Landroid/support/v7/preference/Preference;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenRulePreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference$1;
    }
.end annotation


# instance fields
.field final appExists:Z

.field private final mDeleteListener:Landroid/view/View$OnClickListener;

.field final mId:Ljava/lang/String;

.field final mName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference$1;

    invoke-direct {v10, p0}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference$1;-><init>(Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;)V

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AutomaticZenRule;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v4

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-nez v4, :cond_0

    move v5, v3

    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings;->-get1(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v9, Lcom/android/settings/notification/ZenModeSettings$LoadIconTask;

    invoke-direct {v9, p1, p0}, Lcom/android/settings/notification/ZenModeSettings$LoadIconTask;-><init>(Lcom/android/settings/notification/ZenModeSettings;Landroid/support/v7/preference/Preference;)V

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/pm/ApplicationInfo;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/settings/notification/ZenModeSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings;->-get1(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {p1, v6, v5, v10}, Lcom/android/settings/notification/ZenModeSettings;->-wrap2(Lcom/android/settings/notification/ZenModeSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->appExists:Z

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->setPersistent(Z)V

    if-eqz v4, :cond_1

    const-string/jumbo v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    :goto_1
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings;->-get2(Lcom/android/settings/notification/ZenModeSettings;)Lcom/android/settings/utils/ZenServiceListing;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/notification/ZenModeSettings;->-wrap0(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->mId:Ljava/lang/String;

    invoke-static {p1, v0, v7, v10}, Lcom/android/settings/notification/ZenModeSettings;->-wrap1(Lcom/android/settings/notification/ZenModeSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->setIntent(Landroid/content/Intent;)V

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->setSelectable(Z)V

    const v10, 0x7f0d03d2

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->setWidgetLayoutResource(I)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const v10, 0x7f080231

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->setIcon(I)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->appExists:Z

    return-void

    :cond_1
    if-eqz v3, :cond_2

    const-string/jumbo v0, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a022c

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
