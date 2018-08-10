.class Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;
.super Landroid/service/resolver/IResolverRankerService$Stub;
.source "ResolverRankerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/resolver/ResolverRankerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverRankerServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/resolver/ResolverRankerService;


# direct methods
.method private constructor <init>(Landroid/service/resolver/ResolverRankerService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    invoke-direct {p0}, Landroid/service/resolver/IResolverRankerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/resolver/ResolverRankerService;Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;-><init>(Landroid/service/resolver/ResolverRankerService;)V

    return-void
.end method


# virtual methods
.method public predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Landroid/service/resolver/IResolverRankerResult;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;-><init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    iget-object v2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    invoke-static {v2}, Landroid/service/resolver/ResolverRankerService;->-get0(Landroid/service/resolver/ResolverRankerService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public train(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;-><init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;I)V

    iget-object v2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    invoke-static {v2}, Landroid/service/resolver/ResolverRankerService;->-get0(Landroid/service/resolver/ResolverRankerService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
