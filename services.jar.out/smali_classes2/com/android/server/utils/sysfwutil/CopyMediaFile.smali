.class public Lcom/android/server/utils/sysfwutil/CopyMediaFile;
.super Ljava/lang/Object;
.source "CopyMediaFile.java"


# static fields
.field private static final FILE_MODE:I = 0x1fd

.field private static final FOLDER_MODE:I = 0x1b4

.field private static final MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

.field private static final MEDIA_FILE_PATH_TARGET:Ljava/io/File;

.field private static final PROPERTY_FIRST_BOOT:Ljava/lang/String; = "persist.sys.vold.firstboot"

.field private static final TAG:Ljava/lang/String; = "CopyMediaFile"

.field private static copySuccess:Z = false

.field private static firstBoot:Z = false

.field private static hasOdmPath:Z = false

.field private static final media_rw:I = 0x3ff


# instance fields
.field private fin:Ljava/io/FileInputStream;

.field private fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field private fout:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/hidden/INTERNAL_SDCARD"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/media/0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_TARGET:Ljava/io/File;

    sput-boolean v2, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    sput-boolean v2, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    sput-boolean v2, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fis:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fos:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    const-string/jumbo v0, "CopyMediaFile"

    const-string/jumbo v1, "Started : CopyMediaFile"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 11

    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " src : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / dest : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1fd

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_1

    array-length v8, v4

    if-gtz v8, :cond_2

    :cond_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error chmod or chown "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_6

    if-eqz v1, :cond_3

    array-length v8, v1

    if-ge v6, v8, :cond_3

    aget-object v8, v4, v6

    aget-object v9, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File already Exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/io/File;

    aget-object v9, v4, v6

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    aget-object v10, v4, v6

    invoke-direct {v9, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v8, v9}, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    const/16 v8, 0x400

    new-array v0, v8, [B

    :goto_3
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_7

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_2
    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File not found : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_5

    :try_start_3
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :cond_5
    :goto_4
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_6

    :try_start_4
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :cond_6
    :goto_5
    return-void

    :cond_7
    :try_start_5
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1fd

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_8

    :try_start_6
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    :cond_8
    :goto_6
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_6

    :try_start_7
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_5

    :catch_3
    move-exception v3

    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_9

    :try_start_9
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    :cond_9
    :goto_7
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_6

    :try_start_a
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception v3

    goto :goto_5

    :catch_5
    move-exception v2

    :try_start_b
    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error chmod or chown "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_a

    :try_start_c
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    :cond_a
    :goto_8
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_6

    :try_start_d
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_5

    :catch_6
    move-exception v3

    goto :goto_5

    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v9, :cond_b

    :try_start_e
    iget-object v9, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    :cond_b
    :goto_9
    iget-object v9, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v9, :cond_c

    :try_start_f
    iget-object v9, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    :cond_c
    :goto_a
    throw v8

    :catch_7
    move-exception v3

    goto :goto_a

    :catch_8
    move-exception v3

    goto :goto_9

    :catch_9
    move-exception v3

    goto/16 :goto_5

    :catch_a
    move-exception v3

    goto/16 :goto_4

    :catch_b
    move-exception v3

    goto :goto_8

    :catch_c
    move-exception v3

    goto :goto_7

    :catch_d
    move-exception v3

    goto :goto_6
.end method


# virtual methods
.method public copyMpFile()V
    .locals 4

    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "copyMpFile++"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

    sget-object v2, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_TARGET:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "copyMpFile--"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CopyMediaFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "copyMpFile Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "CopyMediaFile: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " firstBoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " hasOdmPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " copySuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasOdm()Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/odm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "Odm is exist!"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    return v3

    :cond_0
    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "Odm is not eexist"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isFirstBoot()Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "persist.sys.vold.firstboot"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "This is not a first boot!"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "This is a first boot!, So set property"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.sys.vold.firstboot"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    return v3
.end method
