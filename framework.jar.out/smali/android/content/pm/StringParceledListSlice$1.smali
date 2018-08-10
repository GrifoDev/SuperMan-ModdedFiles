.class final Landroid/content/pm/StringParceledListSlice$1;
.super Ljava/lang/Object;
.source "StringParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/StringParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Landroid/content/pm/StringParceledListSlice;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/StringParceledListSlice;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/content/pm/StringParceledListSlice;

    invoke-direct {v0, p1, v1, v1}, Landroid/content/pm/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/StringParceledListSlice;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/content/pm/StringParceledListSlice;
    .locals 2

    new-instance v0, Landroid/content/pm/StringParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/content/pm/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/StringParceledListSlice;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/pm/StringParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/StringParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/StringParceledListSlice;
    .locals 1

    new-array v0, p1, [Landroid/content/pm/StringParceledListSlice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/pm/StringParceledListSlice$1;->newArray(I)[Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    return-object v0
.end method
