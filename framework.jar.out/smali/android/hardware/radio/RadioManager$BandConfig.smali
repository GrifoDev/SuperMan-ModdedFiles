.class public Landroid/hardware/radio/RadioManager$BandConfig;
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
    name = "BandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$BandConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$BandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioManager$BandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIII)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;)V

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
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$BandConfig;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$BandConfig;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandConfig;->getDescriptor()Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    return v4
.end method

.method getDescriptor()Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public getLowerLimit()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v0

    return v0
.end method

.method public getRegion()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v0

    return v0
.end method

.method public getSpacing()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v0

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BandConfig [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
