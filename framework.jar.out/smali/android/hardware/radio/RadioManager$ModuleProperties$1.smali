.class final Landroid/hardware/radio/RadioManager$ModuleProperties$1;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$ModuleProperties;
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
        "Landroid/hardware/radio/RadioManager$ModuleProperties;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 2

    new-instance v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ModuleProperties;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 1

    new-array v0, p1, [Landroid/hardware/radio/RadioManager$ModuleProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;->newArray(I)[Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object v0

    return-object v0
.end method
