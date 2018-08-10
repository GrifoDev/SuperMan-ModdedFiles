.class public interface abstract Lcom/att/iqi/IMetricQueryCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IMetricQueryCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMetricQueried(Lcom/att/iqi/lib/Metric$ID;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
