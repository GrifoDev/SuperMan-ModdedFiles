.class public interface abstract Lcom/att/iqi/IMetricSourcingCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IMetricSourcingCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMetricSourced(Lcom/att/iqi/lib/Metric$ID;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
