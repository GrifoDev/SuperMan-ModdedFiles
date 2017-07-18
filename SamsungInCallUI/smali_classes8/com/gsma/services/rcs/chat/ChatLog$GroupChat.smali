.class public Lcom/gsma/services/rcs/chat/ChatLog$GroupChat;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupChat"
.end annotation


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final HISTORYLOG_MEMBER_ID:I = 0x0

.field public static final PARTICIPANTS:Ljava/lang/String; = "participants"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.chat/groupchat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$GroupChat;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParticipants(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    invoke-static {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Cannot read contact from provider"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    array-length v10, v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v5, v8, v9

    const-string v11, "="

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v11, v4

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    const/4 v11, 0x0

    aget-object v0, v4, v11

    sget-object v7, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    :try_start_0
    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v13

    array-length v13, v13

    rem-int/2addr v12, v13

    aget-object v7, v11, v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/gsma/services/rcs/contact/ContactUtil;->formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method
