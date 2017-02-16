.class public Lcom/android/internal/widget/RemoteLockInfo$Builder;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RemoteLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFailCount:I

.field private mClientName:Ljava/lang/CharSequence;

.field private mEnableEmergencyCall:Z

.field private mLockState:Z

.field private mLockTimeOut:J

.field private mLockType:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mPermanentBlockCount:I

.field private mPhoneNumber:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/RemoteLockInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 63
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    .line 65
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    .line 66
    iput v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    .line 68
    iput v2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    .line 71
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I

    .line 72
    iput-boolean p2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z

    .line 70
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(Lcom/android/internal/widget/RemoteLockInfo$Builder;)V

    return-object v0
.end method

.method public setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    .line 97
    return-object p0
.end method

.method public setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPermanentBlockCount:I

    .line 107
    return-object p0
.end method

.method public setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    .line 92
    return-object p0
.end method

.method public setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    .line 87
    return-object p0
.end method

.method public setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    .line 102
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 77
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    .line 82
    return-object p0
.end method
