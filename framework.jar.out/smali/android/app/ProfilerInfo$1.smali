.class final Landroid/app/ProfilerInfo$1;
.super Ljava/lang/Object;
.source "ProfilerInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ProfilerInfo;
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
        "Landroid/app/ProfilerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ProfilerInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v0, Landroid/app/ProfilerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ProfilerInfo;-><init>(Landroid/os/Parcel;Landroid/app/ProfilerInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/app/ProfilerInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ProfilerInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ProfilerInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 76
    new-array v0, p1, [Landroid/app/ProfilerInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/app/ProfilerInfo$1;->newArray(I)[Landroid/app/ProfilerInfo;

    move-result-object v0

    return-object v0
.end method
