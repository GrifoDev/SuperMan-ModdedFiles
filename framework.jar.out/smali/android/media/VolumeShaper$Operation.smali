.class public final Landroid/media/VolumeShaper$Operation;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation$1;,
        Landroid/media/VolumeShaper$Operation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumeShaper$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_CREATE_IF_NEEDED:I = 0x10

.field private static final FLAG_DEFER:I = 0x8

.field private static final FLAG_JOIN:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_PUBLIC_ALL:I = 0x3

.field private static final FLAG_REVERSE:I = 0x1

.field private static final FLAG_TERMINATE:I = 0x2

.field public static final PLAY:Landroid/media/VolumeShaper$Operation;

.field public static final REVERSE:Landroid/media/VolumeShaper$Operation;


# instance fields
.field private final mFlags:I

.field private final mReplaceId:I

.field private final mXOffset:F


# direct methods
.method static synthetic -get0(Landroid/media/VolumeShaper$Operation;)I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    return v0
.end method

.method static synthetic -get1(Landroid/media/VolumeShaper$Operation;)I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/VolumeShaper$Operation;)F
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->reverse()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    new-instance v0, Landroid/media/VolumeShaper$Operation$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iput p2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iput p3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return-void
.end method

.method synthetic constructor <init>(IIFLandroid/media/VolumeShaper$Operation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/media/VolumeShaper$Operation;

    if-nez v3, :cond_0

    return v2

    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/VolumeShaper$Operation;

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iget v4, v0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iget v4, v0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iget v4, v0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VolumeShaper.Operation{mFlags = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mReplaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mXOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
