.class Lcom/samsung/android/settings/OtherSecuritySettings$5;
.super Ljava/lang/Object;
.source "OtherSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/OtherSecuritySettings;->screenPinningDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/OtherSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$5;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$5;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-wrap0(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$5;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/OtherSecuritySettings;->-wrap1(Lcom/samsung/android/settings/OtherSecuritySettings;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$5;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get5(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$5;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$5;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-get5(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
