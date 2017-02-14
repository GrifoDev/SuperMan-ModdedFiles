.class Lcom/android/settings/ScreenPinningSettings$6;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ScreenPinningSettings;->screenPinningDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ScreenPinningSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ScreenPinningSettings$6;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$6;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-wrap0(Lcom/android/settings/ScreenPinningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$6;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get2(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$6;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1, v0}, Lcom/android/settings/ScreenPinningSettings;->-wrap3(Lcom/android/settings/ScreenPinningSettings;Z)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$6;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v1}, Lcom/android/settings/ScreenPinningSettings;->updateDisplay()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
