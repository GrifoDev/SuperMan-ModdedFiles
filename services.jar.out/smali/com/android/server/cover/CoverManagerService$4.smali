.class Lcom/android/server/cover/CoverManagerService$4;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "onLedCoverServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {p2}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cover/CoverManagerService;->-set1(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/ISViewCoverBaseService;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get4(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v2}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cover/CoverManagerService;->-wrap1(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "Remote LedCoverService error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "onLedCoverServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->-set1(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/ISViewCoverBaseService;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    return-void
.end method
