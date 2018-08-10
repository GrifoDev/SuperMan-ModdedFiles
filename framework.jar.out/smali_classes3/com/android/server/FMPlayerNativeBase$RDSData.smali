.class Lcom/android/server/FMPlayerNativeBase$RDSData;
.super Ljava/lang/Object;
.source "FMPlayerNativeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNativeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RDSData"
.end annotation


# instance fields
.field public mChannelName:Ljava/lang/String;

.field public mFreq:J

.field public mRadioText:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    iput-object v0, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    :cond_0
    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(J[B[B)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n== RDSData :--> \nFreq :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \nChannel Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \nRadio Text :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<--: ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
