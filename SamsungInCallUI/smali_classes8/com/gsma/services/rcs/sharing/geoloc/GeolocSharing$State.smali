.class public final enum Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
.super Ljava/lang/Enum;
.source "GeolocSharing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final enum ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final enum ACCEPTING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final enum INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final enum INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final enum RINGING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final enum STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field public static final enum TRANSFERRED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "INVITED"

    invoke-direct {v2, v3, v1, v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "INITIATING"

    invoke-direct {v2, v3, v6, v6}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "STARTED"

    invoke-direct {v2, v3, v7, v7}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "ABORTED"

    invoke-direct {v2, v3, v8, v8}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "FAILED"

    invoke-direct {v2, v3, v9, v9}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->FAILED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "TRANSFERRED"

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->TRANSFERRED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "REJECTED"

    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "RINGING"

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const-string v3, "ACCEPTING"

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ACCEPTING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    const/16 v2, 0x9

    new-array v2, v2, [Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v3, v2, v1

    sget-object v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v3, v2, v6

    sget-object v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v3, v2, v7

    sget-object v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v3, v2, v8

    sget-object v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->FAILED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->TRANSFERRED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ACCEPTING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    aput-object v4, v2, v3

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->$VALUES:[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->values()[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State$1;

    invoke-direct {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State$1;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->mState:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .locals 4

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->$VALUES:[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->mState:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
