.class public interface abstract Lcom/samsung/android/location/ISCurrentLocListener;
.super Ljava/lang/Object;
.source "ISCurrentLocListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISCurrentLocListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCurrentLocation(Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
