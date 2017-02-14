.class final Lcom/android/server/input/InputManagerService$ControlWakeKey;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControlWakeKey"
.end annotation


# instance fields
.field private final WAKEKEY_TAG:Ljava/lang/String;

.field private mDefaultWakeKey:Ljava/lang/String;

.field private mWakeKeyFileName:Ljava/lang/String;

.field private mWakeKeyFilePath:Ljava/lang/String;

.field private mWakeKeyRefCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mfosWakeKey:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    const-string/jumbo v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFileName:Ljava/lang/String;

    const-string/jumbo v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    const-string/jumbo v2, "WAKEKEY"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->WAKEKEY_TAG:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "msm7k"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "msm7627a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const-string/jumbo v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    const-string/jumbo v2, "0"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v2, "ks023g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ks02lte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    const-string/jumbo v2, "116"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "WAKEKEY"

    const-string/jumbo v3, "makeWakeKeyRefCount in constructor returns false"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v2, "montblanc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    const-string/jumbo v2, "172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "msm8960"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    const-string/jumbo v2, "172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    return-void
.end method

.method private makeWakeKeyRefCount(ZLjava/lang/String;)Z
    .locals 9

    const/4 v4, 0x0

    const-string/jumbo v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v2, v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "WAKEKEY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mWakeKeyRefCount("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is increased: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    array-length v6, v3

    move v5, v4

    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v2, v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    if-gtz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "WAKEKEY"

    const-string/jumbo v7, "keycode is removed"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "WAKEKEY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mWakeKeyRefCount("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is decreased: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private makeWakeKeyString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "WAKEKEY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keycodes in makeWakeKeyString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_1
    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "mWakeKeyRefCount is empty"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeWakeKeyString(Ljava/lang/String;)V
    .locals 5

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "wakekeyfile is created"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "FileOutputStream is passed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "mfosWakeKey writing is passed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "closing mfosWakeKey is passed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "wakekeyfile.createNewFile() is failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "FileOutputStream is failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "mfosWakeKey writing is failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    const-string/jumbo v3, "WAKEKEY"

    const-string/jumbo v4, "closing mfosWakeKey is failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public setWakeKeyDynamically(ZLjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "WAKEKEY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input keycodes is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isPut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "WAKEKEY"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keycodes in setWakeKeyDynamically is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "empty"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "WAKEKEY"

    const-string/jumbo v1, "makeWakeKeyRefCount in setWakeKeyDynamically returns false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    return-void
.end method
