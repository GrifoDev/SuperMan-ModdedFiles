.class Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState$1;
.super Ljava/lang/Object;
.source "SeslDrawerLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;
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
        "Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState$1;->newArray(I)[Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    move-result-object v0

    return-object v0
.end method
