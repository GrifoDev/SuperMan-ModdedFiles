.class public Landroid/content/pm/InstrumentationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "InstrumentationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstrumentationInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public credentialProtectedDataDir:Ljava/lang/String;

.field public dataDir:Ljava/lang/String;

.field public deviceProtectedDataDir:Ljava/lang/String;

.field public functionalTest:Z

.field public handleProfiling:Z

.field public nativeLibraryDir:Ljava/lang/String;

.field public publicSourceDir:Ljava/lang/String;

.field public secondaryNativeLibraryDir:Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field public splitNames:[Ljava/lang/String;

.field public splitPublicSourceDirs:[Ljava/lang/String;

.field public splitSourceDirs:[Ljava/lang/String;

.field public targetPackage:Ljava/lang/String;

.field public targetProcesses:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/InstrumentationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstrumentationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/InstrumentationInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    iget-boolean v0, p1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/InstrumentationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public copyTo(Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InstrumentationInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
