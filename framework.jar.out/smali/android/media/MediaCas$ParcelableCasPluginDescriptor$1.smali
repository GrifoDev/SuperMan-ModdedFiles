.class final Landroid/media/MediaCas$ParcelableCasPluginDescriptor$1;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas$ParcelableCasPluginDescriptor;
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
        "Landroid/media/MediaCas$ParcelableCasPluginDescriptor;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaCas$ParcelableCasPluginDescriptor;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/media/MediaCas$ParcelableCasPluginDescriptor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/media/MediaCas$ParcelableCasPluginDescriptor;-><init>(ILjava/lang/String;Landroid/media/MediaCas$ParcelableCasPluginDescriptor;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/MediaCas$ParcelableCasPluginDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaCas$ParcelableCasPluginDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/MediaCas$ParcelableCasPluginDescriptor;
    .locals 1

    new-array v0, p1, [Landroid/media/MediaCas$ParcelableCasPluginDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/MediaCas$ParcelableCasPluginDescriptor$1;->newArray(I)[Landroid/media/MediaCas$ParcelableCasPluginDescriptor;

    move-result-object v0

    return-object v0
.end method
