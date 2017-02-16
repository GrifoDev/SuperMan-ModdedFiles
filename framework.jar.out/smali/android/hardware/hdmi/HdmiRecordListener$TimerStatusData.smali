.class public Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerStatusData"
.end annotation


# instance fields
.field private mDurationHour:I

.field private mDurationMinute:I

.field private mExtraError:I

.field private mMediaInfo:I

.field private mNotProgrammedError:I

.field private mOverlapped:Z

.field private mProgrammed:Z

.field private mProgrammedInfo:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bcdByteToInt(B)I
    .locals 1
    .param p0, "value"    # B

    .prologue
    .line 109
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method static parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    .locals 4
    .param p0, "result"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;-><init>()V

    .line 85
    .local v0, "data":Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    shr-int/lit8 v1, p0, 0x1f

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    .line 87
    shr-int/lit8 v1, p0, 0x1d

    and-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    .line 89
    shr-int/lit8 v1, p0, 0x1c

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    .line 90
    iget-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    if-eqz v1, :cond_2

    .line 91
    shr-int/lit8 v1, p0, 0x18

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    .line 92
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    .line 93
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    .line 102
    :goto_2
    and-int/lit16 v1, p0, 0xff

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    .line 103
    return-object v0

    :cond_0
    move v1, v3

    .line 85
    goto :goto_0

    :cond_1
    move v2, v3

    .line 89
    goto :goto_1

    .line 96
    :cond_2
    shr-int/lit8 v1, p0, 0x18

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    .line 97
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    .line 98
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    goto :goto_2
.end method


# virtual methods
.method public getDurationHour()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    return v0
.end method

.method public getDurationMinute()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    return v0
.end method

.method public getExtraError()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    return v0
.end method

.method public getMediaInfo()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    return v0
.end method

.method public getNotProgammedError()I
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 189
    const-string/jumbo v1, "Has no not-programmed error. Call getProgrammedInfo() instead."

    .line 188
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    return v0
.end method

.method public getProgrammedInfo()I
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 161
    const-string/jumbo v1, "No programmed info. Call getNotProgammedError() instead."

    .line 160
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    return v0
.end method

.method public isOverlapped()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    return v0
.end method

.method public isProgrammed()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    return v0
.end method
