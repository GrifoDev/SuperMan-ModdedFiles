.class public Lcom/samsung/android/hardware/SemHardwareInterface;
.super Ljava/lang/Object;
.source "SemHardwareInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x3

.field public static final TORCH_BRIGHTNESS_MIN:I = 0x1

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x2

.field private static final mLevelTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0xe

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/SemHardwareInterface;->mLevelTable:[I

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTorchLight(I)V
    .locals 8
    .param p0, "level"    # I

    .prologue
    .line 103
    const/4 v3, 0x0

    .line 107
    .local v3, "fw":Ljava/io/FileWriter;
    sget-object v7, Lcom/samsung/android/hardware/SemHardwareInterface;->mLevelTable:[I

    aget p0, v7, p0

    .line 109
    const-string/jumbo v6, "/sys/class/camera/flash/rear_flash"

    .line 112
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "fl":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 114
    const-string/jumbo v6, "/sys/class/camera/rear/rear_flash"

    .line 116
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v4, "fw":Ljava/io/FileWriter;
    if-lez p0, :cond_3

    .end local v3    # "fw":Ljava/io/FileWriter;
    const/16 v7, 0xf

    if-ge p0, v7, :cond_3

    .line 119
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "lLevel":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .end local v5    # "lLevel":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 131
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v3, v4

    .line 102
    .end local v2    # "fl":Ljava/io/File;
    .end local v4    # "fw":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 122
    .restart local v2    # "fl":Ljava/io/File;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :cond_3
    :try_start_3
    const-string/jumbo v7, "0"

    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .line 125
    .end local v2    # "fl":Ljava/io/File;
    .end local v4    # "fw":Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    if-eqz v3, :cond_2

    .line 131
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 132
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fl":Ljava/io/File;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fl":Ljava/io/File;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .line 127
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    if-eqz v3, :cond_2

    .line 131
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 132
    :catch_4
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 129
    :goto_5
    if-eqz v3, :cond_4

    .line 131
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 128
    :cond_4
    :goto_6
    throw v7

    .line 132
    :catch_5
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fl":Ljava/io/File;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    goto :goto_5

    .line 124
    .end local v2    # "fl":Ljava/io/File;
    .local v3, "fw":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 126
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fl":Ljava/io/File;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    goto :goto_4
.end method

.method public static setTorchLight(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/hardware/SemHardwareInterface;->setTorchLight(I)V

    .line 72
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/hardware/SemHardwareInterface;->setTorchLight(I)V

    goto :goto_0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 40
    const/4 v3, 0x0

    .line 44
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 51
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 61
    const/4 v5, 0x1

    return v5

    .line 45
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    return v6

    .line 52
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 53
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    :goto_1
    return v6

    .line 56
    :catch_2
    move-exception v2

    .line 57
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 52
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
