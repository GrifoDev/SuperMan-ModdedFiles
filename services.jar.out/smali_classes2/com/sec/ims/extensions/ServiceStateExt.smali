.class public Lcom/sec/ims/extensions/ServiceStateExt;
.super Ljava/lang/Object;
.source "ServiceStateExt.java"


# static fields
.field public static final LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I

.field public static final LTE_IMS_VOICE_AVAIL_SUPPORT:I

.field public static final LTE_IMS_VOICE_AVAIL_UNKNOWN:I

.field public static final SNAPSHOT_STATUS_ACTIVATED:I

.field public static final SNAPSHOT_STATUS_DEACTIVATED:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/sec/ims/extensions/ServiceStateExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/extensions/ServiceStateExt;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "LTE_IMS_VOICE_AVAIL_UNKNOWN"

    invoke-static {v0, v2}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->LTE_IMS_VOICE_AVAIL_UNKNOWN:I

    const-string/jumbo v0, "LTE_IMS_VOICE_AVAIL_SUPPORT"

    invoke-static {v0, v3}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->LTE_IMS_VOICE_AVAIL_SUPPORT:I

    const-string/jumbo v0, "LTE_IMS_VOICE_AVAIL_NOT_SUPPORT"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I

    const-string/jumbo v0, "SNAPSHOT_STATUS_DEACTIVATED"

    invoke-static {v0, v2}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    const-string/jumbo v0, "SNAPSHOT_STATUS_ACTIVATED"

    invoke-static {v0, v3}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getIntField(Ljava/lang/String;I)I
    .locals 5

    :try_start_0
    const-class v2, Landroid/telephony/ServiceState;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/ims/extensions/ServiceStateExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
