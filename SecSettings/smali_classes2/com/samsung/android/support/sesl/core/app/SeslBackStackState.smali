.class final Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransitionStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mReorderingAllowed:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v5, v0, 0x6

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    iget-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v3

    :goto_0
    if-lt v2, v0, :cond_1

    iget v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransition:I

    iget v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    iput v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransitionStyle:I

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mName:Ljava/lang/String;

    iget v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    iput v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mIndex:I

    iget v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    iput v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleRes:I

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleRes:I

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mReorderingAllowed:Z

    return-void

    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Not on back stack"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    iget v6, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    aput v6, v5, v4

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    iget-object v5, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v5, :cond_2

    const/4 v5, -0x1

    :goto_1
    aput v5, v6, v3

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    iget v6, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    aput v6, v5, v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    iget v6, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    aput v6, v5, v3

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    iget v6, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    aput v6, v5, v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    iget v6, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    aput v6, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v5, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    .locals 10

    const/4 v9, 0x1

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    array-length v7, v7

    if-lt v5, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransition:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    iget v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransitionStyle:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mName:Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mIndex:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    iput-boolean v9, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    iget v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleRes:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleRes:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mReorderingAllowed:Z

    iput-boolean v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->bumpBackStackNesting(I)V

    return-object v0

    :cond_0
    new-instance v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    aget v7, v7, v5

    iput v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    sget-boolean v7, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v7, :cond_1

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    aget v2, v7, v6

    if-gez v2, :cond_2

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    aget v7, v7, v5

    iput v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    aget v7, v7, v6

    iput v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    aget v7, v7, v5

    iput v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    aget v7, v7, v6

    iput v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    iget v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    iget v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    iget v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    iget v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    iput v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Instantiate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " op #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " base fragment #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SeslFragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v7, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object v1, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mOps:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransition:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->mReorderingAllowed:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
