.class public interface abstract Lcom/samsung/android/location/ISLocationListener;
.super Ljava/lang/Object;
.source "ISLocationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLocationAvailable([Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
