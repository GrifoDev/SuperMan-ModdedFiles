.class public Landroid/util/MergedConfiguration;
.super Ljava/lang/Object;
.source "MergedConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MergedConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/util/MergedConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGlobalConfig:Landroid/content/res/Configuration;

.field private mMergedConfig:Landroid/content/res/Configuration;

.field private mOverrideConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/MergedConfiguration$1;

    invoke-direct {v0}, Landroid/util/MergedConfiguration$1;-><init>()V

    sput-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/MergedConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/MergedConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/MergedConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private updateMergedConfig()V
    .locals 2

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mGlobalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getMergedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    const-class v0, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    const-class v0, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    return-void
.end method

.method public setGlobalConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    return-void
.end method

.method public setOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    return-void
.end method

.method public setTo(Landroid/util/MergedConfiguration;)V
    .locals 2

    iget-object v0, p1, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mGlobalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset()V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
