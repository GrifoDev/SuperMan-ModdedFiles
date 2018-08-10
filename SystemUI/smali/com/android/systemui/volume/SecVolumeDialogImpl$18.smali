.class Lcom/android/systemui/volume/SecVolumeDialogImpl$18;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->showVolumeLimiterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isClearCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get56()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set28(J)J

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const-string/jumbo v1, "com.android.systemui.volume"

    const-string/jumbo v2, "FVLM"

    const-string/jumbo v3, "SETTING: "

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get56()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap11(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$VolumeLimiterSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v0, 0x14000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get27(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get48(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get57()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b98

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showVolumeLimiterToast : Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
