.class public final Landroid/service/resolver/ResolverTarget;
.super Ljava/lang/Object;
.source "ResolverTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resolver/ResolverTarget$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ResolverTarget"


# instance fields
.field private mChooserScore:F

.field private mLaunchScore:F

.field private mRecencyScore:F

.field private mSelectProbability:F

.field private mTimeSpentScore:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/resolver/ResolverTarget$1;

    invoke-direct {v0}, Landroid/service/resolver/ResolverTarget$1;-><init>()V

    sput-object v0, Landroid/service/resolver/ResolverTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChooserScore()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    return v0
.end method

.method public getLaunchScore()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    return v0
.end method

.method public getRecencyScore()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    return v0
.end method

.method public getSelectProbability()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    return v0
.end method

.method public getTimeSpentScore()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    return v0
.end method

.method public setChooserScore(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    return-void
.end method

.method public setLaunchScore(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    return-void
.end method

.method public setRecencyScore(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    return-void
.end method

.method public setSelectProbability(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    return-void
.end method

.method public setTimeSpentScore(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ResolverTarget{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

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

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
