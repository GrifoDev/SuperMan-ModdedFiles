.class public final enum Lcom/sec/ims/presence/Constants$NextOperationIdentifier;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NextOperationIdentifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/presence/Constants$NextOperationIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

.field public static final enum NONE:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

.field public static final enum NORMAL_SUBSCRIBE:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

.field public static final enum REMOVE_FROM_RCS_LIST:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

.field public static final enum SUBSCRIBE_ANONYMOUS_FETCH:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;


# instance fields
.field private identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->NONE:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    new-instance v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    const-string/jumbo v1, "NORMAL_SUBSCRIBE"

    const-string/jumbo v2, "normal_subscribe"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->NORMAL_SUBSCRIBE:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    new-instance v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    const-string/jumbo v1, "SUBSCRIBE_ANONYMOUS_FETCH"

    const-string/jumbo v2, "subscribe_anonymous_fetch"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->SUBSCRIBE_ANONYMOUS_FETCH:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    new-instance v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    const-string/jumbo v1, "REMOVE_FROM_RCS_LIST"

    const-string/jumbo v2, "remove_from_rcs_list"

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->REMOVE_FROM_RCS_LIST:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    sget-object v1, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->NONE:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->NORMAL_SUBSCRIBE:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->SUBSCRIBE_ANONYMOUS_FETCH:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->REMOVE_FROM_RCS_LIST:Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->$VALUES:[Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/presence/Constants$NextOperationIdentifier;
    .locals 1

    const-class v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/presence/Constants$NextOperationIdentifier;
    .locals 1

    sget-object v0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->$VALUES:[Lcom/sec/ims/presence/Constants$NextOperationIdentifier;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/Constants$NextOperationIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method
