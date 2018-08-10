.class public Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperSlowRegion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion$1;
    }
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final CANCELED_REGION:I

.field public final NORMAL_REGION:I

.field public final TITLE_REGION:I

.field endTime:I

.field startTime:I

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion$1;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->CANCELED_REGION:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->TITLE_REGION:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->NORMAL_REGION:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->startTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->endTime:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->endTime:I

    return v0
.end method

.method public getRegionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->type:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->startTime:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->endTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
