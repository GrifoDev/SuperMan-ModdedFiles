.class final Landroid/view/PointerIcon$1;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/PointerIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v7

    return-object v7

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v4, Landroid/view/PointerIcon;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/view/PointerIcon;-><init>(ILandroid/view/PointerIcon;)V

    invoke-static {v4, v5}, Landroid/view/PointerIcon;->-set0(Landroid/view/PointerIcon;I)I

    return-object v4

    :cond_1
    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    const/16 v7, 0x4e20

    if-ne v6, v7, :cond_2

    invoke-static {v0, v2, v3}, Landroid/view/PointerIcon;->-wrap1(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v7

    return-object v7

    :cond_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    invoke-static {v0, v2, v3, v6}, Landroid/view/PointerIcon;->-wrap0(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v7

    return-object v7

    :cond_3
    invoke-static {v0, v2, v3}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/PointerIcon;
    .locals 1

    new-array v0, p1, [Landroid/view/PointerIcon;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->newArray(I)[Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method
