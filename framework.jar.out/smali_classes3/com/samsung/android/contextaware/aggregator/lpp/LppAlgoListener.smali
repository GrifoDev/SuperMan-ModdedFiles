.class public interface abstract Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;
.super Ljava/lang/Object;
.source "LppAlgoListener.java"


# virtual methods
.method public abstract logData(ILjava/lang/String;)V
.end method

.method public abstract onUpdate(Landroid/location/Location;)V
.end method

.method public abstract onUpdateLPPtraj(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestLoc()V
.end method

.method public abstract status(Ljava/lang/String;)V
.end method
