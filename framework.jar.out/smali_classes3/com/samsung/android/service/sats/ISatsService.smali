.class public interface abstract Lcom/samsung/android/service/sats/ISatsService;
.super Ljava/lang/Object;
.source "ISatsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/sats/ISatsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
