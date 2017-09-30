.class public final enum Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
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
            "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum b:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum c:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum d:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum e:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field private static g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v2, "UNSUPPORTED"

    invoke-direct {v1, v2, v0, v0}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->a:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v2, "NOT_DELIVERED"

    invoke-direct {v1, v2, v3, v3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->b:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v2, "DELIVERED"

    invoke-direct {v1, v2, v4, v4}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->c:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v2, "DISPLAYED"

    invoke-direct {v1, v2, v5, v5}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->d:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v2, "FAILED"

    invoke-direct {v1, v2, v6, v6}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->e:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->a:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v2, v1, v0

    sget-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->b:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v2, v1, v3

    sget-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->c:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v2, v1, v4

    sget-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->d:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v2, v1, v5

    sget-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->e:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v2, v1, v6

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->h:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->g:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->a()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->h:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->f:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
