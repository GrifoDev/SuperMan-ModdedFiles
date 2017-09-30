.class public final Lcom/android/contacts/common/logging/SearchState;
.super Ljava/lang/Object;

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
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


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

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->d:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->e:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->f:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->g:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->d:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->e:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->f:I

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->g:I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/logging/SearchState;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->g:I

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

    invoke-static {p0}, Lcom/google/a/a/d;->a(Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "queryLength"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "numPartitions"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "numResults"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "numResultsInSelectedPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "selectedPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "selectedIndexInPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "selectedIndex"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/d$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
