.class Lcom/android/settings/deviceinfo/StorageSettings$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageSettings;->-wrap1(Lcom/android/settings/deviceinfo/StorageSettings;)V

    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 1

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageSettings;->-wrap0(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageSettings;->-wrap1(Lcom/android/settings/deviceinfo/StorageSettings;)V

    :cond_0
    return-void
.end method
