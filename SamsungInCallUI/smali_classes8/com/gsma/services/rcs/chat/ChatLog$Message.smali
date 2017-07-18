.class public Lcom/gsma/services/rcs/chat/ChatLog$Message;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent;,
        Lcom/gsma/services/rcs/chat/ChatLog$Message$Content;,
        Lcom/gsma/services/rcs/chat/ChatLog$Message$MimeType;
    }
.end annotation


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXPIRED_DELIVERY:Ljava/lang/String; = "expired_delivery"

.field public static final HISTORYLOG_MEMBER_ID:I = 0x1

.field public static final MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TIMESTAMP_DELIVERED:Ljava/lang/String; = "timestamp_delivered"

.field public static final TIMESTAMP_DISPLAYED:Ljava/lang/String; = "timestamp_displayed"

.field public static final TIMESTAMP_SENT:Ljava/lang/String; = "timestamp_sent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.chat/chatmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeoloc(Ljava/lang/String;)Lcom/gsma/services/rcs/Geoloc;
    .locals 11

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v0, 0x2

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v0, 0x3

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    array-length v0, v9

    const/4 v10, 0x5

    if-eq v0, v10, :cond_1

    const-string v1, ""

    :goto_1
    new-instance v0, Lcom/gsma/services/rcs/Geoloc;

    invoke-direct/range {v0 .. v8}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;DDJF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    aget-object v1, v9, v0

    goto :goto_1
.end method
