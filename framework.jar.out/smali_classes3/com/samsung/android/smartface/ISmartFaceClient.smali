.class public interface abstract Lcom/samsung/android/smartface/ISmartFaceClient;
.super Ljava/lang/Object;
.source "ISmartFaceClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/ISmartFaceClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInfo(ILcom/samsung/android/smartface/FaceInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
