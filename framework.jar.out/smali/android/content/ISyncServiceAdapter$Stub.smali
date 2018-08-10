.class public abstract Landroid/content/ISyncServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "ISyncServiceAdapter.java"

# interfaces
.implements Landroid/content/ISyncServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncServiceAdapter"

.field static final TRANSACTION_cancelSync:I = 0x2

.field static final TRANSACTION_startSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.ISyncServiceAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncServiceAdapter;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.content.ISyncServiceAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/ISyncServiceAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/ISyncServiceAdapter;

    return-object v0

    :cond_1
    new-instance v1, Landroid/content/ISyncServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/ISyncServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "android.content.ISyncServiceAdapter"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v2, "android.content.ISyncServiceAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/content/ISyncServiceAdapter$Stub;->startSync(Landroid/content/ISyncContext;Landroid/os/Bundle;)V

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "android.content.ISyncServiceAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ISyncServiceAdapter$Stub;->cancelSync(Landroid/content/ISyncContext;)V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
