.class public Lcom/android/internal/app/procstats/ProcStatsCollection;
.super Ljava/lang/Object;
.source "ProcStatsCollection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcStatsCollection$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/procstats/ProcStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL_BG_TOTAL:I = 0x1

.field public static final LABEL_TOTAL:I


# instance fields
.field public Label:[Ljava/lang/String;

.field public avgPss:[J

.field public avgUss:[J

.field public hasExtra:Z

.field private installed_app:I

.field public maxPss:[J

.field public maxUss:[J

.field public minPss:[J

.field public minUss:[J

.field public percentage:[D

.field public procName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/android/internal/app/procstats/ProcStatsCollection$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcStatsCollection$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcStatsCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->hasExtra:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->procName:Ljava/lang/String;

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->Label:[Ljava/lang/String;

    .line 37
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->percentage:[D

    .line 38
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minPss:[J

    .line 39
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgPss:[J

    .line 40
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxPss:[J

    .line 41
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minUss:[J

    .line 42
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgUss:[J

    .line 43
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxUss:[J

    .line 44
    iput v2, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->installed_app:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->hasExtra:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->procName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->Label:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->percentage:[D

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minPss:[J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgPss:[J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxPss:[J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minUss:[J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgUss:[J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxUss:[J

    .line 47
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public GetInstalledAppCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->installed_app:I

    return v0
.end method

.method public SetInstalledAppCount(I)V
    .locals 0
    .param p1, "apps"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->installed_app:I

    .line 61
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getAvgPss()[J
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgPss:[J

    return-object v0
.end method

.method public getAvgUss()[J
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgUss:[J

    return-object v0
.end method

.method public getLabel()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->Label:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPss()[J
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxPss:[J

    return-object v0
.end method

.method public getMaxUss()[J
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxUss:[J

    return-object v0
.end method

.method public getMinPss()[J
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minPss:[J

    return-object v0
.end method

.method public getMinUss()[J
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minUss:[J

    return-object v0
.end method

.method public getPercentage()[D
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->percentage:[D

    return-object v0
.end method

.method public getProcName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->procName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgPss([J)V
    .locals 1
    .param p1, "_avgPss"    # [J

    .prologue
    .line 116
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgPss:[J

    .line 114
    return-void
.end method

.method public setAvgUss([J)V
    .locals 1
    .param p1, "_avgUss"    # [J

    .prologue
    .line 146
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgUss:[J

    .line 144
    return-void
.end method

.method public setLabel([Ljava/lang/String;)V
    .locals 1
    .param p1, "_Label"    # [Ljava/lang/String;

    .prologue
    .line 86
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->Label:[Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setMaxPss([J)V
    .locals 1
    .param p1, "_maxPss"    # [J

    .prologue
    .line 126
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxPss:[J

    .line 124
    return-void
.end method

.method public setMaxUss([J)V
    .locals 1
    .param p1, "_maxUss"    # [J

    .prologue
    .line 156
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxUss:[J

    .line 154
    return-void
.end method

.method public setMinPss([J)V
    .locals 1
    .param p1, "_minPss"    # [J

    .prologue
    .line 106
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minPss:[J

    .line 104
    return-void
.end method

.method public setMinUss([J)V
    .locals 1
    .param p1, "_minUss"    # [J

    .prologue
    .line 136
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minUss:[J

    .line 134
    return-void
.end method

.method public setPercentage([D)V
    .locals 1
    .param p1, "_percentage"    # [D

    .prologue
    .line 96
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->percentage:[D

    .line 94
    return-void
.end method

.method public setProcName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_procName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->procName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->hasExtra:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->procName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->Label:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->percentage:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->minUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->avgUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcStatsCollection;->maxUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 166
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
