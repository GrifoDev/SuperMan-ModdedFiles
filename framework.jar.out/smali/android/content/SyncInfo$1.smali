.class final Landroid/content/SyncInfo$1;
.super Ljava/lang/Object;
.source "SyncInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncInfo;
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
        "Landroid/content/SyncInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/SyncInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 105
    new-instance v0, Landroid/content/SyncInfo;

    invoke-direct {v0, p1}, Landroid/content/SyncInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Landroid/content/SyncInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/SyncInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/SyncInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    new-array v0, p1, [Landroid/content/SyncInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/content/SyncInfo$1;->newArray(I)[Landroid/content/SyncInfo;

    move-result-object v0

    return-object v0
.end method
