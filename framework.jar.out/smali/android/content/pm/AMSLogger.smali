.class public Landroid/content/pm/AMSLogger;
.super Ljava/lang/Object;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AMSLogger$AMSFormatter;,
        Landroid/content/pm/AMSLogger$AMSHandler;
    }
.end annotation


# static fields
.field private static final AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

.field private static final AMS_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field private static AMS_VERBOSE_DEFAULT:I

.field private static AMS_VERBOSE_PROP:Ljava/lang/String;

.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DENIALS:I

.field public static LOG_LEVEL_OFF:I

.field private static LOG_MAX_SIZE:I

.field private static LOG_NEW:Ljava/lang/String;

.field private static LOG_OLD:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static final mAMSLogger:Landroid/content/pm/AMSLogger;

.field private static mAMSTxt:Landroid/content/pm/AMSLogger$AMSHandler;

.field private static mFormatterTxt:Landroid/content/pm/AMSLogger$AMSFormatter;

.field private static mLogger:Ljava/util/logging/Logger;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput v2, Landroid/content/pm/AMSLogger;->LOG_LEVEL_OFF:I

    sput v1, Landroid/content/pm/AMSLogger;->LOG_LEVEL_DENIALS:I

    const/4 v0, 0x2

    sput v0, Landroid/content/pm/AMSLogger;->LOG_LEVEL_ALL:I

    const-string/jumbo v0, "AMSLogger"

    sput-object v0, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "persist.security.ams.verbose"

    sput-object v0, Landroid/content/pm/AMSLogger;->AMS_VERBOSE_PROP:Ljava/lang/String;

    sget v0, Landroid/content/pm/AMSLogger;->LOG_LEVEL_DENIALS:I

    sput v0, Landroid/content/pm/AMSLogger;->AMS_VERBOSE_DEFAULT:I

    const-string/jumbo v0, "/data/misc/audit/ams.log"

    sput-object v0, Landroid/content/pm/AMSLogger;->LOG_NEW:Ljava/lang/String;

    const-string/jumbo v0, "/data/misc/audit/ams.old"

    sput-object v0, Landroid/content/pm/AMSLogger;->LOG_OLD:Ljava/lang/String;

    const v0, 0x19000

    sput v0, Landroid/content/pm/AMSLogger;->LOG_MAX_SIZE:I

    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    new-instance v0, Landroid/content/pm/AMSLogger;

    invoke-direct {v0}, Landroid/content/pm/AMSLogger;-><init>()V

    sput-object v0, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.themecenter"

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/pm/AMSLogger;->AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyStackTraceToAMSLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v15, 0x400

    new-array v3, v15, [B

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    const-string/jumbo v12, ""

    const/4 v7, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "| sysTid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v16, 0x400

    cmp-long v15, p3, v16

    if-ltz v15, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_1

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v16, v16, v8

    cmp-long v15, v16, p3

    if-ltz v15, :cond_0

    :cond_1
    cmp-long v15, v8, p3

    if-gez v15, :cond_2

    sub-long v16, p3, v8

    move-wide/from16 v0, v16

    long-to-int v5, v0

    const/4 v15, 0x0

    invoke-virtual {v10, v3, v15, v5}, Ljava/io/InputStream;->read([BII)I

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v7, 0x1

    :cond_3
    if-eqz v7, :cond_6

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "----- end "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " -----\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_4
    sget-object v16, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v15, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v17, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz v7, :cond_5

    sget-object v15, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v17, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    return-void

    :cond_6
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v6

    sget-object v15, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "copyStackTraceToAMSLog Exception"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getCurrentLogLevel()I
    .locals 2

    sget-object v0, Landroid/content/pm/AMSLogger;->AMS_VERBOSE_PROP:Ljava/lang/String;

    sget v1, Landroid/content/pm/AMSLogger;->AMS_VERBOSE_DEFAULT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLogger()Landroid/content/pm/AMSLogger;
    .locals 12

    const/4 v0, 0x0

    const/4 v11, 0x0

    const-class v10, Landroid/content/pm/AMSLogger;

    monitor-enter v10

    :try_start_0
    sget-object v1, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string/jumbo v1, "AMSLogger"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    sget-object v1, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v9

    array-length v1, v9

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v8, v9, v0

    sget-object v2, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v8}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v0, Landroid/content/pm/AMSLogger$AMSHandler;

    new-instance v1, Landroid/content/pm/AMSLogger;

    invoke-direct {v1}, Landroid/content/pm/AMSLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroid/content/pm/AMSLogger;->LOG_NEW:Ljava/lang/String;

    sget-object v3, Landroid/content/pm/AMSLogger;->LOG_OLD:Ljava/lang/String;

    sget v4, Landroid/content/pm/AMSLogger;->LOG_MAX_SIZE:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/AMSLogger$AMSHandler;-><init>(Landroid/content/pm/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Landroid/content/pm/AMSLogger;->mAMSTxt:Landroid/content/pm/AMSLogger$AMSHandler;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Landroid/content/pm/AMSLogger$AMSFormatter;

    new-instance v1, Landroid/content/pm/AMSLogger;

    invoke-direct {v1}, Landroid/content/pm/AMSLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AMSLogger$AMSFormatter;-><init>(Landroid/content/pm/AMSLogger;Landroid/content/pm/AMSLogger$AMSFormatter;)V

    sput-object v0, Landroid/content/pm/AMSLogger;->mFormatterTxt:Landroid/content/pm/AMSLogger$AMSFormatter;

    sget-object v0, Landroid/content/pm/AMSLogger;->mAMSTxt:Landroid/content/pm/AMSLogger$AMSHandler;

    sget-object v1, Landroid/content/pm/AMSLogger;->mFormatterTxt:Landroid/content/pm/AMSLogger$AMSFormatter;

    invoke-virtual {v0, v1}, Landroid/content/pm/AMSLogger$AMSHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    sget-object v0, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Landroid/content/pm/AMSLogger;->mAMSTxt:Landroid/content/pm/AMSLogger$AMSHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    sget-object v0, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v10

    return-object v0

    :catch_0
    move-exception v6

    monitor-exit v10

    return-object v11

    :catch_1
    move-exception v7

    monitor-exit v10

    return-object v11

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method private static getTraceFileSize(Ljava/lang/String;)J
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_0

    sget-object v2, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " null, stack Trace should be logged in logcat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2

    :cond_1
    sget-object v2, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trace File:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist. Try to create the file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    const-wide/16 v2, 0x0

    return-wide v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " could not be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public log(ZLandroid/content/pm/ApplicationInfo;ZLandroid/content/pm/ApplicationInfo;ZLandroid/content/Intent;ILjava/lang/String;Z)V
    .locals 12

    invoke-static {}, Landroid/content/pm/AMSLogger;->getCurrentLogLevel()I

    move-result v2

    sget v9, Landroid/content/pm/AMSLogger;->LOG_LEVEL_OFF:I

    if-ne v2, v9, :cond_0

    return-void

    :cond_0
    const-string/jumbo v9, "setApplicationHiddenSettingAsUser"

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "setPackageStoppedState"

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    sget v9, Landroid/content/pm/AMSLogger;->LOG_LEVEL_DENIALS:I

    if-ne v2, v9, :cond_3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    :cond_4
    const/4 v4, 0x0

    :goto_0
    sget-object v9, Landroid/content/pm/AMSLogger;->AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_7

    sget-object v9, Landroid/content/pm/AMSLogger;->AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v9, Landroid/content/pm/AMSLogger;->AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    if-eqz v6, :cond_6

    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    return-void

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    const-string/jumbo v9, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_a

    const-string/jumbo v5, "Allowed <"

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "> < "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez p6, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "Intent: null> <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "srcInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p3, :cond_e

    const-string/jumbo v9, "t:"

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p2, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->agentType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "> <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "destInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p5, :cond_f

    const-string/jumbo v9, "t:"

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;

    monitor-enter v10

    :try_start_0
    sget-object v9, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v9, v11, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-void

    :cond_a
    const-string/jumbo v5, "Denied <"

    goto/16 :goto_1

    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "Intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " action:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " component:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "> <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v9, "u:"

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v9, "u:"

    goto/16 :goto_4

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public logStackTrace(ILjava/lang/String;)V
    .locals 12

    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/AMSLogger;->getTraceFileSize(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-ltz v1, :cond_0

    new-instance v8, Landroid/content/pm/AMSLogger$1;

    const/16 v1, 0x8

    invoke-direct {v8, p0, v2, v1, v2}, Landroid/content/pm/AMSLogger$1;-><init>(Landroid/content/pm/AMSLogger;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/FileObserver;->startWatching()V

    :try_start_0
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    :try_start_1
    invoke-static {p1, v1}, Landroid/os/Process;->sendSignal(II)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v10, v11}, Landroid/os/FileObserver;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {v8}, Landroid/os/FileObserver;->stopWatching()V

    :try_start_3
    sget-object v3, Landroid/content/pm/AMSLogger;->LOG_NEW:Ljava/lang/String;

    move v1, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/content/pm/AMSLogger;->copyStackTraceToAMSLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v8

    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v7

    sget-object v1, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logStackTrace exception"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "copyStackTraceToAMSLog exception"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sget-object v3, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;

    monitor-enter v3

    :try_start_5
    sget-object v1, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v6, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v3

    throw v1
.end method
