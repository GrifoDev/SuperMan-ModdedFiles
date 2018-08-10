.class Landroid/telephony/SmsMessage$PduFormatChecker;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduFormatChecker"
.end annotation


# static fields
.field private static file:Ljava/io/File;

.field private static fileInputStream:Ljava/io/FileInputStream;

.field private static fileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static synthetic -wrap0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/telephony/SmsMessage$PduFormatChecker;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/telephony/SmsMessage$PduFormatChecker;->write(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/radio/fmt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    sput-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    sput-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static read()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    :goto_0
    sget-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SmsMessage"

    const-string/jumbo v4, "[PduFormatChecker] faile to read"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_1
    sget-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_2

    sget-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static write(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_0
    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SmsMessage"

    const-string/jumbo v3, "[PduFormatChecker] faile to write"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
