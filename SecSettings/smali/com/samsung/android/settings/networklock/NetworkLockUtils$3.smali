.class Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;
.super Ljava/lang/Object;
.source "NetworkLockUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/networklock/NetworkLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-set0(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-wrap0(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-set0(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
