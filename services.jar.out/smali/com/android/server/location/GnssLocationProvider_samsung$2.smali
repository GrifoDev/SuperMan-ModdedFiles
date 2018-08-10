.class Lcom/android/server/location/GnssLocationProvider_samsung$2;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider_samsung;->initializeMinorSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-get3(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-get4(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v1, v4}, Lcom/android/server/location/GnssLocationProvider_samsung;->-set1(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Minor session starts."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-wrap0(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-get2(Lcom/android/server/location/GnssLocationProvider_samsung;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-get2(Lcom/android/server/location/GnssLocationProvider_samsung;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-get0(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Minor session is running. Ignore redundant request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-get0(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Minor session has not been enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
