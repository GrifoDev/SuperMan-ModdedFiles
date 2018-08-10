.class final Lcom/android/server/cover/CoverServiceManager$H;
.super Landroid/os/Handler;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_RECONNECT_SERVICE:I = 0x2

.field static final MSG_UPDATE_COVER_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverServiceManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$H;->this$0:Lcom/android/server/cover/CoverServiceManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager$H;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cover/CoverState;

    invoke-static {v2, v1}, Lcom/android/server/cover/CoverServiceManager;->-wrap8(Lcom/android/server/cover/CoverServiceManager;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$H;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get5(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$H;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v4

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get3(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/android/server/cover/CoverServiceManager;->-wrap2(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
