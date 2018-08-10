.class Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;
.super Ljava/lang/Object;
.source "ResolverRankerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->train(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

.field final synthetic val$selectedPosition:I

.field final synthetic val$targets:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iput-object p2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->val$targets:Ljava/util/List;

    iput p3, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->val$selectedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iget-object v1, v1, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    iget-object v2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->val$targets:Ljava/util/List;

    iget v3, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->val$selectedPosition:I

    invoke-virtual {v1, v2, v3}, Landroid/service/resolver/ResolverRankerService;->onTrainRankingModel(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ResolverRankerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrainRankingModel failed; skip train: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
