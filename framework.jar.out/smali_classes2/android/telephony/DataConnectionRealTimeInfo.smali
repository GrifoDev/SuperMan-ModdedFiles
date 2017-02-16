.class public Landroid/telephony/DataConnectionRealTimeInfo;
.super Ljava/lang/Object;
.source "DataConnectionRealTimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DataConnectionRealTimeInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/DataConnectionRealTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DC_POWER_STATE_HIGH:I = 0x3

.field public static final DC_POWER_STATE_LOW:I = 0x1

.field public static final DC_POWER_STATE_MEDIUM:I = 0x2

.field public static final DC_POWER_STATE_UNKNOWN:I = 0x7fffffff


# instance fields
.field private mDcPowerState:I

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Landroid/telephony/DataConnectionRealTimeInfo$1;

    invoke-direct {v0}, Landroid/telephony/DataConnectionRealTimeInfo$1;-><init>()V

    .line 91
    sput-object v0, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 55
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 53
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "dcPowerState"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 45
    iput p3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    return v1

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    return v2

    .line 122
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 123
    return v2

    :cond_2
    move-object v0, p1

    .line 125
    check-cast v0, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 126
    .local v0, "other":Landroid/telephony/DataConnectionRealTimeInfo;
    iget-wide v4, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    iget-wide v6, v0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 127
    iget v3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    iget v4, v0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    if-ne v3, v4, :cond_3

    .line 126
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 127
    goto :goto_0

    :cond_4
    move v1, v2

    .line 126
    goto :goto_0
.end method

.method public getDcPowerState()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x11

    .line 107
    const-wide/16 v0, 0x11

    .line 109
    .local v0, "prime":J
    iget-wide v4, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    add-long v2, v6, v4

    .line 110
    .local v2, "result":J
    mul-long v4, v6, v2

    iget v6, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 111
    long-to-int v4, v2

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 135
    const-string/jumbo v1, " mDcPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 87
    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
