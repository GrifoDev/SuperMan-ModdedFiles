.class public interface abstract Landroid/os/IDeviceIdentifiersPolicyService;
.super Ljava/lang/Object;
.source "IDeviceIdentifiersPolicyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdentifiersPolicyService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSerial()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
