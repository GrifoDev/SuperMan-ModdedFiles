.class final Landroid/app/ActivityManager$MemoryInfo$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$MemoryInfo;
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
        "Landroid/app/ActivityManager$MemoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2783
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>(Landroid/os/Parcel;Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2782
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$MemoryInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$MemoryInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2786
    new-array v0, p1, [Landroid/app/ActivityManager$MemoryInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2785
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$MemoryInfo$1;->newArray(I)[Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    return-object v0
.end method
