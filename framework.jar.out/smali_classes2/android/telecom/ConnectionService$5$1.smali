.class Landroid/telecom/ConnectionService$5$1;
.super Landroid/telecom/Logging/Runnable;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$5;->onResult(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$5;

.field final synthetic val$componentNames:Ljava/util/List;

.field final synthetic val$services:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService$5;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    iput-object p4, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    iput-object p5, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Landroid/telecom/Logging/Runnable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public loggedRun()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    iget-object v1, v1, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get6(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;

    move-result-object v3

    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/telecom/RemoteConnectionManager;->addConnectionService(Landroid/content/ComponentName;Lcom/android/internal/telecom/IConnectionService;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    iget-object v1, v1, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-wrap14(Landroid/telecom/ConnectionService;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote connection services found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
