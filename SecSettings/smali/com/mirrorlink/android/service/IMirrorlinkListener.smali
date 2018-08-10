.class public interface abstract Lcom/mirrorlink/android/service/IMirrorlinkListener;
.super Ljava/lang/Object;
.source "IMirrorlinkListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyRevocationCheckResult(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
