.class Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orangelabs/rcs/api/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientConnectionNotifier"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/gsma/services/rcs/RcsServiceListener;

.field private final mMonitoredServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggerOnlyOnce:Lcom/orangelabs/rcs/api/connection/utils/LockAccess;

.field final synthetic this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;


# direct methods
.method public varargs constructor <init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Landroid/app/Activity;Lcom/orangelabs/rcs/api/connection/utils/LockAccess;[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V
    .locals 5

    iput-object p1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mTriggerOnlyOnce:Lcom/orangelabs/rcs/api/connection/utils/LockAccess;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mMonitoredServices:Ljava/util/Set;

    move-object v0, p4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mMonitoredServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/gsma/services/rcs/RcsServiceListener;[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V
    .locals 7

    iput-object p1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mMonitoredServices:Ljava/util/Set;

    move-object v0, p3

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$000(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not belong to set of managed services!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mMonitoredServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMonitoredServices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mMonitoredServices:Ljava/util/Set;

    return-object v0
.end method

.method public notifyConnection()V
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    invoke-static {v0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$100(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mMonitoredServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    goto :goto_0
.end method

.method public notifyDisconnection(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V
    .locals 4

    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->SERVICE_DISABLED:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    if-ne v1, p1, :cond_1

    const-string v0, "RCS service disabled"

    :goto_0
    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mTriggerOnlyOnce:Lcom/orangelabs/rcs/api/connection/utils/LockAccess;

    invoke-static {v1, v2, v0, v3}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$200(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Landroid/app/Activity;Ljava/lang/String;Lcom/orangelabs/rcs/api/connection/utils/LockAccess;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "RCS service disconnected"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    goto :goto_1
.end method
