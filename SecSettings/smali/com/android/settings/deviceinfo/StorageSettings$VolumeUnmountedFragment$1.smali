.class Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/os/storage/VolumeInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$1:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wasAdminSupportIntentShown(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$1:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$1:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v0, :cond_0

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$1:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "no_physical_media"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->wasAdminSupportIntentShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "no_usb_file_transfer"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->wasAdminSupportIntentShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
