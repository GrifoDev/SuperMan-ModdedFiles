.class public interface abstract Lcom/samsung/android/security/IDirEncryptServiceListener;
.super Ljava/lang/Object;
.source "IDirEncryptServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
