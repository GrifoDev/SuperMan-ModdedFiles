.class public Lcom/samsung/android/rlc/common/Extra$DevInfo;
.super Ljava/lang/Object;
.source "Extra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/common/Extra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevInfo"
.end annotation


# static fields
.field public static final DM_ACTIVATE_REPORT_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/report/activate"

.field public static final DM_ACTIVATE_TOKEN_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/cmd/activate"

.field public static final DM_BLINK_REPORT_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/report/blink"

.field public static final DM_BLINK_TOKEN_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/cmd/blink"

.field public static final DM_CERT_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/getCert5"

.field public static final DM_CHECK_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/check5"

.field public static final DM_COMMAND_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/getCmd"

.field public static final DM_COMPLETE_REPORT_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/report/complete"

.field public static final DM_COMPLETE_TOKEN_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/cmd/complete"

.field public static final DM_LOCK_REPORT_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/report/lock"

.field public static final DM_LOCK_TOKEN_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/cmd/lock"

.field public static final DM_MSG_REPORT_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/cmd/message"

.field public static final DM_PINUNLOCK_REPORT_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/unlocked"

.field public static final DM_PIN_UNLOCK_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/unlocked"

.field public static final DM_REGIST_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/register"

.field public static final DM_THEFT_PTC_TOKEN_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/checkDestroy"

.field public static final DM_UNLOCK_REPORT_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/report/unlock"

.field public static final DM_UNLOCK_TOKEN_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/cmd/unlock"

.field public static final DM_UNREGIST_URL:Ljava/lang/String; = "https://%s/dm/v1/dev/unregister"

.field public static final GLOBAL_DM_DOMAIN:Ljava/lang/String; = "rmm.samsung.com"

.field public static final MG_DELIVERY_REPORT_URL:Ljava/lang/String; = "https://%s/mg/v1/push/deliveryreport"

.field public static final MG_REGIST_URL:Ljava/lang/String; = "https://%s/v1/sup/dev/register"

.field public static final MG_UNREGIST_URL:Ljava/lang/String; = "https://%s/v1/sup/dev/unregister"

.field public static final PCW_VERSION:Ljava/lang/String; = "1.0.00"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
