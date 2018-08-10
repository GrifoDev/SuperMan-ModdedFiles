.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextInfo"
.end annotation


# instance fields
.field private mInfo:Landroid/hardware/SensorAdditionalInfo;

.field protected mIsDone:Z

.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;)Landroid/hardware/SensorAdditionalInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;I[B)V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    rem-int/lit8 v5, p2, 0x4

    if-lez v5, :cond_1

    move v7, v8

    :goto_0
    div-int/lit8 v10, p2, 0x4

    add-int/lit8 v10, v10, 0x2

    if-ge v4, v10, :cond_2

    move v10, v8

    :goto_1
    and-int/2addr v7, v10

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    new-array v3, v4, [I

    if-lez v5, :cond_4

    const/4 v7, 0x4

    new-array v6, v7, [B

    move v1, v5

    :goto_2
    if-lez v1, :cond_3

    sub-int v7, v5, v1

    sub-int v10, p2, v1

    aget-byte v10, p3, v10

    aput-byte v10, v6, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    move v7, v9

    goto :goto_0

    :cond_2
    move v10, v9

    goto :goto_1

    :cond_3
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    aput v10, v3, v7

    :cond_4
    aput p2, v3, v9

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v7

    invoke-virtual {v2, v3, v8, v7}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    invoke-static {p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-get0(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/Sensor;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    iput-boolean v9, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mIsDone:Z

    return-void
.end method
