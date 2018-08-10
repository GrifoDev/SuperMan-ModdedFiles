.class final Lcom/sec/ims/presence/Constants$ListType$1;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/Constants$ListType;
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
        "Lcom/sec/ims/presence/Constants$ListType;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/presence/Constants$ListType;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/presence/Constants$ListType;->valueOf(Ljava/lang/String;)Lcom/sec/ims/presence/Constants$ListType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/presence/Constants$ListType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/presence/Constants$ListType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/ims/presence/Constants$ListType;
    .locals 1

    new-array v0, p1, [Lcom/sec/ims/presence/Constants$ListType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/presence/Constants$ListType$1;->newArray(I)[Lcom/sec/ims/presence/Constants$ListType;

    move-result-object v0

    return-object v0
.end method
