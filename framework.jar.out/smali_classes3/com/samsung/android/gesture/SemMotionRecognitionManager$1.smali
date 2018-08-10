.class Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;
.super Ljava/lang/Object;
.source "SemMotionRecognitionManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 11

    iget-object v5, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    new-instance v4, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    invoke-direct {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getMovementContext()Lcom/samsung/android/hardware/context/SemContextMovement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hardware/context/SemContextMovement;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-get1(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getPickUpMotionStatus()Z

    move-result v2

    const-string/jumbo v8, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  >> check setting smart alert enabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v2, :cond_0

    const/16 v8, 0x43

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->setMotion(I)V

    const-string/jumbo v8, "MotionRecognitionManager"

    const-string/jumbo v9, "mySemContextMotionListener : Send Smart alert event"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-get2(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-get2(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_1

    iget-object v8, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v8}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-get2(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v8, "MotionRecognitionManager"

    const-string/jumbo v9, "RemoteException in getPickUpMotionStatus: "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
