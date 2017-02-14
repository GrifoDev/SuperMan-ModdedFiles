.class Lcom/android/server/cover/CoverManagerService$3;
.super Landroid/database/ContentObserver;
.source "CoverManagerService.java"


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
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$3;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/16 v4, 0x12c

    if-nez p2, :cond_0

    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "mScreenChangeObserver: URI is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenChangeObserver: URI changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$3;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get3(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$3;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get3(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
