.class Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;
.super Ljava/lang/Object;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showFlashNotificationConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->val$context:Landroid/content/Context;

    const-string/jumbo v3, "accessibility_feature_confirm_dialog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "light_notification_flash_dialog_do_not_show_again"

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "flash_notification"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x17d2

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1789

    invoke-static {v2, v3, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void
.end method
