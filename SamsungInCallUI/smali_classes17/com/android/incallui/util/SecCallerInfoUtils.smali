.class public Lcom/android/incallui/util/SecCallerInfoUtils;
.super Ljava/lang/Object;
.source "SecCallerInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecCallerInfoUtils"

.field private static final WAIT_QUERY_COMPLETE_DELAY:I = 0xc8

.field private static final WAIT_QUERY_MAX_COUNT:I = 0x5

.field private static sQueryWaitCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/util/SecCallerInfoUtils;->sQueryWaitCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/Call;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "x2"    # Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/android/incallui/util/SecCallerInfoUtils;->makeQueryAfterRemovePreviousInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    return-void
.end method

.method public static getNameFromFDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    .local v6, "NAME_COLUMN":I
    const/4 v7, 0x1

    .line 145
    .local v7, "NUMBER_COLUMN":I
    const/4 v10, 0x0

    .line 146
    .local v10, "num":Ljava/lang/String;
    const/4 v9, 0x0

    .line 148
    .local v9, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 149
    .local v1, "contactUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 151
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    .line 152
    const-string v0, "ltn_sdnname_display"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "content://icc/sdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 159
    if-eqz v8, :cond_1

    .line 160
    const-string v0, "SecCallerInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNameFromFDN cursor != null size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 165
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 166
    const-string v0, "SecCallerInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNameFromFDN - query - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v10, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    .line 177
    :cond_1
    :goto_1
    return-object v2

    .line 155
    :cond_2
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 172
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getNameFromSDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v3, "feature_tfg"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const-string v3, "SecCallerInfoUtils"

    const-string v4, "sales version is TFG"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "mcc":I
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 186
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "simOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 189
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 191
    :cond_0
    const/16 v3, 0x2de

    if-eq v0, v3, :cond_1

    const/16 v3, 0x14e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2e4

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2dc

    if-eq v0, v3, :cond_1

    .line 195
    const/4 v3, 0x0

    .line 200
    .end local v0    # "mcc":I
    .end local v1    # "simOperator":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v3

    :cond_1
    invoke-static {p0, p1}, Lcom/android/incallui/util/SecCallerInfoUtils;->getNameFromFDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static makeQueryAfterRemovePreviousInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "primaryContactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "listener"    # Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 113
    if-nez p0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v4, "SecCallerInfoUtils"

    const-string v5, "makeQueryAfterRemovePreviousInfo"

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-nez v4, :cond_1

    sget v4, Lcom/android/incallui/util/SecCallerInfoUtils;->sQueryWaitCount:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 119
    move-object v1, p1

    .line 120
    .local v1, "originPrimaryContactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/incallui/util/SecCallerInfoUtils$1;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/incallui/util/SecCallerInfoUtils$1;-><init>(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    sget v2, Lcom/android/incallui/util/SecCallerInfoUtils;->sQueryWaitCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/incallui/util/SecCallerInfoUtils;->sQueryWaitCount:I

    .line 127
    const-string v2, "SecCallerInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeQueryAfterRemovePreviousInfo: Now querying about previous number, update later, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/incallui/util/SecCallerInfoUtils;->sQueryWaitCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v1    # "originPrimaryContactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    const-string v4, "SecCallerInfoUtils"

    const-string v5, "makeQueryAfterRemovePreviousInfo"

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 133
    :goto_1
    invoke-static {v0, p0, v2}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p1

    .line 135
    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/incallui/ContactInfoCache;->clearCache(Ljava/lang/String;)V

    .line 136
    invoke-interface {p2, p0}, Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;->onNumberChanged(Lcom/android/incallui/Call;)V

    .line 137
    sput v3, Lcom/android/incallui/util/SecCallerInfoUtils;->sQueryWaitCount:I

    goto :goto_0

    :cond_2
    move v2, v3

    .line 134
    goto :goto_1
.end method

.method public static refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V
    .locals 10
    .param p0, "originalCall"    # Lcom/android/incallui/Call;
    .param p1, "newCall"    # Lcom/android/incallui/Call;
    .param p2, "primaryContactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "listener"    # Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;

    .prologue
    .line 33
    const-string v7, "SecCallerInfoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshContactInfoCache call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-eqz p0, :cond_2

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "isVoiceMailNumber":Z
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 38
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/util/InCallUtilsWrapper;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v1

    .line 43
    :goto_0
    if-eqz v1, :cond_2

    .line 44
    const-string v7, "SecCallerInfoUtils"

    const-string v8, "no update (voicemail) "

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v1    # "isVoiceMailNumber":Z
    :cond_0
    :goto_1
    return-void

    .line 40
    .restart local v1    # "isVoiceMailNumber":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 49
    .end local v1    # "isVoiceMailNumber":Z
    :cond_2
    invoke-static {p0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 54
    .local v0, "haveToMakeQuery":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecCall;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "primaryNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "newNumber":Ljava/lang/String;
    const-string v7, "SecCallerInfoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "primaryNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 60
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 61
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 62
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecCall;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "newCallAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, ","

    .line 64
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_6
    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v7, :cond_e

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v7, :cond_e

    .line 66
    const-string v7, "SecCallerInfoUtils"

    const-string v8, "has dtmf"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/SecCall;->setAddress(Ljava/lang/String;)V

    .line 74
    .end local v2    # "newCallAddress":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "primaryName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "newName":Ljava/lang/String;
    const-string v7, "SecCallerInfoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "primaryName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 78
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 79
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 80
    :cond_a
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/SecCall;->setCallerDisplayName(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    .line 84
    :cond_b
    const-string v7, "emergency_call_state_update_after_dial"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 85
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->needToUpdateEmerencyCallState(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 86
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getEmergencyCallUpdateState()Z

    move-result v7

    if-nez v7, :cond_c

    .line 87
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/android/incallui/Call;->setEmergencyCallUpdateState(Z)V

    .line 88
    const/4 v0, 0x1

    .line 89
    const-string v7, "SecCallerInfoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setEmergencyCallUpdateState : haveToMakeQuery "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDomain()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(I)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDomain()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isCSDomain(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 93
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_d

    .line 94
    const/4 v0, 0x1

    .line 97
    :cond_d
    const-string v7, "SecCallerInfoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshContactInfoCache : haveToMakeQuery "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-static {p1, p2, p3}, Lcom/android/incallui/util/SecCallerInfoUtils;->makeQueryAfterRemovePreviousInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    goto/16 :goto_1

    .line 68
    .end local v3    # "newName":Ljava/lang/String;
    .end local v5    # "primaryName":Ljava/lang/String;
    .restart local v2    # "newCallAddress":Ljava/lang/String;
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2
.end method
