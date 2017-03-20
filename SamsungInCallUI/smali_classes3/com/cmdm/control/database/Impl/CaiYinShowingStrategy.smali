.class public Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/CaiYinShowingObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "caiyin_showing"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->tableName:Ljava/lang/String;

    .line 25
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "autoid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "missdn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 26
    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "settingId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dateType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "settingWeek"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 27
    const-string v2, "settingStartDate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "settingEndDate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "settingStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 28
    const-string v2, "settingEndTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timing"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "greeting"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "posterUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 29
    const-string v2, "last_time"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->columns:[Ljava/lang/String;

    .line 33
    const-string v0, "caiyin_showing"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiYinShowingObject;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 66
    new-instance v1, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;-><init>()V

    .line 68
    .local v1, "sinceShow":Lcom/cmdm/control/bean/CaiYinShowingObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    const-string v2, "uid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUid(Ljava/lang/String;)V

    .line 72
    const-string v2, "missdn"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 74
    const-string v2, "cid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 73
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setCid(Ljava/lang/String;)V

    .line 76
    const-string v2, "priority"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 75
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPriority(Ljava/lang/String;)V

    .line 78
    const-string v2, "settingId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 77
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingId(Ljava/lang/String;)V

    .line 80
    const-string v2, "dateType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 79
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setDateType(Ljava/lang/String;)V

    .line 82
    const-string v2, "settingWeek"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 81
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingWeek(Ljava/lang/String;)V

    .line 84
    const-string v2, "settingStartDate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 83
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartDate(Ljava/lang/String;)V

    .line 86
    const-string v2, "settingEndDate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 85
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndDate(Ljava/lang/String;)V

    .line 88
    const-string v2, "settingStartTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 87
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartTime(Ljava/lang/String;)V

    .line 90
    const-string v2, "settingEndTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 89
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndTime(Ljava/lang/String;)V

    .line 92
    const-string v2, "timing"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setTiming(Ljava/lang/String;)V

    .line 94
    const-string v2, "greeting"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setGreeting(Ljava/lang/String;)V

    .line 96
    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 95
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    .line 98
    const-string v2, "posterUrl"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 97
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPosterUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "sinceShow":Lcom/cmdm/control/bean/CaiYinShowingObject;
    :cond_0
    :goto_0
    return-object v1

    .line 101
    .restart local v1    # "sinceShow":Lcom/cmdm/control/bean/CaiYinShowingObject;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiYinShowingObject;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 118
    new-instance v1, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;-><init>()V

    .line 120
    .local v1, "sinceShow":Lcom/cmdm/control/bean/CaiYinShowingObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 122
    const-string v2, "uid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUid(Ljava/lang/String;)V

    .line 124
    const-string v2, "missdn"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 126
    const-string v2, "cid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 125
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setCid(Ljava/lang/String;)V

    .line 128
    const-string v2, "priority"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 127
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPriority(Ljava/lang/String;)V

    .line 130
    const-string v2, "settingId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 129
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingId(Ljava/lang/String;)V

    .line 132
    const-string v2, "dateType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 131
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setDateType(Ljava/lang/String;)V

    .line 134
    const-string v2, "settingWeek"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 133
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingWeek(Ljava/lang/String;)V

    .line 136
    const-string v2, "settingStartDate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 135
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartDate(Ljava/lang/String;)V

    .line 138
    const-string v2, "settingEndDate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 137
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndDate(Ljava/lang/String;)V

    .line 140
    const-string v2, "settingStartTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 139
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartTime(Ljava/lang/String;)V

    .line 142
    const-string v2, "settingEndTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 141
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndTime(Ljava/lang/String;)V

    .line 144
    const-string v2, "timing"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 143
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setTiming(Ljava/lang/String;)V

    .line 146
    const-string v2, "greeting"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setGreeting(Ljava/lang/String;)V

    .line 148
    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 147
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    .line 150
    const-string v2, "posterUrl"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 149
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPosterUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "sinceShow":Lcom/cmdm/control/bean/CaiYinShowingObject;
    :cond_0
    :goto_0
    return-object v1

    .line 153
    .restart local v1    # "sinceShow":Lcom/cmdm/control/bean/CaiYinShowingObject;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/CaiYinShowingObject;)Z
    .locals 6
    .param p1, "t"    # Lcom/cmdm/control/bean/CaiYinShowingObject;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "missdn"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "cid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "priority"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getPriority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "settingId"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "dateType"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getDateType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "settingWeek"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingWeek()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "settingStartDate"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingStartDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "settingEndDate"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "settingStartTime"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "settingEndTime"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "timing"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getTiming()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "greeting"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getGreeting()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "posterUrl"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getPosterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v4, "caiyin_showing"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 57
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 58
    const/4 v1, 0x1

    .line 61
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "rowId":J
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->insert(Lcom/cmdm/control/bean/CaiYinShowingObject;)Z

    move-result v0

    return v0
.end method
