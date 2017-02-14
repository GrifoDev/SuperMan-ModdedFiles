.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;I)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    iput p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
