.class public abstract Landroid/view/IAssetAtlas$Stub;
.super Landroid/os/Binder;
.source "IAssetAtlas.java"

# interfaces
.implements Landroid/view/IAssetAtlas;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IAssetAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IAssetAtlas$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IAssetAtlas"

.field static final TRANSACTION_getBuffer:I = 0x2

.field static final TRANSACTION_getMap:I = 0x3

.field static final TRANSACTION_isCompatible:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string/jumbo v0, "android.view.IAssetAtlas"

    invoke-virtual {p0, p0, v0}, Landroid/view/IAssetAtlas$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IAssetAtlas;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 32
    return-object v1

    .line 34
    :cond_0
    const-string/jumbo v1, "android.view.IAssetAtlas"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IAssetAtlas;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Landroid/view/IAssetAtlas;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 38
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IAssetAtlas$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IAssetAtlas$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 50
    :sswitch_0
    const-string/jumbo v4, "android.view.IAssetAtlas"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v5

    .line 55
    :sswitch_1
    const-string/jumbo v6, "android.view.IAssetAtlas"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IAssetAtlas$Stub;->isCompatible(I)Z

    move-result v2

    .line 59
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v5

    .line 65
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.view.IAssetAtlas"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/view/IAssetAtlas$Stub;->getBuffer()Landroid/view/GraphicBuffer;

    move-result-object v1

    .line 67
    .local v1, "_result":Landroid/view/GraphicBuffer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v1, p3, v5}, Landroid/view/GraphicBuffer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    :goto_0
    return v5

    .line 73
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v1    # "_result":Landroid/view/GraphicBuffer;
    :sswitch_3
    const-string/jumbo v4, "android.view.IAssetAtlas"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/view/IAssetAtlas$Stub;->getMap()[J

    move-result-object v3

    .line 81
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 83
    return v5

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
