.class Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/gsma/services/rcs/RcsServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

.field final synthetic val$service:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;


# direct methods
.method constructor <init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V
    .locals 0

    iput-object p1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    iput-object p2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->val$service:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    invoke-static {v0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$100(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->val$service:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->val$service:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-static {v0, v1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$600(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V

    return-void
.end method

.method public onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    invoke-static {v0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$100(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->val$service:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;->val$service:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-static {v0, v1, p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$500(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    return-void
.end method
