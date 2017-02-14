.class Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;
.super Ljava/lang/Object;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v6

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xab

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrefChange allowRepeatCallers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/16 v3, 0x10

    invoke-static {v2, v1, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ZI)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    iget v5, v5, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v2, v0, v3, v4, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;IIII)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10013e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz v1, :cond_2

    const/16 v2, 0x3e8

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v6

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
