.class Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;
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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const v7, 0x7f100140

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-ne v2, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v1, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa9

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPrefChange allowMessages="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " allowMessagesFrom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v5, 0x4

    invoke-static {v4, v0, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ZI)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    iget v5, v5, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v6

    iget v6, v6, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v3, v4, v5, v1, v6}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;IIII)V

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_2
    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_2
.end method
