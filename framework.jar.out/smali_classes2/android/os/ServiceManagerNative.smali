.class public abstract Landroid/os/ServiceManagerNative;
.super Landroid/os/Binder;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ServiceManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.os.IServiceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IServiceManager;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Landroid/os/ServiceManagerProxy;

    invoke-direct {v1, p0}, Landroid/os/ServiceManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v8

    :pswitch_1
    :try_start_0
    const-string/jumbo v6, "android.os.IServiceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v7

    :pswitch_2
    const-string/jumbo v6, "android.os.IServiceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/ServiceManagerNative;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v7

    :pswitch_3
    const-string/jumbo v6, "android.os.IServiceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v4, v5, v0}, Landroid/os/ServiceManagerNative;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    return v7

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_4
    const-string/jumbo v6, "android.os.IServiceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ServiceManagerNative;->listServices()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v7

    :pswitch_5
    const-string/jumbo v6, "android.os.IServiceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPermissionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionController;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/ServiceManagerNative;->setPermissionController(Landroid/os/IPermissionController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
