.class Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;
.super Ljava/lang/Object;
.source "ZenModeDNDScheduleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRepeatClick(I)V
    .locals 9

    const/4 v7, 0x7

    const/4 v8, 0x0

    if-nez p1, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v6

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v7

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v6, v8}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;Z)Landroid/support/v7/preference/PreferenceScreen;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_2

    sget-object v6, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->REPEAT_DAYS:[I

    aget v6, v6, v5

    and-int/2addr v6, p1

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    move v4, v3

    :goto_2
    if-ge v1, v7, :cond_3

    sget-object v6, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->REPEAT_DAYS:[I

    aget v6, v6, v5

    and-int/2addr v6, p1

    if-eqz v6, :cond_4

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v6, v5, 0x1

    aput v6, v2, v4

    :goto_3
    add-int/lit8 v6, v5, 0x1

    rem-int/lit8 v5, v6, 0x7

    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v6

    iput-object v2, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v7

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_3
.end method
