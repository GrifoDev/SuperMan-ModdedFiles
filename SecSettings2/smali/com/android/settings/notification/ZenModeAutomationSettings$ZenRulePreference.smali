.class Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;
.super Landroid/preference/Preference;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenRulePreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference$1;
    }
.end annotation


# instance fields
.field final appExists:Z

.field private final mDeleteListener:Landroid/view/View$OnClickListener;

.field final mId:Ljava/lang/String;

.field final mName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V
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

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference$1;

    invoke-direct {v10, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference$1;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;)V

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AutomaticZenRule;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mId:Ljava/lang/String;

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
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-get0(Lcom/android/settings/notification/ZenModeAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v9, Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;

    invoke-direct {v9, p1, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/preference/Preference;)V

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/pm/ApplicationInfo;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-get0(Lcom/android/settings/notification/ZenModeAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {p1, v6, v5, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-wrap2(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->appExists:Z

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setPersistent(Z)V

    if-eqz v4, :cond_1

    const-string/jumbo v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    :goto_1
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-get1(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/utils/ZenServiceListing;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-wrap0(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mId:Ljava/lang/String;

    invoke-static {p1, v0, v7, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-wrap1(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setIntent(Landroid/content/Intent;)V

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setSelectable(Z)V

    const v10, 0x7f040375

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setWidgetLayoutResource(I)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const v10, 0x7f02019f

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setIcon(I)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->appExists:Z

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
.method public onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f110848

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    return-void
.end method
