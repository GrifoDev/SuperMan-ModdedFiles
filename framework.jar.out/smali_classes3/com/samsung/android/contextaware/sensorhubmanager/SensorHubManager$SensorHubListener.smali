.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHubListener"
.end annotation


# instance fields
.field mHeader:Ljava/nio/ByteBuffer;

.field private final mHubDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14

    iget-wide v10, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    const/4 v12, 0x4

    invoke-virtual {v10, v12, v11}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    if-lez v9, :cond_0

    const/16 v10, 0x400

    if-le v9, v10, :cond_1

    :cond_0
    const-string/jumbo v10, "SensorHubManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onSensorChanged : wrong data "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-ltz v7, :cond_0

    if-gt v7, v9, :cond_0

    if-lez v3, :cond_0

    if-gt v3, v9, :cond_0

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    if-nez v7, :cond_3

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v10}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-get3(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    const-string/jumbo v10, "SensorHubManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "There is no buffer for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    if-le v9, v10, :cond_5

    const-string/jumbo v10, "SensorHubManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Wrong timestamp : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , buffer size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , total : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v1, 0x2

    move v4, v7

    move v2, v1

    :goto_0
    if-gt v4, v3, :cond_7

    const/16 v10, 0xf

    if-le v2, v10, :cond_6

    const-string/jumbo v10, "SensorHubManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "data is too big"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    add-int/lit8 v1, v2, 0x1

    aget v10, v10, v2

    invoke-virtual {v0, v4, v10}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x4

    move v2, v1

    goto :goto_0

    :cond_7
    add-int/lit8 v10, v9, -0x1

    if-ne v3, v10, :cond_9

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v10}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-get1(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_8

    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v10}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-get1(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v5, v10, v9, v12, v13}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->onGetSensorHubDataLocked([BIJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v10}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-get3(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->returnBuffer(Ljava/nio/ByteBuffer;)V

    :goto_2
    return-void

    :cond_9
    add-int/lit8 v10, v9, -0x1

    if-le v3, v10, :cond_a

    const-string/jumbo v10, "SensorHubManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "The Packet is bigger than data size"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    iget-object v10, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
