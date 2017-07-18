.class Lcom/android/launcher2/Launcher$CompressTask;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$CompressTask;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$CompressTask;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method


# virtual methods
.method public bitmapCompress()V
    .locals 13

    const-string v1, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    const-string v0, "homescreen.png"

    const-string v2, "homescreen.temp"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1200()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1300()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_4

    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1300()Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/launcher2/Launcher;->access$1202(Z)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v7, v8

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/Launcher$CompressTask;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->deleteScreenBitmap()V

    :cond_4
    return-void

    :catch_0
    move-exception v3

    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bitmapCompress close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_1
    :try_start_3
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bitmapCompress out FileNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bitmapCompress close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_3
    throw v9

    :catch_3
    move-exception v3

    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bitmapCompress close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v9

    move-object v7, v8

    goto :goto_2

    :catch_4
    move-exception v3

    move-object v7, v8

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher$CompressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher$CompressTask;->bitmapCompress()V

    const/4 v0, 0x0

    return-object v0
.end method
