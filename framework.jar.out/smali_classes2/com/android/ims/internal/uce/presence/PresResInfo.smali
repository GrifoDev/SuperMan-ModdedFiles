.class public Lcom/android/ims/internal/uce/presence/PresResInfo;
.super Ljava/lang/Object;
.source "PresResInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresResInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresResInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

.field private mResUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresResInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresResInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceInfo()Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-object v0
.end method

.method public getResUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    const-class v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setInstanceInfo(Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-void
.end method

.method public setResUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
