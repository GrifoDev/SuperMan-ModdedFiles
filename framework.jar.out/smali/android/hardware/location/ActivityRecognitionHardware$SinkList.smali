.class Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
.super Landroid/os/RemoteCallbackList;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinkList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/hardware/location/IActivityRecognitionHardwareSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ActivityRecognitionHardware;


# direct methods
.method private constructor <init>(Landroid/hardware/location/ActivityRecognitionHardware;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$SinkList;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;)V

    return-void
.end method

.method private disableActivityEventIfEnabled(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->-get3(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, p2

    if-eq v2, v6, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v2, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->-wrap0(Landroid/hardware/location/ActivityRecognitionHardware;II)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->-get3(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aput v5, v2, p2

    const-string/jumbo v2, "DisableActivityEvent: activityType=%d, eventType=%d, result=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ActivityRecognitionHW"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V
    .locals 6

    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v3}, Landroid/hardware/location/ActivityRecognitionHardware;->-get1(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ActivityRecognitionHW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RegisteredCallbackCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v3}, Landroid/hardware/location/ActivityRecognitionHardware;->-get2(Landroid/hardware/location/ActivityRecognitionHardware;)I

    move-result v3

    if-ge v0, v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    invoke-direct {p0, v0, v2}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->disableActivityEventIfEnabled(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V

    return-void
.end method
