.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->this$1:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "samsung.myfiles.intent.extra.START_PATH"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "samsung.myfiles.intent.extra.OTHER_APP"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->this$1:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->this$1:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->this$1:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "StorageSettings"

    const-string/jumbo v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
