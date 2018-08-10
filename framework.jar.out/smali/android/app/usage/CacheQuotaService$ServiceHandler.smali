.class final Landroid/app/usage/CacheQuotaService$ServiceHandler;
.super Landroid/os/Handler;
.source "CacheQuotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_SEND_LIST:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method public constructor <init>(Landroid/app/usage/CacheQuotaService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v5, "CacheQuotaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Handling unknown message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v6, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-virtual {v6, v5}, Landroid/app/usage/CacheQuotaService;->onComputeCacheQuotaHints(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "requests"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/RemoteCallback;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
