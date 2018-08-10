.class final Lcom/android/internal/telephony/cat/CatEventDownload$1;
.super Ljava/lang/Object;
.source "CatEventDownload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatEventDownload;
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
        "Lcom/android/internal/telephony/cat/CatEventDownload;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatEventDownload;
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sparse-switch v1, :sswitch_data_0

    new-instance v5, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/16 v6, 0xfe

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    return-object v5

    :sswitch_0
    new-instance v5, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v5, v1}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    return-object v5

    :sswitch_1
    new-instance v5, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v5, v1, v3}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(ILjava/lang/String;)V

    return-object v5

    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v5, v1, v0}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(II)V

    return-object v5

    :sswitch_3
    new-instance v5, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v5, v1, v4, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(IILjava/lang/String;)V

    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x17 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatEventDownload;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/CatEventDownload;
    .locals 1

    new-array v0, p1, [Lcom/android/internal/telephony/cat/CatEventDownload;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload$1;->newArray(I)[Lcom/android/internal/telephony/cat/CatEventDownload;

    move-result-object v0

    return-object v0
.end method
