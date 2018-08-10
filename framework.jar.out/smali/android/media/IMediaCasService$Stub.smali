.class public abstract Landroid/media/IMediaCasService$Stub;
.super Landroid/os/Binder;
.source "IMediaCasService.java"

# interfaces
.implements Landroid/media/IMediaCasService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaCasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaCasService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaCasService"

.field static final TRANSACTION_createDescrambler:I = 0x5

.field static final TRANSACTION_createPlugin:I = 0x3

.field static final TRANSACTION_enumeratePlugins:I = 0x1

.field static final TRANSACTION_isDescramblerSupported:I = 0x4

.field static final TRANSACTION_isSystemIdSupported:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.IMediaCasService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaCasService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaCasService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.media.IMediaCasService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IMediaCasService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/IMediaCasService;

    return-object v0

    :cond_1
    new-instance v1, Landroid/media/IMediaCasService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaCasService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "android.media.IMediaCasService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v6, "android.media.IMediaCasService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/IMediaCasService$Stub;->enumeratePlugins()[Landroid/media/MediaCas$ParcelableCasPluginDescriptor;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v7

    :sswitch_2
    const-string/jumbo v8, "android.media.IMediaCasService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/IMediaCasService$Stub;->isSystemIdSupported(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_3
    const-string/jumbo v6, "android.media.IMediaCasService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/ICasListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICasListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/IMediaCasService$Stub;->createPlugin(ILandroid/media/ICasListener;)Landroid/media/ICas;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/media/ICas;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v7

    :cond_1
    move-object v6, v8

    goto :goto_0

    :sswitch_4
    const-string/jumbo v8, "android.media.IMediaCasService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/IMediaCasService$Stub;->isDescramblerSupported(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_5
    const-string/jumbo v6, "android.media.IMediaCasService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/IMediaCasService$Stub;->createDescrambler(I)Landroid/media/IDescrambler;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/media/IDescrambler;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
