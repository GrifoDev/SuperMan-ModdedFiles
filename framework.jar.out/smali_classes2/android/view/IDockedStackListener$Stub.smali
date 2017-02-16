.class public abstract Landroid/view/IDockedStackListener$Stub;
.super Landroid/os/Binder;
.source "IDockedStackListener.java"

# interfaces
.implements Landroid/view/IDockedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDockedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDockedStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDockedStackListener"

.field static final TRANSACTION_onAdjustedForImeChanged:I = 0x4

.field static final TRANSACTION_onDividerVisibilityChanged:I = 0x1

.field static final TRANSACTION_onDockSideChanged:I = 0x5

.field static final TRANSACTION_onDockedStackExistsChanged:I = 0x2

.field static final TRANSACTION_onDockedStackMinimizedChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.view.IDockedStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDockedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.view.IDockedStackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IDockedStackListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/view/IDockedStackListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IDockedStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDockedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 48
    :sswitch_0
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v4

    .line 53
    :sswitch_1
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 56
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/IDockedStackListener$Stub;->onDividerVisibilityChanged(Z)V

    .line 57
    return v4

    .line 61
    .end local v1    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 64
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/IDockedStackListener$Stub;->onDockedStackExistsChanged(Z)V

    .line 65
    return v4

    .line 69
    .end local v1    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .line 73
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 74
    .local v2, "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IDockedStackListener$Stub;->onDockedStackMinimizedChanged(ZJ)V

    .line 75
    return v4

    .line 71
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":J
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .line 79
    .end local v1    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 83
    .restart local v1    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 84
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IDockedStackListener$Stub;->onAdjustedForImeChanged(ZJ)V

    .line 85
    return v4

    .line 81
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":J
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1

    .line 89
    .end local v1    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IDockedStackListener$Stub;->onDockSideChanged(I)V

    .line 93
    return v4

    .line 44
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
