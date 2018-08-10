.class public final Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVE_REMOTE_SESSION_MODIFY_REQUEST:I = 0x2

.field public static final RECEIVE_REMOTE_SESSION_MODIFY_RESPONSE:I = 0x3

.field public static final SEND_LOCAL_SESSION_MODIFY_REQUEST:I = 0x0

.field public static final SEND_LOCAL_SESSION_MODIFY_RESPONSE:I = 0x1


# instance fields
.field private mEventName:I

.field private mTimeSinceLastEvent:J

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    iput p4, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    return v0
.end method

.method public getTimeSinceLastEvent()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    return-wide v0
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
