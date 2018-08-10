.class Lcom/android/server/cover/CoverManagerServiceImpl$1;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;
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

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get6(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap2(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap8(Lcom/android/server/cover/CoverManagerServiceImpl;Lcom/samsung/android/cover/CoverState;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get4(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get12(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/StateNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
