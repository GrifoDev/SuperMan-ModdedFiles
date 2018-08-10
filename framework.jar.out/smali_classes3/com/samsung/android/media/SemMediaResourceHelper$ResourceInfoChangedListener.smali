.class public interface abstract Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceInfoChangedListener"
.end annotation


# virtual methods
.method public abstract onAdd(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V
.end method

.method public abstract onRemove(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation
.end method
