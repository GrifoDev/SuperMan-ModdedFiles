.class public interface abstract Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelAllImages(I)Z
.end method

.method public abstract cancelImageByReqId(II)Z
.end method

.method public abstract getImage(ILjava/lang/String;)I
.end method

.method public abstract registerCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)I
.end method

.method public abstract unregisterCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)V
.end method
