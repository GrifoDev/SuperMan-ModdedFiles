.class public final enum Lcom/sec/ims/presence/Constants$InvitationResponse;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InvitationResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/presence/Constants$InvitationResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/presence/Constants$InvitationResponse;

.field public static final enum ACCEPT:Lcom/sec/ims/presence/Constants$InvitationResponse;

.field public static final enum BLOCK:Lcom/sec/ims/presence/Constants$InvitationResponse;

.field public static final enum IGNORE:Lcom/sec/ims/presence/Constants$InvitationResponse;

.field public static final enum REJECT:Lcom/sec/ims/presence/Constants$InvitationResponse;


# instance fields
.field private response:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/presence/Constants$InvitationResponse;

    const-string/jumbo v1, "BLOCK"

    const-string/jumbo v2, "block"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/presence/Constants$InvitationResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$InvitationResponse;->BLOCK:Lcom/sec/ims/presence/Constants$InvitationResponse;

    new-instance v0, Lcom/sec/ims/presence/Constants$InvitationResponse;

    const-string/jumbo v1, "REJECT"

    const-string/jumbo v2, "reject"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/presence/Constants$InvitationResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$InvitationResponse;->REJECT:Lcom/sec/ims/presence/Constants$InvitationResponse;

    new-instance v0, Lcom/sec/ims/presence/Constants$InvitationResponse;

    const-string/jumbo v1, "IGNORE"

    const-string/jumbo v2, "ignore"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/ims/presence/Constants$InvitationResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$InvitationResponse;->IGNORE:Lcom/sec/ims/presence/Constants$InvitationResponse;

    new-instance v0, Lcom/sec/ims/presence/Constants$InvitationResponse;

    const-string/jumbo v1, "ACCEPT"

    const-string/jumbo v2, "accept"

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/ims/presence/Constants$InvitationResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$InvitationResponse;->ACCEPT:Lcom/sec/ims/presence/Constants$InvitationResponse;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/ims/presence/Constants$InvitationResponse;

    sget-object v1, Lcom/sec/ims/presence/Constants$InvitationResponse;->BLOCK:Lcom/sec/ims/presence/Constants$InvitationResponse;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/presence/Constants$InvitationResponse;->REJECT:Lcom/sec/ims/presence/Constants$InvitationResponse;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/presence/Constants$InvitationResponse;->IGNORE:Lcom/sec/ims/presence/Constants$InvitationResponse;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/presence/Constants$InvitationResponse;->ACCEPT:Lcom/sec/ims/presence/Constants$InvitationResponse;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/ims/presence/Constants$InvitationResponse;->$VALUES:[Lcom/sec/ims/presence/Constants$InvitationResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/ims/presence/Constants$InvitationResponse;->response:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/presence/Constants$InvitationResponse;
    .locals 1

    const-class v0, Lcom/sec/ims/presence/Constants$InvitationResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/Constants$InvitationResponse;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/presence/Constants$InvitationResponse;
    .locals 1

    sget-object v0, Lcom/sec/ims/presence/Constants$InvitationResponse;->$VALUES:[Lcom/sec/ims/presence/Constants$InvitationResponse;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/Constants$InvitationResponse;->response:Ljava/lang/String;

    return-object v0
.end method
