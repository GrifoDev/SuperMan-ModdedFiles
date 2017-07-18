.class public Lcom/gsma/services/rcs/contact/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MCC_UNDEFINED:I = 0x0

.field private static final MSISDN_PREFIX_INTERNATIONAL:Ljava/lang/String; = "00"

.field private static final PATTERN_CONTACT:Ljava/util/regex/Pattern;

.field private static final PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

.field private static final REGEXP_CONTACT:Ljava/lang/String; = "^00\\d{1,15}$|^[+]?\\d{1,15}$|^\\d{1,15}$"

.field private static final REGEXP_COUNTRY_CODE:Ljava/lang/String; = "^\\+\\d{1,3}$"

.field private static volatile instance:Lcom/gsma/services/rcs/contact/ContactUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountryAreaCode:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private msisdnWithPrefixAndCountryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    const-string v0, "^00\\d{1,15}$|^[+]?\\d{1,15}$|^\\d{1,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    const-string v0, "^\\+\\d{1,3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getCodes(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "MyCountryCode"

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;
    .locals 6

    const-class v3, Lcom/gsma/services/rcs/contact/ContactUtil;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    if-nez v2, :cond_1

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Context is null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->getCodes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstance() countryCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-direct {v2, p0}, Lcom/gsma/services/rcs/contact/ContactUtil;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    iput-object v0, v2, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    sget-object v4, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/contact/ContactUtil;->getMyCountryAreaCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    return-object v2
.end method

.method private stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "[ -]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatContact() contact:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Country code is unknown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCountryAreaCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The contact number doesn\'t start with countryCode or countryAreaCode, add countryCode in front of it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input parameter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMyCountryAreaCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    const-string v1, "CountryAreaCode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyCountryCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    const-string v1, "MyCountryCode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVCard(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v2, 0x0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v15, :cond_1

    :try_start_1
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v2, "lookup"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v15, :cond_1

    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_4
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v13

    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    move-result v14

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vCardFile.delete();flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v16, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v16, :cond_7

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_1
    move-object/from16 v15, v16

    goto/16 :goto_0

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v10

    :goto_2
    :try_start_7
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-direct {v2, v10}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v15, :cond_9

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_9
    :goto_4
    throw v2

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object/from16 v15, v16

    goto :goto_3

    :catch_5
    move-exception v10

    move-object/from16 v15, v16

    goto :goto_2
.end method

.method public isMyCountryCodeDefined()Z
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidContact(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
