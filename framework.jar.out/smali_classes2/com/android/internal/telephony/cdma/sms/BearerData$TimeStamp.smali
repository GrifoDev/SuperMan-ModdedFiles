.class public Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
.super Landroid/text/format/Time;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .locals 11

    const/16 v10, 0x3b

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v6

    const/16 v7, 0x63

    if-gt v6, v7, :cond_0

    if-gez v6, :cond_1

    :cond_0
    return-object v8

    :cond_1
    const/16 v7, 0x60

    if-lt v6, v7, :cond_3

    add-int/lit16 v7, v6, 0x76c

    :goto_0
    iput v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    aget-byte v7, p0, v9

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    if-lt v3, v9, :cond_2

    const/16 v7, 0xc

    if-le v3, v7, :cond_4

    :cond_2
    return-object v8

    :cond_3
    add-int/lit16 v7, v6, 0x7d0

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v3, -0x1

    iput v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    const/4 v7, 0x2

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v0

    if-lt v0, v9, :cond_5

    const/16 v7, 0x1f

    if-le v0, v7, :cond_6

    :cond_5
    return-object v8

    :cond_6
    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    const/4 v7, 0x3

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    if-ltz v1, :cond_7

    const/16 v7, 0x17

    if-le v1, v7, :cond_8

    :cond_7
    return-object v8

    :cond_8
    iput v1, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    const/4 v7, 0x4

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v2

    if-ltz v2, :cond_9

    if-le v2, v10, :cond_a

    :cond_9
    return-object v8

    :cond_a
    iput v2, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    const/4 v7, 0x5

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v4

    if-ltz v4, :cond_b

    if-le v4, v10, :cond_c

    :cond_b
    return-object v8

    :cond_c
    iput v4, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    return-object v5
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TimeStamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
