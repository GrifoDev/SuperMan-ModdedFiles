.class final Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState$1;
.super Ljava/lang/Object;
.source "RtlCompatibleViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
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
        "Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
    .locals 2

    new-instance v0, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
    .locals 1

    new-array v0, p1, [Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState$1;->newArray(I)[Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    move-result-object v0

    return-object v0
.end method
