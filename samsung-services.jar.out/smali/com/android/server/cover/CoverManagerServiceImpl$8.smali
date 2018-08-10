.class Lcom/android/server/cover/CoverManagerServiceImpl$8;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get3(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverHideAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get1(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverHideAnimator;->playCoverHideAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get6(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get12(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/StateNotifier;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get5(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get5(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/cover/StateNotifier;->updatePowerState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
