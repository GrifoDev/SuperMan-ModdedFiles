.class Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-boolean v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    sget-boolean v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange zenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    const/4 v1, 0x1

    return v1
.end method
