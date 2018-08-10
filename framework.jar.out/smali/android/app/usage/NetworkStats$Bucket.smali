.class public Landroid/app/usage/NetworkStats$Bucket;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation


# static fields
.field public static final METERED_ALL:I = -0x1

.field public static final METERED_NO:I = 0x1

.field public static final METERED_YES:I = 0x2

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x1

.field public static final ROAMING_YES:I = 0x2

.field public static final STATE_ALL:I = -0x1

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_FOREGROUND:I = 0x2

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5


# instance fields
.field private mBeginTimeStamp:J

.field private mEndTimeStamp:J

.field private mMetered:I

.field private mRoaming:I

.field private mRxBytes:J

.field private mRxPackets:J

.field private mState:I

.field private mTag:I

.field private mTxBytes:J

.field private mTxPackets:J

.field private mUid:I


# direct methods
.method static synthetic -set0(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide p1
.end method

.method static synthetic -set1(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide p1
.end method

.method static synthetic -set10(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return p1
.end method

.method static synthetic -set2(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mMetered:I

    return p1
.end method

.method static synthetic -set3(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    return p1
.end method

.method static synthetic -set4(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide p1
.end method

.method static synthetic -set5(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide p1
.end method

.method static synthetic -set6(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return p1
.end method

.method static synthetic -set7(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    return p1
.end method

.method static synthetic -set8(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide p1
.end method

.method static synthetic -set9(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide p1
.end method

.method static synthetic -wrap0(I)I
    .locals 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertMetered(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertRoaming(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(I)I
    .locals 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertTag(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(I)I
    .locals 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertMetered(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertRoaming(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertState(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertTag(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static convertUid(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 v0, -0x4

    return v0

    :pswitch_1
    const/4 v0, -0x5

    return v0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getEndTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getMetered()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mMetered:I

    return v0
.end method

.method public getRoaming()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    return v0
.end method

.method public getRxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide v0
.end method

.method public getRxPackets()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide v0
.end method

.method public getStartTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    return v0
.end method

.method public getTxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide v0
.end method

.method public getTxPackets()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return v0
.end method
