.class public Lcom/android/settings/search2/SavedQueryPayload;
.super Lcom/android/settings/search2/ResultPayload;
.source "SavedQueryPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search2/SavedQueryPayload$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/search2/SavedQueryPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/search2/SavedQueryPayload$1;

    invoke-direct {v0}, Lcom/android/settings/search2/SavedQueryPayload$1;-><init>()V

    sput-object v0, Lcom/android/settings/search2/SavedQueryPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/search2/ResultPayload;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/SavedQueryPayload;->query:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search2/ResultPayload;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search2/SavedQueryPayload;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryPayload;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
