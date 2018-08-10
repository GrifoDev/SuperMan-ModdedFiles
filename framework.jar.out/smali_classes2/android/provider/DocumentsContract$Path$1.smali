.class final Landroid/provider/DocumentsContract$Path$1;
.super Ljava/lang/Object;
.source "DocumentsContract.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DocumentsContract$Path;
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
        "Landroid/provider/DocumentsContract$Path;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/provider/DocumentsContract$Path;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Landroid/provider/DocumentsContract$Path;

    invoke-direct {v2, v1, v0}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/provider/DocumentsContract$Path$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/DocumentsContract$Path;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/provider/DocumentsContract$Path;
    .locals 1

    new-array v0, p1, [Landroid/provider/DocumentsContract$Path;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/provider/DocumentsContract$Path$1;->newArray(I)[Landroid/provider/DocumentsContract$Path;

    move-result-object v0

    return-object v0
.end method
