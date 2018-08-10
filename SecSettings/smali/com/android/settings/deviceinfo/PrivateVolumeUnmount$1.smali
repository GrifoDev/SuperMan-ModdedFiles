.class Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;
.super Ljava/lang/Object;
.source "PrivateVolumeUnmount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
