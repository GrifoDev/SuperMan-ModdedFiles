.class public interface abstract Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
.super Ljava/lang/Object;
.source "ISnsImageCacheCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onImageGetResponse(IZLandroid/net/Uri;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
