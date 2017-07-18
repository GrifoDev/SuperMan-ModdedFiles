.class public Lcom/gsma/services/rcs/CommonServiceConfiguration;
.super Ljava/lang/Object;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final WHERE_CLAUSE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    const-string v2, "getStringValueSetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v3

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v8, v9

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4

    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    const-string v3, "updateSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDefaultMessagingMethod()Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "DefaultMessagingMethod"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMessagingUX()Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MessagingMode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumBatteryLevel()Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MinimumBatteryLevel"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    move-result-object v0

    return-object v0
.end method

.method public getMyContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 5

    iget-object v3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/gsma/services/rcs/contact/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot instantiate ContactUtil"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v4, "MyContactId"

    invoke-static {v3, v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/gsma/services/rcs/contact/ContactUtil;->formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMyDisplayName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MyDisplayName"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConfigValid()Z
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "ConfigurationValidity"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDefaultMessagingMethod(Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;)V
    .locals 3

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {p1, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {p1, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid default messaging method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "DefaultMessagingMethod"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method public setMinimumBatteryLevel(Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "MinimumBatteryLevel"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method public setMyDisplayName(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Display name is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "MyDisplayName"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method
