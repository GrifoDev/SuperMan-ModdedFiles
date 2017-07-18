.class public Lcom/gsma/services/rcs/history/HistoryLog;
.super Ljava/lang/Object;
.source "HistoryLog.java"


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DISPOSITION:Ljava/lang/String; = "disposition"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXPIRED_DELIVERY:Ljava/lang/String; = "expired_delivery"

.field public static final FILEICON:Ljava/lang/String; = "fileicon"

.field public static final FILEICON_MIME_TYPE:Ljava/lang/String; = "fileicon_mime_type"

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final FILESIZE:Ljava/lang/String; = "filesize"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field public static final READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TIMESTAMP_DELIVERED:Ljava/lang/String; = "timestamp_delivered"

.field public static final TIMESTAMP_DISPLAYED:Ljava/lang/String; = "timestamp_displayed"

.field public static final TIMESTAMP_SENT:Ljava/lang/String; = "timestamp_sent"

.field public static final TRANSFERRED:Ljava/lang/String; = "transferred"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.history/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/history/HistoryLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
