.class public Lcom/samsung/android/knox/keystore/CertificateProfile;
.super Ljava/lang/Object;
.source "CertificateProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/CertificateProfile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alias:Ljava/lang/String;

.field public allowAllPackages:Z

.field public allowRawSigning:Z

.field public allowWiFi:Z

.field public isCSRResponse:Z

.field public packageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CertificateProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    .line 104
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 112
    goto :goto_0

    :cond_1
    move v0, v2

    .line 115
    goto :goto_1

    :cond_2
    move v0, v2

    .line 116
    goto :goto_2

    :cond_3
    move v1, v2

    .line 117
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/CertificateProfile;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_1

    :cond_2
    move v0, v2

    .line 97
    goto :goto_2

    :cond_3
    move v1, v2

    .line 98
    goto :goto_3
.end method
