.class Lcom/samsung/android/settings/NewOneHandOperationSettings$7;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffSwitchAccess(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_autoclick_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "any_screen_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-wrap1(Lcom/samsung/android/settings/NewOneHandOperationSettings;I)V

    return-void
.end method
