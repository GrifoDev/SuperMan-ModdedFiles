.class public interface abstract Lcom/nttdocomo/android/screenlockservice/IScreenLockService;
.super Ljava/lang/Object;
.source "IScreenLockService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getUnreadCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
