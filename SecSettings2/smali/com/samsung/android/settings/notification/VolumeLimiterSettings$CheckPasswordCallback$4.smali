.class Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->showCheckPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get6(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z

    goto :goto_0
.end method
