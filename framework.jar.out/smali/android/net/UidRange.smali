.class public final Landroid/net/UidRange;
.super Ljava/lang/Object;
.source "UidRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UidRange$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final start:I

.field public final stop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/net/UidRange$1;

    invoke-direct {v0}, Landroid/net/UidRange$1;-><init>()V

    .line 99
    sput-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "startUid"    # I
    .param p2, "stopUid"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid start UID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid stop UID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid UID range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    iput p1, p0, Landroid/net/UidRange;->start:I

    .line 40
    iput p2, p0, Landroid/net/UidRange;->stop:I

    .line 35
    return-void
.end method

.method public static createForUser(I)Landroid/net/UidRange;
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const v3, 0x186a0

    .line 44
    new-instance v0, Landroid/net/UidRange;

    mul-int v1, p0, v3

    add-int/lit8 v2, p0, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public contains(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    iget v1, p0, Landroid/net/UidRange;->start:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Landroid/net/UidRange;->stop:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsRange(Landroid/net/UidRange;)Z
    .locals 3
    .param p1, "other"    # Landroid/net/UidRange;

    .prologue
    const/4 v0, 0x0

    .line 59
    iget v1, p0, Landroid/net/UidRange;->start:I

    iget v2, p1, Landroid/net/UidRange;->start:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Landroid/net/UidRange;->stop:I

    iget v2, p0, Landroid/net/UidRange;->stop:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p0, p1, :cond_0

    .line 73
    return v1

    .line 75
    :cond_0
    instance-of v3, p1, Landroid/net/UidRange;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 76
    check-cast v0, Landroid/net/UidRange;

    .line 77
    .local v0, "other":Landroid/net/UidRange;
    iget v3, p0, Landroid/net/UidRange;->start:I

    iget v4, v0, Landroid/net/UidRange;->start:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/net/UidRange;->stop:I

    iget v4, v0, Landroid/net/UidRange;->stop:I

    if-ne v3, v4, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 79
    .end local v0    # "other":Landroid/net/UidRange;
    :cond_2
    return v2
.end method

.method public getStartUser()I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Landroid/net/UidRange;->start:I

    const v1, 0x186a0

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 65
    iget v1, p0, Landroid/net/UidRange;->start:I

    add-int/lit16 v0, v1, 0x20f

    .line 66
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/UidRange;->stop:I

    add-int v0, v1, v2

    .line 67
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/net/UidRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/UidRange;->stop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 95
    iget v0, p0, Landroid/net/UidRange;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Landroid/net/UidRange;->stop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void
.end method
