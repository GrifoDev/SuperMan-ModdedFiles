.class Lcom/samsung/android/privatemode/SemPrivateModeManager$3$1;
.super Ljava/lang/Object;
.source "SemPrivateModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privatemode/SemPrivateModeManager$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/privatemode/SemPrivateModeManager$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/SemPrivateModeManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager$3$1;->this$1:Lcom/samsung/android/privatemode/SemPrivateModeManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->-get1()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "PPS_SemPrivateModeManager"

    const-string/jumbo v2, "bindPrivateModeManager, onStateChange : STATE_PREPARED "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->-get1()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager$3$1;->this$1:Lcom/samsung/android/privatemode/SemPrivateModeManager$3;

    iget-object v1, v1, Lcom/samsung/android/privatemode/SemPrivateModeManager$3;->this$0:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    const-string/jumbo v2, "bindPrivateModeManager"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->-wrap0(Lcom/samsung/android/privatemode/SemPrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
