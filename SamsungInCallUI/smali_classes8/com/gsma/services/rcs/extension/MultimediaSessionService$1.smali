.class Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;
.super Ljava/lang/Object;
.source "MultimediaSessionService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/MultimediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "MultimediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->setApi(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$000(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$100(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "MultimediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->setApi(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$200(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$300(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    :cond_0
    return-void
.end method
