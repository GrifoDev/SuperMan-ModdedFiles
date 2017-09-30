.class public Lcom/cmdm/control/util/mobile/TelAreaUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;,
        Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;,
        Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
    }
.end annotation


# static fields
.field public static final DATABASE_PATH:Ljava/lang/String;

.field private static ev:Lcom/cmdm/control/util/mobile/TelAreaUtil; = null

.field private static final ew:Ljava/lang/String; = "tel.bin"

.field private static ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

.field private static ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

.field private static ez:Ljava/lang/String;


# instance fields
.field public final AREADATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ev:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ez:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/CXDM/DownloadCaiXiangImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->DATABASE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tel.bin"

    iput-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->AREADATA:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;JJJZ)I
    .locals 6

    new-instance v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    invoke-direct {v0, p0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V

    :cond_0
    sub-long v2, p4, p2

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v1

    int-to-long v4, v1

    div-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    add-long/2addr v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->read(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v0, p6, p7}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->inWhich(J)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v1

    int-to-long v4, v1

    add-long p2, v2, v4

    :goto_0
    cmp-long v1, p2, p4

    if-lez v1, :cond_0

    if-eqz p8, :cond_3

    iget v0, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0, p6, p7}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->inWhich(J)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v1

    int-to-long v4, v1

    sub-long p4, v2, v4

    goto :goto_0

    :cond_2
    iget v0, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tel.bin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ez:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ez:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sput-object p1, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ez:Ljava/lang/String;

    new-instance v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    invoke-direct {v0, p0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->read(Ljava/io/RandomAccessFile;)V

    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->print()V

    new-instance v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-direct {v0, p0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->read(Ljava/io/RandomAccessFile;)V

    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->print()V

    :cond_1
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    iget v0, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eD:I

    int-to-long v2, v0

    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    iget v0, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eE:I

    int-to-long v4, v0

    move-object v0, p0

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/io/RandomAccessFile;JJJZ)I

    move-result v0

    sget-object v2, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-virtual {v2, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->getCodeByIndex(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v9

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    move-object v0, v9

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;",
            ">;",
            "Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    iget v0, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    iget v2, p2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    iget-wide v2, p2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    iget-wide v4, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iget v2, p2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eG:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eG:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private aN(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private d(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    new-instance v10, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->print()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v3, v2

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/util/ArrayList;Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v4, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V

    invoke-virtual {v4}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->Size()I

    move-result v2

    invoke-virtual {v10}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->Size()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v4, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eD:I

    iget v5, v4, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eD:I

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    invoke-virtual {v2}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v2

    mul-int/2addr v2, v6

    add-int/2addr v2, v5

    iput v2, v4, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eE:I

    invoke-virtual {v4}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->print()V

    invoke-virtual {v4, v3}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->write(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v10, v3}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->write(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_7

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_4
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Long;

    if-nez v6, :cond_5

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x1

    move-object v3, v2

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v16, v16, v4

    cmp-long v2, v14, v16

    if-nez v2, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_6
    new-instance v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/util/ArrayList;Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x1

    move-object v3, v2

    goto/16 :goto_2

    :cond_7
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->write(Ljava/io/RandomAccessFile;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    :catch_0
    move-exception v2

    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_6
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_8
    :goto_7
    throw v2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_5
.end method

.method public static declared-synchronized getInstance()Lcom/cmdm/control/util/mobile/TelAreaUtil;
    .locals 2

    const-class v1, Lcom/cmdm/control/util/mobile/TelAreaUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ev:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;

    invoke-direct {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil;-><init>()V

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ev:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    :cond_0
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ev:Lcom/cmdm/control/util/mobile/TelAreaUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public genIndexFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->aN(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->x(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tel.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public searchTel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->searchTel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public searchTel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v2, 0x38

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v2, 0x36

    if-ne v0, v2, :cond_1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v0, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v0, v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v6, :cond_5

    const/16 v0, 0x8

    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v6, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method x(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    aget-object v0, v3, v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v0, v6, :cond_0

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
