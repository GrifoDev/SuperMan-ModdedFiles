.class public interface abstract Landroid/os/IHwBinder;
.super Ljava/lang/Object;
.source "IHwBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHwBinder$DeathRecipient;
    }
.end annotation


# static fields
.field public static final FIRST_CALL_TRANSACTION:I = 0x1

.field public static final FLAG_ONEWAY:I = 0x1


# virtual methods
.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
.end method

.method public abstract transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
