.class public abstract Landroid/os/IPermissionMonitor$Stub;
.super Landroid/os/Binder;
.source "IPermissionMonitor.java"

# interfaces
.implements Landroid/os/IPermissionMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPermissionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPermissionMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPermissionMonitor"

.field static final TRANSACTION_sendAPMEnforcing:I = 0x5

.field static final TRANSACTION_sendAPMMediaNotification:I = 0x2

.field static final TRANSACTION_sendAPMNotification:I = 0x1

.field static final TRANSACTION_sendAPMSMSNotification:I = 0x3

.field static final TRANSACTION_sendAPMSnapShotNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IPermissionMonitor"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPermissionMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionMonitor;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.os.IPermissionMonitor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPermissionMonitor;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IPermissionMonitor;

    return-object v0

    :cond_1
    new-instance v1, Landroid/os/IPermissionMonitor$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPermissionMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "android.os.IPermissionMonitor"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string/jumbo v1, "android.os.IPermissionMonitor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {p0, v2, v3, v13}, Landroid/os/IPermissionMonitor$Stub;->sendAPMNotification(III)V

    const/4 v1, 0x1

    return v1

    :sswitch_2
    const-string/jumbo v1, "android.os.IPermissionMonitor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/os/IPermissionMonitor$Stub;->sendAPMMediaNotification(IILjava/lang/String;II)V

    const/4 v1, 0x1

    return v1

    :sswitch_3
    const-string/jumbo v1, "android.os.IPermissionMonitor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v7, p0

    move v8, v2

    move v9, v3

    move-object v10, v4

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/os/IPermissionMonitor$Stub;->sendAPMSMSNotification(IILjava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    return v1

    :sswitch_4
    const-string/jumbo v1, "android.os.IPermissionMonitor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/os/IPermissionMonitor$Stub;->sendAPMSnapShotNotification(IILjava/lang/String;II)V

    const/4 v1, 0x1

    return v1

    :sswitch_5
    const-string/jumbo v1, "android.os.IPermissionMonitor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {p0, v2, v3, v13}, Landroid/os/IPermissionMonitor$Stub;->sendAPMEnforcing(III)V

    const/4 v1, 0x1

    return v1

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
