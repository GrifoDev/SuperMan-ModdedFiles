.class public Lcom/android/systemui/statusbar/policy/EncryptionHelper;
.super Ljava/lang/Object;
.source "EncryptionHelper.java"


# static fields
.field public static final IS_DATA_ENCRYPTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->isDataEncrypted()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isDataEncrypted()Z
    .locals 2

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
