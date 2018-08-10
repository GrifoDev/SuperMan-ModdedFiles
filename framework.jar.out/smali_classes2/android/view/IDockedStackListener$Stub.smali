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

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.IDockedStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDockedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.view.IDockedStackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IDockedStackListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/IDockedStackListener;

    return-object v0

    :cond_1
    new-instance v1, Landroid/view/IDockedStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDockedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/IDockedStackListener$Stub;->onDividerVisibilityChanged(Z)V

    return v6

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/IDockedStackListener$Stub;->onDockedStackExistsChanged(Z)V

    return v6

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/IDockedStackListener$Stub;->onDockedStackMinimizedChanged(ZJZ)V

    return v6

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :sswitch_4
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IDockedStackListener$Stub;->onAdjustedForImeChanged(ZJ)V

    return v6

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :sswitch_5
    const-string/jumbo v5, "android.view.IDockedStackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/IDockedStackListener$Stub;->onDockSideChanged(I)V

    return v6

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
