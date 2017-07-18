.class public Lcom/gsma/services/rcs/Intents$Chat;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chat"
.end annotation


# static fields
.field public static final ACTION_INITIATE_GROUP_CHAT:Ljava/lang/String; = "com.gsma.services.rcs.action.INITIATE_GROUP_CHAT"

.field public static final ACTION_INITIATE_ONE_TO_ONE_CHAT:Ljava/lang/String; = "com.gsma.services.rcs.action.INITIATE_ONE_TO_ONE_CHAT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SEND_ONE_TO_ONE_CHAT_MESSAGE:Ljava/lang/String; = "com.gsma.services.rcs.action.SEND_ONE_TO_ONE_CHAT_MESSAGE"

.field public static final ACTION_VIEW_GROUP_CHAT:Ljava/lang/String; = "com.gsma.services.rcs.action.VIEW_GROUP_CHAT"

.field public static final ACTION_VIEW_ONE_TO_ONE_CHAT:Ljava/lang/String; = "com.gsma.services.rcs.action.VIEW_ONE_TO_ONE_CHAT"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
