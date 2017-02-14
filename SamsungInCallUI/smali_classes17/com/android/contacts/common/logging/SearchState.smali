.class public final Lcom/android/contacts/common/logging/SearchState;
.super Ljava/lang/Object;
.source "SearchState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/logging/SearchState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numPartitions:I

.field public numResults:I

.field public numResultsInSelectedPartition:I

.field public queryLength:I

.field public selectedIndex:I

.field public selectedIndexInPartition:I

.field public selectedPartition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/logging/SearchState$1;

    invoke-direct {v0}, Lcom/android/contacts/common/logging/SearchState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/logging/SearchState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/logging/SearchState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->queryLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numPartitions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResults:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "queryLength"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->queryLength:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "numPartitions"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->numPartitions:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "numResults"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->numResults:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "numResultsInSelectedPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "selectedPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "selectedIndexInPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "selectedIndex"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->queryLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->numPartitions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
