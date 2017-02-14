.class public interface abstract Lcom/google/android/hotword/service/IHotwordService;
.super Ljava/lang/Object;
.source "IHotwordService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/hotword/service/IHotwordService$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestHotwordDetection(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
