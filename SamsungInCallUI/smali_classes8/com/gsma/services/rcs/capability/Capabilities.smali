.class public Lcom/gsma/services/rcs/capability/Capabilities;
.super Ljava/lang/Object;
.source "Capabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAPABILITY_FILE_TRANSFER_SUPPORT:I = 0x1

.field public static final CAPABILITY_GEOLOC_PUSH_SUPPORT:I = 0x4

.field public static final CAPABILITY_IMAGE_SHARING_SUPPORT:I = 0x8

.field public static final CAPABILITY_IM_SUPPORT:I = 0x2

.field public static final CAPABILITY_VIDEO_SHARING_SUPPORT:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEATURE_NONE:I


# instance fields
.field private mAutomata:Z

.field private mExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatures:I

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/capability/Capabilities$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/capability/Capabilities$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;ZJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZJZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    iput p1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    iput-object p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    iput-wide p4, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    return-wide v0
.end method

.method public hasCapabilities(I)Z
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutomata()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    return v0
.end method

.method public isExtensionSupported(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Capabilities{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAutomata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :goto_0
    iget-boolean v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
