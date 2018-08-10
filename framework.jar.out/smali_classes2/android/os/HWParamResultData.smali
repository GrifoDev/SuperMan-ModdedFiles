.class public Landroid/os/HWParamResultData;
.super Landroid/os/HWParamData;
.source "HWParamResultData.java"


# instance fields
.field private interfaceType:I

.field private server:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/os/HWParamData;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    iput v2, p0, Landroid/os/HWParamResultData;->server:I

    iput v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Landroid/os/HWParamResultData;->time:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v1, p0, Landroid/os/HWParamResultData;->server:I

    if-ne v1, v2, :cond_7

    const-string/jumbo v1, "N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    iget v1, p0, Landroid/os/HWParamResultData;->server:I

    if-nez v1, :cond_8

    const-string/jumbo v1, "D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    iget v1, p0, Landroid/os/HWParamResultData;->server:I

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "C "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-nez v1, :cond_a

    const-string/jumbo v1, "K "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v1, v3, :cond_b

    const-string/jumbo v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public getInterfaceType()I
    .locals 1

    iget v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    return v0
.end method

.method public getServer()I
    .locals 1

    iget v0, p0, Landroid/os/HWParamResultData;->server:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    return-wide v0
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamResultData;->server:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    return-void
.end method

.method public setBasicParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    iput-object p3, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    iput-object p4, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    iput-object p5, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    return-void
.end method

.method public setLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    iput-object p3, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    return-void
.end method

.method public setServer(II)V
    .locals 0

    iput p1, p0, Landroid/os/HWParamResultData;->server:I

    iput p2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Landroid/os/HWParamResultData;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v2, p0, Landroid/os/HWParamResultData;->time:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/HWParamResultData;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/HWParamResultData;->server:I

    if-ne v2, v6, :cond_b

    const-string/jumbo v2, "N "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v2, v6, :cond_d

    const-string/jumbo v2, "? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_a
    const-string/jumbo v2, "?????"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Landroid/os/HWParamResultData;->server:I

    if-nez v2, :cond_c

    const-string/jumbo v2, "D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    iget v2, p0, Landroid/os/HWParamResultData;->server:I

    if-ne v2, v7, :cond_0

    const-string/jumbo v2, "C "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-nez v2, :cond_e

    const-string/jumbo v2, "K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_e
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v2, v7, :cond_f

    const-string/jumbo v2, "A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_f
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "I "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/HWParamResultData;->server:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
