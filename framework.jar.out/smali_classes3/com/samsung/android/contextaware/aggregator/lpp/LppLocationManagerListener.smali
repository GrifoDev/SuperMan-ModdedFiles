.class public interface abstract Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;
.super Ljava/lang/Object;
.source "LppLocationManagerListener.java"


# virtual methods
.method public abstract batchLocListUpdate(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract batchLocUpdate(Landroid/location/Location;)V
.end method

.method public abstract gpsAvailable()V
.end method

.method public abstract gpsBatchStarted()V
.end method

.method public abstract gpsBatchStopped()V
.end method

.method public abstract gpsOffBatchStopped()V
.end method

.method public abstract gpsOnBatchStopped()V
.end method

.method public abstract gpsUnavailable()V
.end method

.method public abstract locPassBatchUpdate(Landroid/location/Location;)V
.end method

.method public abstract locPassUpdate(Landroid/location/Location;)V
.end method

.method public abstract locUpdate(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract locationNotFound()V
.end method

.method public abstract logData(Ljava/lang/String;)V
.end method

.method public abstract logNmeaData(Ljava/lang/String;)V
.end method

.method public abstract status(Ljava/lang/String;)V
.end method
