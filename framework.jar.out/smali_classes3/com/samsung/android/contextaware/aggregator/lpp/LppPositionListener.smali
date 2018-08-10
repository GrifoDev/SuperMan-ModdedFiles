.class public interface abstract Lcom/samsung/android/contextaware/aggregator/lpp/LppPositionListener;
.super Ljava/lang/Object;
.source "LppPositionListener.java"


# virtual methods
.method public abstract LPPStatus(Ljava/lang/String;)V
.end method

.method public abstract LPPUpdate(Ljava/util/ArrayList;)V
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
