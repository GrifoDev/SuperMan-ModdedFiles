.class public final enum Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;",
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
            "Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum b:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum c:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum d:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum e:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum f:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum g:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum h:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field private static final synthetic j:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;


# instance fields
.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "INVITED"

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->a:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "INITIATING"

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->b:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->c:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "ABORTED"

    invoke-direct {v0, v1, v7, v7}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->d:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v8, v8}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->e:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "REJECTED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->f:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "RINGING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->g:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "ACCEPTING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->h:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->a:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->b:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->c:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->d:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->e:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->f:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->g:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->h:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->j:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->j:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->i:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
