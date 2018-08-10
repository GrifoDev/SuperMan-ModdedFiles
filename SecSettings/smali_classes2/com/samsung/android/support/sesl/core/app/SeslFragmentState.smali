.class final Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
.super Ljava/lang/Object;
.source "SeslFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mIndex:I

.field mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFromLayout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFragmentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mContainerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mRetainInstance:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mDetached:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mClassName:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mIndex:I

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFromLayout:Z

    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFragmentId:I

    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mContainerId:I

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mTag:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mRetainInstance:Z

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mDetached:Z

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mHidden:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFromLayout:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mFragmentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mRetainInstance:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mDetached:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mHidden:Z

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
