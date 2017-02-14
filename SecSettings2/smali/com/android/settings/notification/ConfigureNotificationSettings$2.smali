.class Lcom/android/settings/notification/ConfigureNotificationSettings$2;
.super Ljava/lang/Object;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get0(Lcom/android/settings/notification/ConfigureNotificationSettings;)I

    move-result v3

    if-ne v2, v3, :cond_0

    return v5

    :cond_0
    const v3, 0x7f0b1836

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    const v3, 0x7f0b1834

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v5, v4

    :cond_1
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-set0(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I

    return v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2
.end method
