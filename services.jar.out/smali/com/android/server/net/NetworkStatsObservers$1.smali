.class Lcom/android/server/net/NetworkStatsObservers$1;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsObservers;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsObservers;->-wrap0(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    return v3

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DataUsageRequest;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/net/NetworkStatsObservers;->-wrap1(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;I)V

    return v3

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsObservers;->-wrap2(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
