.class public final Landroid/provider/Telephony$MmsSms$PendingMessages;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$MmsSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingMessages"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DUE_TIME:Ljava/lang/String; = "due_time"

.field public static final ERROR_CODE:Ljava/lang/String; = "err_code"

.field public static final ERROR_TYPE:Ljava/lang/String; = "err_type"

.field public static final LAST_TRY:Ljava/lang/String; = "last_try"

.field public static final MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final MSG_TYPE:Ljava/lang/String; = "msg_type"

.field public static final PROTO_TYPE:Ljava/lang/String; = "proto_type"

.field public static final RETRY_INDEX:Ljava/lang/String; = "retry_index"

.field public static final SIM_SLOT:Ljava/lang/String; = "sim_slot2"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "pending_sub_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "pending"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
