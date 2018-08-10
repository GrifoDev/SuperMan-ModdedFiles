.class Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;
.super Ljava/lang/Object;
.source "PrivateVolumeFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "format_private"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "forget_uuid"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->-get1(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
