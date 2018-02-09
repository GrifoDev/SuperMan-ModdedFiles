.class Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaClientDeathMonitor"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "WifiDisplayAdapter"

    const-string/jumbo v2, "DlnaClientDeathMonitor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "unlinkToDeath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
