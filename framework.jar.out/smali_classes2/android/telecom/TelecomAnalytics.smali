.class public final Landroid/telecom/TelecomAnalytics;
.super Ljava/lang/Object;
.source "TelecomAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomAnalytics$1;,
        Landroid/telecom/TelecomAnalytics$SessionTiming;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/TelecomAnalytics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallAnalytics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/TelecomAnalytics$1;

    invoke-direct {v0}, Landroid/telecom/TelecomAnalytics$1;-><init>()V

    sput-object v0, Landroid/telecom/TelecomAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    sget-object v1, Landroid/telecom/TelecomAnalytics$SessionTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/TelecomAnalytics;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/TelecomAnalytics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    iput-object p2, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallAnalytics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    return-object v0
.end method

.method public getSessionTimings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
