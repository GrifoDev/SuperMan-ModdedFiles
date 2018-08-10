.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModelEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field public final soundModelHandle:I

.field public final status:I


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    .locals 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    new-instance v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    invoke-direct {v3, v2, v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;-><init>(II[B)V

    return-object v3
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
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    add-int v1, v2, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SoundModelEvent [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", soundModelHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    return-void
.end method
