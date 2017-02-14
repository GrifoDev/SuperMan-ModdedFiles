.class Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeForget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

.field final synthetic val$fsUuid:Ljava/lang/String;

.field final synthetic val$storage:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->this$1:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->val$storage:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->val$fsUuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->val$storage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->val$fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->this$1:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
