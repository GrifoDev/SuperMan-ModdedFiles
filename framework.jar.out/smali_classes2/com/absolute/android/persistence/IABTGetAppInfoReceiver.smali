.class public interface abstract Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
.super Ljava/lang/Object;
.source "IABTGetAppInfoReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetAppInfoResult(ZLjava/lang/String;Lcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
