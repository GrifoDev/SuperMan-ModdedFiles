.class public Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final dA:Ljava/lang/String; = "interendtime"

.field private static final dB:Ljava/lang/String; = "weekintercept"

.field private static final dC:Ljava/lang/String; = "interceptfraud"

.field private static final dD:Ljava/lang/String; = "interceptharass"

.field private static final dE:Ljava/lang/String; = "interceptads"

.field private static final dF:Ljava/lang/String; = "intercepthouse"

.field private static final dG:Ljava/lang/String; = "interceptunknown"

.field private static final dH:Ljava/lang/String; = "updateharass"

.field private static final dI:Ljava/lang/String; = "upharasstime"

.field private static final dJ:Ljava/lang/String; = "timerintercept"

.field private static final dK:Ljava/lang/String; = "strangemark"

.field private static final dL:Ljava/lang/String; = "activitionAppNum"

.field private static final dM:Ljava/lang/String; = "fraudFileCreateTime"

.field private static final dN:Ljava/lang/String; = "fraudFileUrl"

.field private static final dp:Ljava/lang/String; = "sharedpresetting"

.field private static final dq:Ljava/lang/String; = "textswitch"

.field private static final dr:Ljava/lang/String; = "fraud"

.field private static final ds:Ljava/lang/String; = "harasscate"

.field private static final dt:Ljava/lang/String; = "hascoupon"

.field private static final du:Ljava/lang/String; = "hasRecordData"

.field private static final dv:Ljava/lang/String; = "isintercept"

.field private static final dw:Ljava/lang/String; = "interceptnotifi"

.field private static final dx:Ljava/lang/String; = "blackwhiteintercept"

.field private static final dy:Ljava/lang/String; = "timertype"

.field private static final dz:Ljava/lang/String; = "interstarttime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlackWhiteRoster(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 405
    .line 406
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 405
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "blackwhiteintercept"

    const-string v2, "0,\u53ea\u62e6\u622a\u9ed1\u540d\u5355"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFraudFileCreateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 738
    .line 739
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 738
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 740
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "fraudFileCreateTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFraudFileUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 764
    .line 765
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 764
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 766
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "fraudFileUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFraudNum(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 223
    .line 224
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 223
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "fraud"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getHarassCate(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 249
    .line 250
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 249
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "harasscate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getHasCoupon(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 275
    .line 276
    const-string v1, "sharedpresetting"

    .line 275
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "hascoupon"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInterceptAds(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 560
    .line 561
    const-string v1, "sharedpresetting"

    .line 560
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 563
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "interceptads"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInterceptEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 445
    .line 446
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 445
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 447
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "interendtime"

    const-string v2, "7:00"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInterceptFraud(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 508
    .line 509
    const-string v1, "sharedpresetting"

    .line 508
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 511
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "interceptfraud"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInterceptHarass(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 534
    .line 535
    const-string v1, "sharedpresetting"

    .line 534
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 537
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "interceptharass"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInterceptHouse(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 586
    .line 587
    const-string v1, "sharedpresetting"

    .line 586
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 589
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "intercepthouse"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInterceptNotifi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 382
    .line 383
    const-string v1, "sharedpresetting"

    .line 382
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 385
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "interceptnotifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInterceptStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 425
    .line 426
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 425
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 427
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "interstarttime"

    const-string v2, "23:00"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInterceptUnknown(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 612
    .line 613
    const-string v1, "sharedpresetting"

    .line 612
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 615
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "interceptunknown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getIsIntercept(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 300
    .line 301
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 300
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "isintercept"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getRepeatWeek(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 465
    .line 466
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 465
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "weekintercept"

    const-string v2, "8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStrangeMark(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 711
    .line 712
    const-string v1, "sharedpresetting"

    .line 711
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 714
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "strangemark"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getTextSwitch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 88
    .line 89
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "textswitch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getTimerInterType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 485
    .line 486
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 485
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "timertype"

    const-string v2, "1,\u53ea\u63a5\u6536\u8054\u7cfb\u4eba\u548c\u767d\u540d\u5355"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimerIntercept(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 685
    .line 686
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 685
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 688
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "timerintercept"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getUpdatHarassMobile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 638
    .line 639
    const-string v1, "sharedpresetting"

    .line 638
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 641
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "updateharass"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getUpdateHarassTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 661
    .line 662
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 661
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 664
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "upharasstime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getUserConfig(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static hasActivitionAppNum(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    .line 343
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 342
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 344
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "activitionAppNum"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasRecordData(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    .line 315
    const-string v1, "sharedpresetting"

    const/4 v2, 0x1

    .line 314
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "hasRecordData"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static loadHasFZSF(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 114
    .line 115
    const-string v1, "sharedpresetting"

    const/4 v2, 0x2

    .line 114
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "hasFZSF"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static loadTextTrim(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 155
    .line 156
    const-string v4, "sharedpresetting"

    const/4 v5, 0x2

    .line 155
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 159
    .local v2, "sp":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v1, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v1}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    .line 160
    .local v1, "mFileReadWrite":Lcom/cmdm/control/util/file/FileReadWrite;
    const-string v4, "textTrim"

    invoke-virtual {v1, v4}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "textTrim":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 162
    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 163
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 175
    .end local v1    # "mFileReadWrite":Lcom/cmdm/control/util/file/FileReadWrite;
    .end local v3    # "textTrim":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 166
    .restart local v1    # "mFileReadWrite":Lcom/cmdm/control/util/file/FileReadWrite;
    .restart local v3    # "textTrim":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 169
    :cond_1
    const-string v4, "textTrim"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 171
    .end local v1    # "mFileReadWrite":Lcom/cmdm/control/util/file/FileReadWrite;
    .end local v3    # "textTrim":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    .line 175
    const-string v4, "textTrim"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public static loadTryText(Landroid/content/Context;)Z
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 194
    .line 195
    const-string v5, "sharedpresetting"

    const/4 v6, 0x2

    .line 194
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 197
    .local v2, "sp":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v1, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v1}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    .line 198
    .local v1, "mFileReadWrite":Lcom/cmdm/control/util/file/FileReadWrite;
    const-string v5, "tryText"

    invoke-virtual {v1, v5}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "tryText":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 200
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 201
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    .end local v1    # "mFileReadWrite":Lcom/cmdm/control/util/file/FileReadWrite;
    .end local v3    # "tryText":Ljava/lang/String;
    :goto_0
    return v4

    .line 204
    .restart local v1    # "mFileReadWrite":Lcom/cmdm/control/util/file/FileReadWrite;
    .restart local v3    # "tryText":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 207
    :cond_1
    const-string v5, "tryText"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 209
    .end local v1    # "mFileReadWrite":Lcom/cmdm/control/util/file/FileReadWrite;
    .end local v3    # "tryText":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    .line 213
    const-string v5, "tryText"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0
.end method

.method public static saveHasFZSF(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "obj"    # Z

    .prologue
    .line 126
    .line 127
    const-string v1, "sharedpresetting"

    const/4 v2, 0x2

    .line 126
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hasFZSF"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method public static saveTextTrim(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "isOpen"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v1, "textTrim"

    invoke-static {v1, p1}, Lcom/cmdm/control/util/client/Setting;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v1, "sharedpresetting"

    const/4 v2, 0x2

    .line 140
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 143
    const-string v3, "textTrim"

    .line 144
    if-eqz p1, :cond_0

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 143
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static saveTryText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "tryText"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v1, "tryText"

    invoke-static {v1, p1}, Lcom/cmdm/control/util/client/Setting;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v1, "sharedpresetting"

    const/4 v2, 0x2

    .line 184
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 187
    const-string v3, "tryText"

    .line 188
    if-eqz p1, :cond_0

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 187
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    return-void

    .line 188
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setActivitionAppNum(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "activitionAppNum"    # Ljava/lang/String;

    .prologue
    .line 355
    .line 356
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 355
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 357
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 358
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "activitionAppNum"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    return-void
.end method

.method public static setBlackWhiteRoster(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 414
    .line 415
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 414
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 416
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 417
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "blackwhiteintercept"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    return-void
.end method

.method public static setFraudFileCreateTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 749
    .line 750
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 749
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 751
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 752
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fraudFileCreateTime"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 753
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 754
    return-void
.end method

.method public static setFraudFileUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 775
    .line 776
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 775
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 777
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 778
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fraudFileUrl"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 779
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 780
    return-void
.end method

.method public static setFraudNum(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "isfraud"    # Z

    .prologue
    .line 235
    .line 236
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 235
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 237
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fraud"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    return-void
.end method

.method public static setHarassCate(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "iscate"    # Z

    .prologue
    .line 261
    .line 262
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 261
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 263
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "harasscate"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public static setHasCoupon(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "hasCoupon"    # Z

    .prologue
    .line 286
    .line 287
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 286
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 288
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "hascoupon"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    return-void
.end method

.method public static setInterceptAds(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ads"    # Z

    .prologue
    .line 572
    .line 573
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 572
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 574
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 575
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "interceptads"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    return-void
.end method

.method public static setInterceptEndTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "endtime"    # Ljava/lang/String;

    .prologue
    .line 454
    .line 455
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 454
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 456
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 457
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "interendtime"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    return-void
.end method

.method public static setInterceptFraud(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fraud"    # Z

    .prologue
    .line 520
    .line 521
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 520
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 522
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 523
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "interceptfraud"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    return-void
.end method

.method public static setInterceptHarass(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "harass"    # Z

    .prologue
    .line 546
    .line 547
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 546
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 548
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 549
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "interceptharass"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 551
    return-void
.end method

.method public static setInterceptHouse(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "house"    # Z

    .prologue
    .line 598
    .line 599
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 598
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 600
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "intercepthouse"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 603
    return-void
.end method

.method public static setInterceptNotifi(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "notifi"    # Z

    .prologue
    .line 394
    .line 395
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 394
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 396
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 397
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "interceptnotifi"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    return-void
.end method

.method public static setInterceptStartTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "starttime"    # Ljava/lang/String;

    .prologue
    .line 434
    .line 435
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 434
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 436
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "interstarttime"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 439
    return-void
.end method

.method public static setInterceptUnknown(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "unknown"    # Z

    .prologue
    .line 624
    .line 625
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 624
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 626
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 627
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "interceptunknown"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 628
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 629
    return-void
.end method

.method public static setIsIntercept(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "isintercept"    # Z

    .prologue
    .line 368
    .line 369
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 368
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 370
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isintercept"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    return-void
.end method

.method public static setRecordData(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "hasRecordData"    # Z

    .prologue
    .line 327
    .line 328
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 327
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 329
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "hasRecordData"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method

.method public static setRepeatWeek(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 474
    .line 475
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 474
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 476
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 477
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "weekintercept"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    return-void
.end method

.method public static setStrangeMark(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "mark"    # Z

    .prologue
    .line 723
    .line 724
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 723
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 725
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 726
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "strangemark"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 727
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 728
    return-void
.end method

.method public static setTextSwitch(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "isswitch"    # Z

    .prologue
    .line 100
    .line 101
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 100
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "textswitch"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public static setTimerInterType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 494
    .line 495
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 494
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 496
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 497
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "timertype"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    return-void
.end method

.method public static setTimerIntercept(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "timer"    # Z

    .prologue
    .line 697
    .line 698
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 697
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 699
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 700
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "timerintercept"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 702
    return-void
.end method

.method public static setUpdatHarassMobile(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "update"    # Z

    .prologue
    .line 650
    .line 651
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 650
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 652
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 653
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "updateharass"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 654
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 655
    return-void
.end method

.method public static setUpdateHarassTime(Landroid/content/Context;J)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 671
    .line 672
    const-string v2, "sharedpresetting"

    const/4 v3, 0x2

    .line 671
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 673
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 674
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "upharasstime"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 675
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 676
    return-void
.end method
