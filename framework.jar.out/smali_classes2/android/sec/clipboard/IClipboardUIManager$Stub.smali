.class public abstract Landroid/sec/clipboard/IClipboardUIManager$Stub;
.super Landroid/os/Binder;
.source "IClipboardUIManager.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardUIManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardUIManager"

.field static final TRANSACTION_dismiss:I = 0x2

.field static final TRANSACTION_isShowing:I = 0x3

.field static final TRANSACTION_setPasteTargetViewType:I = 0x4

.field static final TRANSACTION_show:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.sec.clipboard.IClipboardUIManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/sec/clipboard/IClipboardUIManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v5, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->show(ILandroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_2
    const-string/jumbo v5, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->dismiss(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->isShowing()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_4
    const-string/jumbo v5, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
