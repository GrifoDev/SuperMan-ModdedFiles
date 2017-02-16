.class public Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;
.super Ljava/lang/Object;
.source "CaFileLogger.java"


# static fields
.field private static final LOGTYPE_GPSPOS:I = 0x1

.field private static final LOG_FILE_DIR_NAME:Ljava/lang/String;

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;


# instance fields
.field private final mDataOutputStream:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/DataOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cae"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->LOG_FILE_DIR_NAME:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 63
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLogFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 21
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "logDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 256
    .local v2, "curTime":Ljava/util/Calendar;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v14, v0

    .line 257
    .local v14, "curTimeYear":J
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-long v10, v0

    .line 258
    .local v10, "curTimeMonth":J
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v4, v0

    .line 259
    .local v4, "curTimeDay":J
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v6, v0

    .line 260
    .local v6, "curTimeHour":J
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v8, v0

    .line 261
    .local v8, "curTimeMinute":J
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v12, v0

    .line 263
    .local v12, "curTimeSecond":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "%04dY%02dM%02dD%02dH%02dM%02dS_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 264
    const-string/jumbo v18, ".log"

    .line 263
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 264
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x2

    aput-object v19, v18, v20

    .line 265
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x3

    aput-object v19, v18, v20

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x4

    aput-object v19, v18, v20

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x5

    aput-object v19, v18, v20

    .line 263
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "fileName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "logDir = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 268
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fileName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 270
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .local v16, "logFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v17

    if-nez v17, :cond_0

    .line 273
    const-string/jumbo v17, "createNewFile() error"

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 274
    const/16 v17, 0x0

    return-object v17

    .line 279
    :cond_0
    return-object v16
.end method

.method private getLogStorageDir()Ljava/io/File;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 214
    sget-object v4, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->LOG_FILE_DIR_NAME:Ljava/lang/String;

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 214
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "logDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 221
    :try_start_0
    const-string/jumbo v3, "External storage directory is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 222
    return-object v5

    .line 224
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 239
    :cond_2
    :goto_0
    return-object v1

    .line 225
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    const-string/jumbo v4, " already exists and is not a directory"

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 227
    return-object v5

    .line 230
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-object v5

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final logging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string/jumbo v1, "This file dose not exist."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 151
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final loggingForKML(Ljava/lang/String;J[D[FJ)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "sysTime"    # J
    .param p4, "location"    # [D
    .param p5, "additionalInfo"    # [F
    .param p6, "timeStamp"    # J

    .prologue
    const/4 v2, 0x3

    .line 179
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    if-eqz p4, :cond_0

    array-length v1, p4

    if-gt v1, v2, :cond_2

    .line 187
    :cond_0
    return-void

    .line 181
    :cond_1
    const-string/jumbo v1, "This file dose not exist."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_2
    if-eqz p5, :cond_0

    .line 186
    array-length v1, p5

    if-le v1, v2, :cond_0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 193
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    aget v2, p5, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 194
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    aget-wide v2, p4, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    aget-wide v2, p4, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    aget-wide v2, p4, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 197
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    aget v2, p5, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    aget v2, p5, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1, p6, p7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final startLogging(Ljava/lang/String;)Z
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 74
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 75
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 74
    if-eqz v6, :cond_1

    .line 76
    :cond_0
    const-string/jumbo v6, "This file is created already."

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 77
    return v7

    .line 80
    :cond_1
    const/4 v5, 0x0

    .line 81
    .local v5, "logFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 84
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getLogStorageDir()Ljava/io/File;

    move-result-object v4

    .line 85
    .local v4, "logDir":Ljava/io/File;
    if-nez v4, :cond_2

    .line 86
    const-string/jumbo v6, "Log directory is null"

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 87
    return v7

    .line 89
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getLogFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 90
    .local v5, "logFile":Ljava/io/File;
    if-nez v5, :cond_3

    .line 91
    const-string/jumbo v6, "Log file is null"

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 92
    return v7

    .line 94
    :cond_3
    new-instance v0, Ljava/io/DataOutputStream;

    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v6, 0x1

    return v6

    .line 102
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v4    # "logDir":Ljava/io/File;
    .end local v5    # "logFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 104
    return v7

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 100
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 101
    return v7

    .line 96
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 97
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 98
    return v7
.end method

.method public final stopLogging(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_0
    return v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 130
    return v2
.end method
