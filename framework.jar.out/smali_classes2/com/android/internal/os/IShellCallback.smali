.class public interface abstract Lcom/android/internal/os/IShellCallback;
.super Ljava/lang/Object;
.source "IShellCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IShellCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract openOutputFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
