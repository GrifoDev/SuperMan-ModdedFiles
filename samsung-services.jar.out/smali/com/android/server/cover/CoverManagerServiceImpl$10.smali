.class Lcom/android/server/cover/CoverManagerServiceImpl$10;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

.field final synthetic val$coverSwitchState:Z


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    iput-boolean p2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$10;->val$coverSwitchState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get6(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    iget-boolean v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$10;->val$coverSwitchState:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap0(Lcom/android/server/cover/CoverManagerServiceImpl;ZZZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
