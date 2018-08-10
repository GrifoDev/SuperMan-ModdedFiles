.class final Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;
.super Ljava/lang/Object;
.source "SeslFragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

.field mAdded:[I

.field mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

.field mNextFragmentIndex:I

.field mPrimaryNavActiveIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mPrimaryNavActiveIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mPrimaryNavActiveIndex:I

    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mNextFragmentIndex:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mNextFragmentIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
