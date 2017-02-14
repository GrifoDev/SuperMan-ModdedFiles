.class Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$5;
.super Ljava/lang/Object;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    iget-object v2, v2, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    iget-object v5, v2, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return v3

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method
