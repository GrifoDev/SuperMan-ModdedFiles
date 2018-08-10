.class Lcom/android/server/FMRadioService$ScanThread;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field private scanCount:I

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private doScan()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v10, 0x9

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v2, v6, :cond_6

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v9, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get20(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v2

    const-wide/32 v4, 0x1a5e0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    :goto_0
    iget v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v9, :cond_1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->-set12(Lcom/android/server/FMRadioService;J)J

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->-set3(Lcom/android/server/FMRadioService;J)J

    :cond_2
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get31(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get20(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/FMPlayerNativeBase;->setScanning(Z)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get27(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->searchAll()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/FMRadioService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_4
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v9, :cond_7

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v10, :cond_7

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get25(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/server/FMRadioService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v10, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get20(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v2

    const-wide/32 v4, 0x155cc

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get20(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v2

    const-wide/32 v4, 0x128e0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto/16 :goto_0

    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get26(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2, v0, v1}, Lcom/android/server/FMRadioService;->-set16(Lcom/android/server/FMRadioService;J)J

    :cond_8
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v9, :cond_9

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_d

    :cond_9
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2, v0, v1}, Lcom/android/server/FMRadioService;->-set3(Lcom/android/server/FMRadioService;J)J

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get22(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get8(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get25(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :cond_a
    :goto_2
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get31(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get20(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/FMPlayerNativeBase;->setScanning(Z)V

    :cond_b
    return-void

    :cond_c
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get27(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get8(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->-set12(Lcom/android/server/FMRadioService;J)J

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get25(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get31(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get28(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get28(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get28(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_d
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get27(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get25(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get31(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get28(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get28(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get28(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    :cond_e
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v2, v6, :cond_f

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    :cond_f
    const-wide/32 v2, 0x1a5e0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    :goto_3
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get25(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_10
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v2, v8, :cond_3

    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Testmode Skipp value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get14(Lcom/android/server/FMRadioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get25(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get21(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;

    move-result-object v2

    const-string/jumbo v3, "FMRadio Service Scan Thread"

    const v4, 0x20000001

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string/jumbo v2, "Scan thread gets the dimmed screen lock"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v2, "Scanning Thread started..."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->getDNDStatus()I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get20(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNativeBase;->muteOn()V

    :cond_0
    :goto_0
    const-string/jumbo v2, "Scanning Thread started... - Turning off FM"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v3}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->-set16(Lcom/android/server/FMRadioService;J)J

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get25(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->-set15(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get14(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get24(Lcom/android/server/FMRadioService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get30(Lcom/android/server/FMRadioService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-get6(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/FMRadioService;->-wrap9(Lcom/android/server/FMRadioService;III)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "first scan no block channel with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get24(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get30(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get6(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2, v6}, Lcom/android/server/FMRadioService;->-set17(Lcom/android/server/FMRadioService;Z)Z

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2, v8}, Lcom/android/server/FMRadioService;->-set18(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v7}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->-set19(Lcom/android/server/FMRadioService;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scan Thread resuming volume :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get29(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v7}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get29(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string/jumbo v2, "Scan thread released the dimmed screen lock"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string/jumbo v2, "Scanning Thread work is done..."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->-wrap8(Lcom/android/server/FMRadioService;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2, v6}, Lcom/android/server/FMRadioService;->-set17(Lcom/android/server/FMRadioService;Z)Z

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2, v8}, Lcom/android/server/FMRadioService;->-set18(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v7}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->-set19(Lcom/android/server/FMRadioService;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scan Thread resuming volume :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get29(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v7}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get29(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string/jumbo v2, "Scan thread released the dimmed screen lock"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get25(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v6}, Lcom/android/server/FMRadioService;->-set17(Lcom/android/server/FMRadioService;Z)Z

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v8}, Lcom/android/server/FMRadioService;->-set18(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v7}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->-set19(Lcom/android/server/FMRadioService;I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scan Thread resuming volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get29(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v7}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-get29(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string/jumbo v3, "Scan thread released the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_5
    throw v2
.end method
