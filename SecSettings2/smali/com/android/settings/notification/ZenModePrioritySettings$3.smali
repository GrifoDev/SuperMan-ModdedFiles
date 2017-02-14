.class Lcom/android/settings/notification/ZenModePrioritySettings$3;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v3}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get0(Lcom/android/settings/notification/ZenModePrioritySettings;)Z

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

    iget-object v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v3}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v1, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v3, v3, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v4, 0xa9

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    sget-boolean v3, Lcom/android/settings/notification/ZenModePrioritySettings;->DEBUG:Z

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
    iget-object v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    const/4 v5, 0x4

    invoke-static {v4, v0, v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->-wrap0(Lcom/android/settings/notification/ZenModePrioritySettings;ZI)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    iget v5, v5, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v6, p0, Lcom/android/settings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v6

    iget v6, v6, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v3, v4, v5, v1, v6}, Lcom/android/settings/notification/ZenModePrioritySettings;->-wrap1(Lcom/android/settings/notification/ZenModePrioritySettings;IIII)V

    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
