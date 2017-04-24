.class public Lcom/cmdm/control/util/file/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cn:Lcom/cmdm/control/util/file/FileReadWrite;

.field private static es:J

.field static final synthetic et:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/cmdm/control/util/file/FileUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/cmdm/control/util/file/FileUtil;->et:Z

    new-instance v0, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v0}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    sput-object v0, Lcom/cmdm/control/util/file/FileUtil;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-wide/32 v0, 0x3200000

    sput-wide v0, Lcom/cmdm/control/util/file/FileUtil;->es:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    return-wide v2

    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/cmdm/control/util/file/FileUtil;->b(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/cmdm/control/util/file/FileUtil;->c(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method private static c(Ljava/io/File;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0
.end method

.method public static delSortedFiles(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 24

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v20, "\u7ef4\u62a4\u6307\u5b9a\u6587\u4ef6\u5939"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u9700\u8981\u4e0b\u8f7d\u6307\u5b9a\u6587\u4ef6\u7b49\u4e8e\uff1a"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getTotalExternalMemorySize()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-lez v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/file/FileManager;->isEnoughForDownload(J)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/util/file/FileUtil;->loadDefaultFileSize()J

    move-result-wide v6

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v20, "\u53ef\u7528\u6307\u5b9a\u6587\u4ef6\u5939"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u9ed8\u8ba4\u6587\u4ef6\u5927\u5c0f\u7b49\u4e8e\uff1a"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u53ef\u7528\u63a7\u4ef6\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/cmdm/control/util/file/FileUtil;->getAutoFileOrFilesSize(Ljava/lang/String;)J

    move-result-wide v12

    sub-long v8, v6, v12

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getAvailableExternalMemorySize()J

    move-result-wide v4

    cmp-long v17, v8, v4

    if-lez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v20, v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v17, v20, v12

    if-gez v17, :cond_3

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/cmdm/control/util/file/FileUtil;->listSortedFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v16

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v11, v0, :cond_1

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    :goto_2
    return-object v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v20, v20, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v20, v16, v11

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/cmdm/control/util/file/FileManager;->deleteFile(Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v20, "\u7ef4\u62a4\u6307\u5b9a\u6587\u4ef6\u5939"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u5220\u9664\u4e86\u6307\u5b9a\u6587\u4ef6\uff1a"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v21, v16, v11

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "--\u7ef4\u62a4\u72b6\u6001\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    aget-object v17, v16, v11

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v22

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v17, v20, v22

    if-gez v17, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v20, "\u7ef4\u62a4\u6307\u5b9a\u6587\u4ef6\u5939"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v20, "\u7ef4\u62a4\u4e4b\u540e\u7a7a\u4f59\u7a7a\u95f4\u5927\u5c0f\uff1a"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_3
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/cmdm/control/util/file/FileUtil;->getAutoFileOrFilesSize(Ljava/lang/String;)J

    move-result-wide v12

    sub-long v20, v6, v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v17, v20, v22

    if-lez v17, :cond_5

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v20, v20, v12

    sub-long v20, v20, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/cmdm/control/util/file/FileUtil;->listSortedFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v16

    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v11, v0, :cond_6

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_2

    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v20, v16, v11

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/cmdm/control/util/file/FileManager;->deleteFile(Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v20, "\u7ef4\u62a4\u6307\u5b9a\u6587\u4ef6\u5939"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u5220\u9664\u4e86\u6307\u5b9a\u6587\u4ef6\uff1a"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v21, v16, v11

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "--\u7ef4\u62a4\u72b6\u6001\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    aget-object v17, v16, v11

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v22

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v17, v20, v22

    if-gez v17, :cond_7

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v20, "\u7ef4\u62a4\u6307\u5b9a\u6587\u4ef6\u5939"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v20, "\u7ef4\u62a4\u4e4b\u540e\u7a7a\u4f59\u7a7a\u95f4\u5927\u5c0f\uff1a"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_8
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_2
.end method

.method public static getAutoFileOrFilesSize(Ljava/lang/String;)J
    .locals 5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/cmdm/control/util/file/FileUtil;->b(Ljava/io/File;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v3}, Lcom/cmdm/control/util/file/FileUtil;->c(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static listSortedFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 6

    sget-boolean v4, Lcom/cmdm/control/util/file/FileUtil;->et:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v4, v1

    new-array v0, v4, [Lcom/cmdm/control/util/file/FileWrapper;

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v4, v1

    new-array v3, v4, [Ljava/io/File;

    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_2

    return-object v3

    :cond_1
    new-instance v4, Lcom/cmdm/control/util/file/FileWrapper;

    aget-object v5, v1, v2

    invoke-direct {v4, v5}, Lcom/cmdm/control/util/file/FileWrapper;-><init>(Ljava/io/File;)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/cmdm/control/util/file/FileWrapper;->getFile()Ljava/io/File;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static loadData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/cmdm/control/util/file/FileUtil;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v1, p0}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static loadDefaultFileSize()J
    .locals 4

    const-string v1, "DefaultFileSize"

    invoke-static {v1}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    sget-wide v2, Lcom/cmdm/control/util/file/FileUtil;->es:J

    goto :goto_0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileUtil;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v1, p0, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static saveDataNoEncode(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/util/file/FileUtil;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v1, p0, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->writeFileNoEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method
