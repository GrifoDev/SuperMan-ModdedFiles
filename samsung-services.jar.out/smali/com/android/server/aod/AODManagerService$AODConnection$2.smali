.class Lcom/android/server/aod/AODManagerService$AODConnection$2;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService$AODConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODConnection;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$2;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AOD onServiceDisconnected! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$2;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$2;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$2;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->stopConnection()V

    :cond_0
    return-void
.end method
