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

    .prologue
    const/4 v2, -0x1

    .line 20
    invoke-direct {p0}, Landroid/os/HWParamData;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    .line 16
    iput v2, p0, Landroid/os/HWParamResultData;->server:I

    .line 18
    iput v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 20
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Landroid/os/HWParamResultData;->time:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 109
    iget v1, p0, Landroid/os/HWParamResultData;->server:I

    if-ne v1, v2, :cond_7

    .line 110
    const-string/jumbo v1, "N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    :goto_0
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v1, v2, :cond_9

    .line 118
    const-string/jumbo v1, "? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 128
    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    iget-object v1, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 133
    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_3
    iget-object v1, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 138
    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    iget-object v1, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 143
    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_5
    iget-object v1, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 148
    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 111
    :cond_7
    iget v1, p0, Landroid/os/HWParamResultData;->server:I

    if-nez v1, :cond_8

    .line 112
    const-string/jumbo v1, "D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :cond_8
    iget v1, p0, Landroid/os/HWParamResultData;->server:I

    if-ne v1, v3, :cond_0

    .line 114
    const-string/jumbo v1, "C "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    :cond_9
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-nez v1, :cond_a

    .line 120
    const-string/jumbo v1, "K "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_a
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v1, v3, :cond_b

    .line 122
    const-string/jumbo v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_b
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 124
    const-string/jumbo v1, "I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public getInterfaceType()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    return v0
.end method

.method public getServer()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/os/HWParamResultData;->server:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    return-wide v0
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamResultData;->server:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setBasicParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "compID"    # Ljava/lang/String;
    .param p2, "compVer"    # Ljava/lang/String;
    .param p3, "compManufacture"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "feature"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "logMaps"    # Ljava/lang/String;
    .param p2, "envlogMaps"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "HWRev"    # Ljava/lang/String;
    .param p2, "IMEI"    # Ljava/lang/String;
    .param p3, "UN"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setServer(II)V
    .locals 0
    .param p1, "server"    # I
    .param p2, "interfaceType"    # I

    .prologue
    .line 85
    iput p1, p0, Landroid/os/HWParamResultData;->server:I

    .line 86
    iput p2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 84
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Landroid/os/HWParamResultData;->time:J

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    iget-wide v2, p0, Landroid/os/HWParamResultData;->time:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 161
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Landroid/os/HWParamResultData;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .end local v0    # "DateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v2, p0, Landroid/os/HWParamResultData;->server:I

    if-ne v2, v6, :cond_b

    .line 169
    const-string/jumbo v2, "N "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    :goto_1
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v2, v6, :cond_d

    .line 177
    const-string/jumbo v2, "? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 187
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v2, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    iget-object v2, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 192
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_3
    iget-object v2, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 197
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v2, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_4
    iget-object v2, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 202
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_5
    iget-object v2, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 207
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v2, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_6
    iget-object v2, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 212
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v2, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_7
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    const-string/jumbo v3, ""

    if-eq v2, v3, :cond_8

    .line 218
    const-string/jumbo v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v2, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_8
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v2, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    const-string/jumbo v3, ""

    if-eq v2, v3, :cond_9

    .line 224
    const-string/jumbo v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v2, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 164
    :cond_a
    const-string/jumbo v2, "?????"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 170
    :cond_b
    iget v2, p0, Landroid/os/HWParamResultData;->server:I

    if-nez v2, :cond_c

    .line 171
    const-string/jumbo v2, "D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 172
    :cond_c
    iget v2, p0, Landroid/os/HWParamResultData;->server:I

    if-ne v2, v7, :cond_0

    .line 173
    const-string/jumbo v2, "C "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 178
    :cond_d
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-nez v2, :cond_e

    .line 179
    const-string/jumbo v2, "K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 180
    :cond_e
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v2, v7, :cond_f

    .line 181
    const-string/jumbo v2, "A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 182
    :cond_f
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 183
    const-string/jumbo v2, "I "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 43
    iget-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Landroid/os/HWParamResultData;->server:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method
