.class public Lcom/android/incallui/smartcall/SmartCallUtil;
.super Ljava/lang/Object;
.source "SmartCallUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_SEND_SMART_CALL_ITEM:Ljava/lang/String; = "com.samsung.accessory.callhandlerprovider.UPDATE_SMART_CALL_ITEM"

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.phone.callsettings"

.field private static final AUTOREJECT_CHECKED:Ljava/lang/String; = "reject_checked"

.field private static final AUTOREJECT_MATCH:Ljava/lang/String; = "reject_match"

.field private static final AUTOREJECT_NUMBER:Ljava/lang/String; = "reject_number"

.field private static final AUTOREJECT_TABLE:Ljava/lang/String; = "reject_num"

.field public static final BLOCK_MSG:Ljava/lang/String; = "Block number"

.field private static final DBG:Z

.field private static final FROM:[Ljava/lang/String;

.field private static final PERMISSION_SEN_SMART_CALL_ITEM:Ljava/lang/String; = "com.samsung.smartcall.permission.SMART_CALL_ITEM"

.field public static final REPORT_MSG:Ljava/lang/String; = "Report number"

.field public static final SMART_CALL_NOT_REGISTER:I = 0x0

.field public static final SMART_CALL_RISK_REGISTER:I = 0x3

.field public static final SMART_CALL_SAFE_REGISTER:I = 0x1

.field public static final SMART_CALL_SPAM_REGISTER:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static mContentURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/smartcall/SmartCallUtil;->DBG:Z

    .line 35
    const-class v0, Lcom/android/incallui/smartcall/SmartCallUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallUtil;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "reject_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallUtil;->FROM:[Ljava/lang/String;

    .line 52
    const-string v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallUtil;->mContentURI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/incallui/smartcall/SmartCallUtil;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static checkAlreadyCallBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mBlockNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 458
    const/4 v7, 0x0

    .line 459
    .local v7, "MATCH_EQUAL":I
    const-string v6, "reject_number"

    .line 460
    .local v6, "AUTOREJECT_NUMBER":Ljava/lang/String;
    const-string v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 461
    .local v1, "AUTOREJECT_CONTENT_URI":Landroid/net/Uri;
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    .line 465
    .local v2, "PROJECTION_REJECT_NUMBER":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v10, "where":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 468
    .local v9, "inUse":Z
    const-string v0, "reject_number=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v0, "\' AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 475
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 476
    sget-object v0, Lcom/android/incallui/smartcall/SmartCallUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAlreadyCallBlocked : cursor count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v9, v11

    .line 478
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 483
    :goto_1
    return v9

    :cond_0
    move v9, v12

    .line 477
    goto :goto_0

    .line 480
    :cond_1
    sget-object v0, Lcom/android/incallui/smartcall/SmartCallUtil;->TAG:Ljava/lang/String;

    const-string v3, "checkAlreadyCallBlocked : cursor is null"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static existsSmartCallUri(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 2
    .param p0, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v0, 0x1

    .line 443
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    iget-object v1, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    iget-object v1, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    .line 445
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 438
    const-string v5, "_id desc"

    .line 439
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/smartcall/SmartCallUtil;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/smartcall/SmartCallUtil;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getBlockReportMessage()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 488
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "smartcallMsg":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v3    # "smartcallMsg":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 496
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "smartcallMsgs":[Ljava/lang/String;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v4, v5

    .line 498
    .local v2, "msg":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static getSmartCallBizText()Ljava/lang/String;
    .locals 8

    .prologue
    .line 252
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 253
    .local v1, "call":Lcom/android/incallui/Call;
    const/4 v0, 0x0

    .line 254
    .local v0, "BizText":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    .line 256
    .local v2, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 257
    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    .line 258
    .local v3, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v5, :cond_0

    .line 259
    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 261
    .local v4, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v4, :cond_0

    .line 262
    iget-object v5, v4, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 263
    sget-object v5, Lcom/android/incallui/smartcall/SmartCallUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSmartCallBizText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, v4, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    .line 269
    .end local v3    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v4    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_0
    return-object v0
.end method

.method public static getSmartCallName(I)Ljava/lang/String;
    .locals 3
    .param p0, "mSmartCallRegisterState"    # I

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "smartCallName":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 229
    const v2, 0x7f0902c2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_0
    :goto_0
    return-object v1

    .line 230
    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    .line 231
    const v2, 0x7f0902c3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 232
    :cond_2
    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    .line 233
    const v2, 0x7f0902c4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "mSmartCallRegisterState"    # I
    .param p1, "diameter"    # I

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "mDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 242
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 248
    :cond_0
    :goto_0
    return-object v1

    .line 243
    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    .line 244
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 245
    :cond_2
    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSmartCallState()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 143
    const/4 v3, -0x1

    .line 144
    .local v3, "mSmartCallRegisterState":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 145
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 147
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 148
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 149
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v6, :cond_1

    .line 150
    iget-object v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 152
    .local v5, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v5, :cond_1

    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, "mType":I
    sget-object v6, Lcom/android/incallui/smartcall/SmartCallUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSmartCallState reputationTypeCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v6, v5, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    iget-object v6, v5, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 158
    :cond_0
    if-ne v4, v9, :cond_2

    .line 159
    const/4 v3, 0x1

    .line 170
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v4    # "mType":I
    .end local v5    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_1
    :goto_0
    return v3

    .line 160
    .restart local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v4    # "mType":I
    .restart local v5    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_2
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 161
    const/4 v3, 0x2

    goto :goto_0

    .line 162
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 163
    const/4 v3, 0x3

    goto :goto_0

    .line 164
    :cond_4
    if-nez v4, :cond_1

    .line 165
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSmartCallState(Lcom/android/incallui/Call;)I
    .locals 8
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 174
    const/4 v2, -0x1

    .line 175
    .local v2, "mSmartCallRegisterState":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 177
    .local v0, "context":Landroid/content/Context;
    if-eqz p0, :cond_1

    .line 178
    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 179
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v5, :cond_1

    .line 180
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 182
    .local v4, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v4, :cond_1

    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "mType":I
    sget-object v5, Lcom/android/incallui/smartcall/SmartCallUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSmartCallState reputationTypeCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v5, v4, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    iget-object v5, v4, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 188
    :cond_0
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 189
    const/4 v2, 0x1

    .line 200
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v3    # "mType":I
    .end local v4    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_1
    :goto_0
    return v2

    .line 190
    .restart local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v3    # "mType":I
    .restart local v4    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 191
    const/4 v2, 0x2

    goto :goto_0

    .line 192
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 193
    const/4 v2, 0x3

    goto :goto_0

    .line 194
    :cond_4
    if-nez v3, :cond_1

    .line 195
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSmartCallState(Lcom/android/incallui/smartcall/SmartCallInfo;)I
    .locals 5
    .param p0, "smartCallInfo"    # Lcom/android/incallui/smartcall/SmartCallInfo;

    .prologue
    .line 204
    const/4 v0, -0x1

    .line 206
    .local v0, "mSmartCallRegisterState":I
    if-eqz p0, :cond_1

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "mType":I
    sget-object v2, Lcom/android/incallui/smartcall/SmartCallUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartCallState reputationTypeCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 212
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 213
    const/4 v0, 0x1

    .line 222
    .end local v1    # "mType":I
    :cond_1
    :goto_0
    return v0

    .line 214
    .restart local v1    # "mType":I
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 215
    const/4 v0, 0x2

    goto :goto_0

    .line 216
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 217
    const/4 v0, 0x3

    goto :goto_0

    .line 218
    :cond_4
    if-nez v1, :cond_1

    .line 219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpamEnable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spam_call_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 274
    .local v0, "mSpamEnable":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/incallui/smartcall/SmartCallUtil;->DBG:Z

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/android/incallui/smartcall/SmartCallUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    return-void
.end method

.method public static queryCallerImageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/smartcall/SmartCallController;->getSmartCallManager()Lcom/android/incallui/smartcall/SmartCallManager;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/smartcall/SmartCallUtil$2;

    invoke-direct {v1}, Lcom/android/incallui/smartcall/SmartCallUtil$2;-><init>()V

    invoke-virtual {v0, p0, v1, p2}, Lcom/android/incallui/smartcall/SmartCallManager;->queryImageUri(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static queryCallerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/smartcall/SmartCallController;->getSmartCallManager()Lcom/android/incallui/smartcall/SmartCallManager;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/smartcall/SmartCallUtil$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcall/SmartCallUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/incallui/smartcall/SmartCallManager;->queryCallerInfo(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static setSmartAnswerAppLogging(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 294
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 295
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    const-string v2, "INWS"

    const-string v3, "Accept without Smart Call"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    if-eqz v0, :cond_0

    .line 302
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v1

    .line 303
    .local v1, "smartCallRegisterState":I
    if-ne v1, v4, :cond_2

    .line 304
    const-string v2, "INSS"

    const-string v3, "Accept Spam level 1"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 308
    const-string v2, "INSS"

    const-string v3, "Accept Spam level 2"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 312
    const-string v2, "INSS"

    const-string v3, "Accept Spam level 3"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSmartAppLogging(ILandroid/content/Context;)V
    .locals 2
    .param p0, "mSmartCallRegisterState"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 279
    const-string v0, "INSC"

    const-string v1, "Spam level 1"

    invoke-static {p1, v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 283
    const-string v0, "INSC"

    const-string v1, "Spam level 2"

    invoke-static {p1, v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 287
    const-string v0, "INSC"

    const-string v1, "Spam level 3"

    invoke-static {p1, v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSmartBlockSpamLevelAppLogging(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 391
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 392
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    if-eqz v0, :cond_0

    .line 396
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v1

    .line 397
    .local v1, "smartCallRegisterState":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 398
    const-string v2, "ENCB"

    const-string v3, "Block Spam level 2"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 402
    const-string v2, "ENCB"

    const-string v3, "Block Spam level 3"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSmartCallerIdAppLogging(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 411
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    if-eqz v0, :cond_0

    .line 415
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 416
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v3, :cond_0

    .line 417
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 419
    .local v2, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v2, :cond_0

    .line 420
    iget-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 421
    const-string v3, "INSC"

    const-string v4, "Caller ID"

    invoke-static {p0, v3, v4}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSmartRejectAppLogging(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 320
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 321
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    const-string v2, "INWS"

    const-string v3, "Reject without Smart Call"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    if-eqz v0, :cond_0

    .line 328
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v1

    .line 329
    .local v1, "smartCallRegisterState":I
    if-ne v1, v4, :cond_2

    .line 330
    const-string v2, "INSS"

    const-string v3, "Reject Spam level 1"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 334
    const-string v2, "INSS"

    const-string v3, "Reject Spam level 2"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 338
    const-string v2, "INSS"

    const-string v3, "Reject Spam level 3"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSmartRejectMessageAppLogging(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 346
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 347
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    const-string v2, "INWS"

    const-string v3, "Reject Message without Smart Call"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    if-eqz v0, :cond_0

    .line 354
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v1

    .line 355
    .local v1, "smartCallRegisterState":I
    if-ne v1, v4, :cond_2

    .line 356
    const-string v2, "INSS"

    const-string v3, "Reject Message Spam level 1"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 360
    const-string v2, "INSS"

    const-string v3, "Reject Message Spam level 2"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 364
    const-string v2, "INSS"

    const-string v3, "Reject Message Spam level 3"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSmartReportSpamLevelAppLogging(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 373
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    if-eqz v0, :cond_0

    .line 377
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v1

    .line 378
    .local v1, "smartCallRegisterState":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 379
    const-string v2, "ENCR"

    const-string v3, "Report Spam level 2"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 383
    const-string v2, "ENCR"

    const-string v3, "Report Spam level 3"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
