.class public Lcom/android/incallui/coreapps/AgifShareMessage;
.super Ljava/lang/Object;


# static fields
.field public static final CHECK_OPPONENT_ANSWER:Ljava/lang/String; = "check_opponent_answer"

.field public static final CHECK_OPPONENT_ASK:Ljava/lang/String; = "check_opponent_ask"

.field static final LOG_TAG:Ljava/lang/String; = "Agifflow-AgifShareMessage"

.field public static final MESSAGE_CLASSIFICATION_IMG_URL:Ljava/lang/String; = "[iu]"

.field public static final MESSAGE_CLASSIFICATION_START_TIME:Ljava/lang/String; = "[st]"

.field public static final MESSAGE_CLASSIFICATION_TIME:Ljava/lang/String; = "[t]"

.field public static final MESSAGE_TYPE_ANSWER:I = 0x2

.field public static final MESSAGE_TYPE_ASK:I = 0x1

.field public static final MESSAGE_TYPE_NORMAL:I = 0x0

.field public static final PURPOSE_TYPE_RECEIVE:I = 0x1

.field public static final PURPOSE_TYPE_SEND:I


# instance fields
.field private mImageSendingTime:J

.field private mImgUrl:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mMessageType:I

.field private mNumber:Ljava/lang/String;

.field private mPurposeType:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    iput v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mPurposeType:I

    iput-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mStartTime:J

    iput-wide v4, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImageSendingTime:J

    iput-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    iput p1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mPurposeType:I

    iput-object p2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    :cond_0
    const-string v0, "check_opponent_ask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    :goto_0
    iget v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mPurposeType:I

    if-ne v0, v3, :cond_1

    invoke-direct {p0, p2}, Lcom/android/incallui/coreapps/AgifShareMessage;->analizeMessage(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "check_opponent_answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    iget-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private analizeMessage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    const-string v3, "[iu]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    const-string v3, "[iu]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, v1, v0

    const-string v3, "[st]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v1, v0

    const-string v3, "[st]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mStartTime:J

    iget-wide v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mStartTime:J

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/coreapps/AgifShareMessage;->setStartTimeforMT(J)V

    goto :goto_1

    :cond_2
    aget-object v2, v1, v0

    const-string v3, "[t]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    const-string v3, "[t]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImageSendingTime:J

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->updateLatestInfo()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getStartTimeforMO()J
    .locals 6

    const-wide/16 v0, -0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->getCallByAgifNumber(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-wide v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifStartTime:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifStartTime:J

    :cond_0
    iget-wide v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifStartTime:J

    :cond_1
    return-wide v0
.end method

.method private getStartTimeforMT()J
    .locals 2

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->getLatestInfoMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/coreapps/AgifLatestInfo;

    iget-wide v0, v0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mStartTime:J

    goto :goto_0
.end method

.method private setStartTimeforMT(J)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->getLatestInfoMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    new-instance v2, Lcom/android/incallui/coreapps/AgifLatestInfo;

    iget-object v3, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/android/incallui/coreapps/AgifLatestInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/coreapps/AgifLatestInfo;

    iget-wide v2, v0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mStartTime:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    new-instance v2, Lcom/android/incallui/coreapps/AgifLatestInfo;

    iget-object v3, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/android/incallui/coreapps/AgifLatestInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAckType()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnswerType()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAskType()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidData()Z
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->getStartTimeforMT()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImageSendingTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const-string v2, "Agifflow-AgifShareMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this is not valid data, startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendingTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImageSendingTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeSendMessage()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mPurposeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->isAckType()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[st]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->getStartTimeforMO()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|[iu]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[iu]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[t]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->getCurrentTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[st]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->getStartTimeforMO()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setImgUrl(Landroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/agif/AgifLoader;->getAgifUniqueId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mMessageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageSendingTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImageSendingTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLatestInfo()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/AgifShareMessage;->isValidData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->getLatestInfoMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/coreapps/AgifLatestInfo;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImageSendingTime:J

    iput-wide v2, v0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mImageReceivedTime:J

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifShareMessage;->mImgUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method
