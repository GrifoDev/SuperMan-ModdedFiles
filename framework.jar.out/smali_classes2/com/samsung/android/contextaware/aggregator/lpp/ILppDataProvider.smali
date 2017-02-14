.class public interface abstract Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
.super Ljava/lang/Object;
.source "ILppDataProvider.java"


# virtual methods
.method public abstract gpsAvailable()V
.end method

.method public abstract gpsBatchStarted()V
.end method

.method public abstract gpsOffBatchStopped()V
.end method

.method public abstract gpsOnBatchStopped()V
.end method

.method public abstract gpsUnavailable()V
.end method

.method public abstract lppStatus(Ljava/lang/String;)V
.end method

.method public abstract lppUpdate(Ljava/util/ArrayList;)V
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

.method public abstract onLocationChanged(Landroid/location/Location;)V
.end method
