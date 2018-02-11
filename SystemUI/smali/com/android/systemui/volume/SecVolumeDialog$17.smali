.class Lcom/android/systemui/volume/SecVolumeDialog$17;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->showVolumeLimiterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.android.settings"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "volume_limiter_title"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.android.settings"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.SubSettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v5, ":settings:show_fragment"

    const-string/jumbo v6, "com.samsung.android.settings.notification.VolumeLimiterSettings"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, ":settings:show_fragment_title_resid"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0x14000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-get8(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f04e3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showVolumeLimiterToast : Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
