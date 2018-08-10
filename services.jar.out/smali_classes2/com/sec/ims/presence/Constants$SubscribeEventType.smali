.class public final enum Lcom/sec/ims/presence/Constants$SubscribeEventType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscribeEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/presence/Constants$SubscribeEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/presence/Constants$SubscribeEventType;

.field public static final enum PRESENCE_INFO:Lcom/sec/ims/presence/Constants$SubscribeEventType;

.field public static final enum WATCHER_INFO:Lcom/sec/ims/presence/Constants$SubscribeEventType;


# instance fields
.field private eventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/presence/Constants$SubscribeEventType;

    const-string/jumbo v1, "WATCHER_INFO"

    const-string/jumbo v2, "watcher_info"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/presence/Constants$SubscribeEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$SubscribeEventType;->WATCHER_INFO:Lcom/sec/ims/presence/Constants$SubscribeEventType;

    new-instance v0, Lcom/sec/ims/presence/Constants$SubscribeEventType;

    const-string/jumbo v1, "PRESENCE_INFO"

    const-string/jumbo v2, "presence_info"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/presence/Constants$SubscribeEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$SubscribeEventType;->PRESENCE_INFO:Lcom/sec/ims/presence/Constants$SubscribeEventType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/ims/presence/Constants$SubscribeEventType;

    sget-object v1, Lcom/sec/ims/presence/Constants$SubscribeEventType;->WATCHER_INFO:Lcom/sec/ims/presence/Constants$SubscribeEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/presence/Constants$SubscribeEventType;->PRESENCE_INFO:Lcom/sec/ims/presence/Constants$SubscribeEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/ims/presence/Constants$SubscribeEventType;->$VALUES:[Lcom/sec/ims/presence/Constants$SubscribeEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/ims/presence/Constants$SubscribeEventType;->eventType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/presence/Constants$SubscribeEventType;
    .locals 1

    const-class v0, Lcom/sec/ims/presence/Constants$SubscribeEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/Constants$SubscribeEventType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/presence/Constants$SubscribeEventType;
    .locals 1

    sget-object v0, Lcom/sec/ims/presence/Constants$SubscribeEventType;->$VALUES:[Lcom/sec/ims/presence/Constants$SubscribeEventType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/Constants$SubscribeEventType;->eventType:Ljava/lang/String;

    return-object v0
.end method
