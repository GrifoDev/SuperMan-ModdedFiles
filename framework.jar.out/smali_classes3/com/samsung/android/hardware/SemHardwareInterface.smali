.class public Lcom/samsung/android/hardware/SemHardwareInterface;
.super Ljava/lang/Object;
.source "SemHardwareInterface.java"


# static fields
.field private static EPEN_SAVINGMODE_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SemHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x3

.field public static final TORCH_BRIGHTNESS_MIN:I = 0x1

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x2

.field private static final mLevelTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0xe

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/SemHardwareInterface;->mLevelTable:[I

    const-string/jumbo v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/samsung/android/hardware/SemHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEPenSavingmode(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/hardware/SemHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/hardware/SemHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setTorchLight(I)V
    .locals 8

    const/4 v3, 0x0

    sget-object v7, Lcom/samsung/android/hardware/SemHardwareInterface;->mLevelTable:[I

    aget p0, v7, p0

    const-string/jumbo v6, "/sys/class/camera/flash/rear_flash"

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v6, "/sys/class/camera/rear/rear_flash"

    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_3

    const/16 v7, 0xf

    if-ge p0, v7, :cond_3

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v3, v4

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v7, "0"

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_6
    throw v7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_4
.end method

.method public static setTorchLight(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/hardware/SemHardwareInterface;->setTorchLight(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/hardware/SemHardwareInterface;->setTorchLight(I)V

    goto :goto_0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_0
.end method
