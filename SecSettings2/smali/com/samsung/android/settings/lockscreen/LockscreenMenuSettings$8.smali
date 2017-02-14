.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->makeAccessiblityDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

.field final synthetic val$menu:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;->val$menu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;->val$menu:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get1(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03f0
        :pswitch_0
    .end packed-switch
.end method
