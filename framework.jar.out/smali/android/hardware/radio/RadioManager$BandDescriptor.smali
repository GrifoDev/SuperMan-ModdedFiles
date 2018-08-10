.class public Landroid/hardware/radio/RadioManager$BandDescriptor;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$BandDescriptor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLowerLimit:I

.field private final mRegion:I

.field private final mSpacing:I

.field private final mType:I

.field private final mUpperLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$BandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    iput p2, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    iput p3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    iput p4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    iput p5, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    return v4
.end method

.method public getLowerLimit()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    return v0
.end method

.method public getRegion()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget v2, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    add-int v1, v2, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BandDescriptor [mRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
