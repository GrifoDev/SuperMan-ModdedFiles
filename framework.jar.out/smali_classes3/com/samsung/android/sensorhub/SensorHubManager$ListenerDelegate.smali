.class Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sensorhub/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

.field private final mSensorHubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorHubs:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;)Lcom/samsung/android/sensorhub/SensorHubEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/sensorhub/SensorHubManager;Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/sensorhub/SensorHubManager;
    .param p2, "listener"    # Lcom/samsung/android/sensorhub/SensorHubEventListener;
    .param p3, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/sensorhub/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    .line 239
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    .line 242
    iput-object p2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    .line 243
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 245
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate$1;-><init>(Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 253
    invoke-virtual {p0, p3}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->addSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)V

    .line 241
    return-void

    .line 243
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sensorhub/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0
.end method


# virtual methods
.method addSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)V
    .locals 3
    .param p1, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    return-object v0
.end method

.method getSensorHubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)Z
    .locals 2
    .param p1, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method onGetSensorHubDataLocked(Lcom/samsung/android/sensorhub/SensorHub;[BI[F[J)V
    .locals 9
    .param p1, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;
    .param p2, "buffer"    # [B
    .param p3, "length"    # I
    .param p4, "values"    # [F
    .param p5, "timestamp"    # [J

    .prologue
    const/16 v8, 0x100

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 281
    invoke-static {}, Lcom/samsung/android/sensorhub/SensorHubManager;->-get0()Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->getFromPool()Lcom/samsung/android/sensorhub/SensorHubEvent;

    move-result-object v3

    .line 282
    .local v3, "t":Lcom/samsung/android/sensorhub/SensorHubEvent;
    iput-object p1, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->sensorhub:Lcom/samsung/android/sensorhub/SensorHub;

    .line 283
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "onGetSensorHubDataLocked: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "log":Ljava/lang/StringBuffer;
    if-lez p3, :cond_4

    .line 287
    new-array v4, p3, [B

    iput-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->buffer:[B

    .line 288
    iput p3, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->length:I

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "library("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    iget-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v5, p2, v6

    aput-byte v5, v4, v6

    .line 292
    iget-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 294
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 295
    iget-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v5, p2, v0

    aput-byte v5, v4, v0

    .line 296
    if-lt p3, v8, :cond_0

    if-ge v0, v7, :cond_3

    .line 297
    :cond_0
    :goto_1
    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    iget-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 300
    :cond_1
    if-le p3, v8, :cond_2

    if-ne v0, v7, :cond_2

    .line 301
    const-string/jumbo v4, " ..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_3
    add-int/lit8 v4, p3, -0x6

    if-lt v0, v4, :cond_1

    goto :goto_1

    .line 306
    .end local v0    # "i":I
    :cond_4
    iput-object p4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->values:[F

    .line 307
    aget-wide v4, p5, v6

    iput-wide v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->timestamp:J

    .line 309
    const-string/jumbo v4, "gesture = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    iget-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->values:[F

    aget v5, p4, v6

    aput v5, v4, v6

    .line 311
    iget-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->values:[F

    aget v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 313
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    array-length v4, p4

    if-ge v0, v4, :cond_5

    .line 314
    iget-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->values:[F

    aget v5, p4, v0

    aput v5, v4, v0

    .line 315
    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    iget-object v4, v3, Lcom/samsung/android/sensorhub/SensorHubEvent;->values:[F

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 319
    :cond_5
    const-string/jumbo v4, "SensorHubManager"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 322
    .local v2, "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 323
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    iget-object v4, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method removeSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)I
    .locals 2
    .param p1, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
