.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->turnOffExlusiveOptions(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120247

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.assistantmenu"

    const-string/jumbo v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
