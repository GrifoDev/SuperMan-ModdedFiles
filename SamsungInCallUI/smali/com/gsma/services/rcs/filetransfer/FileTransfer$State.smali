.class public final enum Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum b:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum c:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum d:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum e:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum f:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum g:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum h:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum i:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum j:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum k:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum l:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field private static n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic o:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;


# instance fields
.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "INVITED"

    invoke-direct {v1, v2, v0, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->a:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "ACCEPTING"

    invoke-direct {v1, v2, v5, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->b:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "REJECTED"

    invoke-direct {v1, v2, v6, v6}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->c:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "QUEUED"

    invoke-direct {v1, v2, v7, v7}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->d:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "INITIATING"

    invoke-direct {v1, v2, v8, v8}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->e:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "STARTED"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->f:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "PAUSED"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->g:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "ABORTED"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->h:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "TRANSFERRED"

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->i:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "FAILED"

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->j:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "DELIVERED"

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->k:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v2, "DISPLAYED"

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->l:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->a:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v2, v1, v0

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->b:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->c:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v2, v1, v6

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->d:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v2, v1, v7

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->e:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->f:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->g:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->h:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->i:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->j:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->k:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->l:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    aput-object v3, v1, v2

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->o:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->n:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->n:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->a()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->m:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->o:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->m:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
