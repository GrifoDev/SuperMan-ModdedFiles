.class Lcom/android/server/location/GnssLocationProvider$13;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get11(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v1}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->extension_set_xtra_downloaded_time()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap26(Lcom/android/server/location/GnssLocationProvider;[BI)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider$BackOff;->reset()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->-wrap31(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get4(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;->nextBackoffMillis()J

    move-result-wide v4

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get13(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "WakeLock released by handleDownloadXtraData()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
