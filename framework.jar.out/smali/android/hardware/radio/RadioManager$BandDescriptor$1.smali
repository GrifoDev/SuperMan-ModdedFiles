.class final Landroid/hardware/radio/RadioManager$BandDescriptor$1;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$BandDescriptor;
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
        "Landroid/hardware/radio/RadioManager$BandDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 391
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 395
    new-array v0, p1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;->newArray(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v0

    return-object v0
.end method
