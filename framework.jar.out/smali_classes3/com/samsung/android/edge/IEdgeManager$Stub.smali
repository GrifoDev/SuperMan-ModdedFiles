.class public abstract Lcom/samsung/android/edge/IEdgeManager$Stub;
.super Landroid/os/Binder;
.source "IEdgeManager.java"

# interfaces
.implements Lcom/samsung/android/edge/IEdgeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/IEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/IEdgeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.edge.IEdgeManager"

.field static final TRANSACTION_bindEdgeLightingService:I = 0x1

.field static final TRANSACTION_cancelEdgeLighting:I = 0x4

.field static final TRANSACTION_edgeLighting:I = 0x3

.field static final TRANSACTION_getEdgeLightingState:I = 0x5

.field static final TRANSACTION_unbindEdgeLightingService:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.edge.IEdgeManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/edge/IEdgeManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/edge/IEdgeManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/edge/IEdgeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/edge/IEdgeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 43
    :sswitch_0
    const-string/jumbo v8, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v9

    .line 48
    :sswitch_1
    const-string/jumbo v8, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 58
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/edge/IEdgeManager$Stub;->bindEdgeLightingService(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v9

    .line 56
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2
    const-string/jumbo v8, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/edge/IEdgeManager$Stub;->unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v9

    .line 75
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v8, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 80
    sget-object v8, Lcom/samsung/android/edge/SemEdgeLightingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 86
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 87
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v4, v6}, Lcom/samsung/android/edge/IEdgeManager$Stub;->edgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v9

    .line 83
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg1":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    goto :goto_1

    .line 93
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    :sswitch_4
    const-string/jumbo v8, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 98
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/edge/IEdgeManager$Stub;->cancelEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v9

    .line 104
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :sswitch_5
    const-string/jumbo v8, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/edge/IEdgeManager$Stub;->getEdgeLightingState()I

    move-result v7

    .line 106
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v9

    .line 39
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
