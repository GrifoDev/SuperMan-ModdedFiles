.class final Landroid/content/pm/InstantAppInfo$1;
.super Ljava/lang/Object;
.source "InstantAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/InstantAppInfo;
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
        "Landroid/content/pm/InstantAppInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/InstantAppInfo;
    .locals 2

    new-instance v0, Landroid/content/pm/InstantAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/InstantAppInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/pm/InstantAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/InstantAppInfo;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/InstantAppInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/pm/InstantAppInfo$1;->newArray(I)[Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    return-object v0
.end method
