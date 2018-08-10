.class public final Lcom/samsung/android/edge/EdgeLightingPolicy;
.super Ljava/lang/Object;
.source "EdgeLightingPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/EdgeLightingPolicy$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/edge/EdgeLightingPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_EXCLUDE_BLACK_LIST:I = 0x4

.field public static final TYPE_EXCLUDE_SYSTEM_APP:I = 0x2

.field public static final TYPE_INCLUDE_ALL_APP:I = 0x1

.field public static final TYPE_NOT_CONNECTED_MODE:I = 0x8


# instance fields
.field private mPolicyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/edge/EdgeLightingPolicy$1;

    invoke-direct {v0}, Lcom/samsung/android/edge/EdgeLightingPolicy$1;-><init>()V

    sput-object v0, Lcom/samsung/android/edge/EdgeLightingPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPolicyType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    return v0
.end method

.method public getPolicyVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    return-wide v0
.end method

.method public setPolicyType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    return-void
.end method

.method public setPolicyVersion(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EdgeLightingPolicy{Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
