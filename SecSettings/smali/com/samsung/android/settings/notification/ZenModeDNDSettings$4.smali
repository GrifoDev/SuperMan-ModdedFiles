.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange Scheduling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->ALL_DAYS:[I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b01f7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz v0, :cond_4

    const/16 v1, 0x3e8

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v4

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
