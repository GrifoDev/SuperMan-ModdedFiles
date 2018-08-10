.class public Lcom/android/internal/os/RoSystemProperties;
.super Ljava/lang/Object;
.source "RoSystemProperties.java"


# static fields
.field public static final CONFIG_LOW_RAM:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

.field public static final CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

.field public static final CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

.field public static final CRYPTO_BLOCK_ENCRYPTED:Z

.field public static final CRYPTO_ENCRYPTABLE:Z

.field public static final CRYPTO_ENCRYPTED:Z

.field public static final CRYPTO_FILE_ENCRYPTED:Z

.field public static final CRYPTO_STATE:Ljava/lang/String;

.field public static final CRYPTO_TYPE:Ljava/lang/String;

.field public static final DEBUGGABLE:Z

.field public static final FACTORYTEST:I

.field public static final FW_SYSTEM_USER_SPLIT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const-string/jumbo v0, "ro.factorytest"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/RoSystemProperties;->FACTORYTEST:I

    const-string/jumbo v0, "ro.control_privapp_permissions"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.low_ram"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_LOW_RAM:Z

    const-string/jumbo v0, "ro.fw.system_user_split"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->FW_SYSTEM_USER_SPLIT:Z

    const-string/jumbo v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    const-string/jumbo v0, "ro.crypto.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "unsupported"

    sget-object v2, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTABLE:Z

    const-string/jumbo v0, "encrypted"

    sget-object v2, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    const-string/jumbo v0, "file"

    sget-object v2, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    const-string/jumbo v0, "block"

    sget-object v2, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_BLOCK_ENCRYPTED:Z

    const-string/jumbo v0, "log"

    sget-object v2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

    const-string/jumbo v0, "enforce"

    sget-object v2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/lit8 v1, v0, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
