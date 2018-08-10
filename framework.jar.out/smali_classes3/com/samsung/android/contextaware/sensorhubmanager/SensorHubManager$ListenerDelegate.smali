.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-get2(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getListener()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    return-object v0
.end method

.method onGetSensorHubDataLocked([BIJ)V
    .locals 9

    const/16 v8, 0x100

    const/4 v7, 0x6

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v4}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-get3(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->getEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "SensorHubManager"

    const-string/jumbo v5, "can\'t get an event form pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    if-nez v4, :cond_1

    const-string/jumbo v4, "SensorHubManager"

    const-string/jumbo v5, " no buffer in event"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "onGetSensorHubDataLocked: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-lez p2, :cond_7

    iget-object v4, v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    array-length v4, v4

    if-ge v4, p2, :cond_2

    const-string/jumbo v4, "SensorHubManager"

    const-string/jumbo v5, "failed get event, too big data "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput p2, v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->length:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "library("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v5, p1, v6

    aput-byte v5, v4, v6

    iget-object v4, v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_7

    iget-object v4, v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v5, p1, v0

    aput-byte v5, v4, v0

    if-lt p2, v8, :cond_3

    if-ge v0, v7, :cond_6

    :cond_3
    :goto_1
    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    if-le p2, v8, :cond_5

    if-ne v0, v7, :cond_5

    const-string/jumbo v4, " ..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v4, p2, -0x6

    if-lt v0, v4, :cond_4

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "SensorHubManager"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v6, v2, Landroid/os/Message;->what:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
