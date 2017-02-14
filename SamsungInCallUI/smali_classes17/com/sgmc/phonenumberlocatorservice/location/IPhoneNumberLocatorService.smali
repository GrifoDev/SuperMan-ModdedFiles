.class public interface abstract Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;
.super Ljava/lang/Object;
.source "IPhoneNumberLocatorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
