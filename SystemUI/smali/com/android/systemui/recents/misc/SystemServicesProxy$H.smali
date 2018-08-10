.class final Lcom/android/systemui/recents/misc/SystemServicesProxy$H;
.super Landroid/os/Handler;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/misc/SystemServicesProxy$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v5

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    packed-switch v1, :pswitch_data_1

    :cond_1
    :goto_1
    monitor-exit v5

    return-void

    :pswitch_0
    :try_start_2
    const-string/jumbo v1, "onTaskStackChanged"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onTaskStackChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    :pswitch_1
    :try_start_3
    const-string/jumbo v1, "onTaskSnapshotChanged"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1, v6, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_4
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityPinned(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_5
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityUnpinned()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_6
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_4

    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onPinnedActivityRestartAttempt(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_4
    move v2, v4

    goto :goto_7

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onPinnedStackAnimationStarted()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_9
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onPinnedStackAnimationEnded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_a
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_b
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityDismissingDockedStack()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_c
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_d
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onTaskProfileLocked(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :pswitch_b
    :try_start_4
    const-string/jumbo v1, "onTaskStackChanged"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_e
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onTaskStackChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v5

    throw v1

    :pswitch_c
    :try_start_5
    const-string/jumbo v1, "onTaskSnapshotChanged"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_f
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onTaskSnapshotChanged(ILcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1

    :pswitch_d
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_10
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onActivityPinned(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :pswitch_e
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_11
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onActivityUnpinned()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :pswitch_f
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_12
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_7

    move v2, v3

    :goto_13
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onPinnedActivityRestartAttempt(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_7
    move v2, v4

    goto :goto_13

    :pswitch_10
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_14
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onPinnedStackAnimationStarted()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :pswitch_11
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_15
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onPinnedStackAnimationEnded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :pswitch_12
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_16
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :pswitch_13
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_17
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onActivityDismissingDockedStack()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :pswitch_14
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_18
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :pswitch_15
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_19
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onTaskProfileLocked(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_3
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method
