.class public Lcom/android/server/TcpStats;
.super Ljava/lang/Object;
.source "TcpStats.java"


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CONNECTION_LOST:I = 0x3

.field public static final CONNECT_FAIL:I = 0x2

.field public static final SEND_FIN_PACKET:I = 0x4


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mErrno:I

.field private mIsScreenOn:Ljava/lang/Boolean;

.field private mMark:I

.field private mPid:I

.field private mProcName:Ljava/lang/String;

.field private mSid:I

.field private mState:I

.field private mTid:I

.field private mUid:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;IILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/TcpStats;->mUid:I

    iput p2, p0, Lcom/android/server/TcpStats;->mPid:I

    iput p3, p0, Lcom/android/server/TcpStats;->mTid:I

    iput-object p4, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/TcpStats;->mSid:I

    iput p5, p0, Lcom/android/server/TcpStats;->mState:I

    iput-object p7, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IILjava/lang/String;IILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/TcpStats;->mUid:I

    iput p2, p0, Lcom/android/server/TcpStats;->mPid:I

    iput p3, p0, Lcom/android/server/TcpStats;->mTid:I

    iput-object p4, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/TcpStats;->mSid:I

    iput p5, p0, Lcom/android/server/TcpStats;->mState:I

    iput p9, p0, Lcom/android/server/TcpStats;->mErrno:I

    iput p8, p0, Lcom/android/server/TcpStats;->mMark:I

    iput-object p10, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/TcpStats;->mUid:I

    iput p2, p0, Lcom/android/server/TcpStats;->mPid:I

    iput p3, p0, Lcom/android/server/TcpStats;->mTid:I

    iput-object p4, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/TcpStats;->mSid:I

    iput p5, p0, Lcom/android/server/TcpStats;->mState:I

    iput-object p8, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getProcName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/TcpStats;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TcpStats;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TcpStats;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TcpStats;->mTid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TcpStats;->mSid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TcpStats;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TcpStats;->mErrno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TcpStats;->mMark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
