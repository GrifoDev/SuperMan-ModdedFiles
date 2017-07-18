.class public Lcom/gsma/services/rcs/chat/ChatLog$Message$MimeType;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeType"
.end annotation


# static fields
.field public static final GEOLOC_MESSAGE:Ljava/lang/String; = "application/geoloc"

.field public static final GROUPCHAT_EVENT:Ljava/lang/String; = "rcs/groupchat-event"

.field public static final TEXT_MESSAGE:Ljava/lang/String; = "text/plain"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
