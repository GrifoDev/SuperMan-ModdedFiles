.class Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showSetPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volumelimit_set_password"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
