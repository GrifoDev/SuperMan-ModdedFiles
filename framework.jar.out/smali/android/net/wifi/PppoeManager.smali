.class public Landroid/net/wifi/PppoeManager;
.super Ljava/lang/Object;
.source "PppoeManager.java"


# static fields
.field private static final BASE:I = 0x70000

.field public static final BUSY:I = 0x2

.field public static final CMD_START_PPPOE:I = 0x70001

.field public static final CMD_START_PPPOE_FAILED:I = 0x70002

.field public static final CMD_START_PPPOE_SUCCEDED:I = 0x70003

.field public static final CMD_STOP_PPPOE:I = 0x70004

.field public static final CMD_STOP_PPPOE_FAILED:I = 0x70005

.field public static final CMD_STOP_PPPOE_SUCCEDED:I = 0x70006

.field public static final ERROR:I = 0x0

.field public static final EXTRA_PPPOE_DNS1:Ljava/lang/String; = "pppoe_dns1"

.field public static final EXTRA_PPPOE_DNS2:Ljava/lang/String; = "pppoe_dns2"

.field public static final EXTRA_PPPOE_IP_STATE:Ljava/lang/String; = "pppoe_ip_state"

.field public static final EXTRA_PPPOE_RESULT_ERROR_CODE:Ljava/lang/String; = "pppoe_result_error_code"

.field public static final EXTRA_PPPOE_RESULT_STATUS:Ljava/lang/String; = "pppoe_result_status"

.field public static final EXTRA_PPPOE_STATE:Ljava/lang/String; = "pppoe_state"

.field public static final PPPOE_COMPLETED_ACTION:Ljava/lang/String; = "android.net.wifi.PPPOE_COMPLETED_ACTION"

.field public static final PPPOE_CONNECTING_TIMED_OUT:I = 0x70007

.field public static final PPPOE_IP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.PPPOE_IP_STATE_CHANGED"

.field public static final PPPOE_RESULT_STATUS_ALREADY_ONLINE:Ljava/lang/String; = "ALREADY_ONLINE"

.field public static final PPPOE_RESULT_STATUS_FAILURE:Ljava/lang/String; = "FAILURE"

.field public static final PPPOE_RESULT_STATUS_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final PPPOE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.PPPOE_STATE_CHANGED"

.field public static final PPPOE_STATE_CONNECTED:Ljava/lang/String; = "PPPOE_STATE_CONNECTED"

.field public static final PPPOE_STATE_CONNECTING:Ljava/lang/String; = "PPPOE_STATE_CONNECTING"

.field public static final PPPOE_STATE_DISCONNECTED:Ljava/lang/String; = "PPPOE_STATE_DISCONNECTED"

.field public static final PPPOE_STATE_DISCONNECTING:Ljava/lang/String; = "PPPOE_STATE_DISCONNECTING"

.field public static final PPPOE_UNSUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PppoeManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
