.class public final Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
.super Ljava/lang/Exception;
.source "RemoteLockControlException.java"


# instance fields
.field private mRlcErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->mRlcErrorCode:I

    return-void
.end method


# virtual methods
.method public getRlcErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->mRlcErrorCode:I

    return v0
.end method
