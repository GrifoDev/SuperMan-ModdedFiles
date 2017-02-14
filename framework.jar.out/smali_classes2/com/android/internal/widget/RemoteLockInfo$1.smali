.class final Lcom/android/internal/widget/RemoteLockInfo$1;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RemoteLockInfo;
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
        "Lcom/android/internal/widget/RemoteLockInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/RemoteLockInfo;
    .locals 14

    const/4 v11, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v13, v11, [Z

    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v2, v13, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v4

    new-array v12, v11, [Z

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v5, v12, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJILcom/android/internal/widget/RemoteLockInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RemoteLockInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1

    new-array v0, p1, [Lcom/android/internal/widget/RemoteLockInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RemoteLockInfo$1;->newArray(I)[Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    return-object v0
.end method
