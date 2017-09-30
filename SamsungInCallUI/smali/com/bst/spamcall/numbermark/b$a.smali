.class public abstract Lcom/bst/spamcall/numbermark/b$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/bst/spamcall/numbermark/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bst/spamcall/numbermark/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/spamcall/numbermark/b$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/bst/spamcall/numbermark/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.bst.spamcall.numbermark.IGetNumMarkService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bst/spamcall/numbermark/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bst/spamcall/numbermark/b;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bst/spamcall/numbermark/b$a$a;

    invoke-direct {v0, p0}, Lcom/bst/spamcall/numbermark/b$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v1, "com.bst.spamcall.numbermark.IGetNumMarkService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "com.bst.spamcall.numbermark.IGetNumMarkService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bst/spamcall/numbermark/a$a;->asInterface(Landroid/os/IBinder;)Lcom/bst/spamcall/numbermark/a;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/bst/spamcall/numbermark/b$a;->a(Ljava/lang/String;ILcom/bst/spamcall/numbermark/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
