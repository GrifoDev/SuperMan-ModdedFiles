.class public final enum Lcom/sec/ims/presence/Constants$PresenceUserState;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceUserState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/presence/Constants$PresenceUserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/presence/Constants$PresenceUserState;

.field public static final enum BLOCKED:Lcom/sec/ims/presence/Constants$PresenceUserState;

.field public static final enum EXENDED:Lcom/sec/ims/presence/Constants$PresenceUserState;

.field public static final enum INVALID:Lcom/sec/ims/presence/Constants$PresenceUserState;

.field public static final enum INVITED:Lcom/sec/ims/presence/Constants$PresenceUserState;

.field public static final enum PENDING:Lcom/sec/ims/presence/Constants$PresenceUserState;

.field public static final enum SHARED:Lcom/sec/ims/presence/Constants$PresenceUserState;

.field public static final enum UNSHARED:Lcom/sec/ims/presence/Constants$PresenceUserState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    const-string/jumbo v1, "INVALID"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/presence/Constants$PresenceUserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->INVALID:Lcom/sec/ims/presence/Constants$PresenceUserState;

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    const-string/jumbo v1, "UNSHARED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/presence/Constants$PresenceUserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->UNSHARED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    const-string/jumbo v1, "BLOCKED"

    invoke-direct {v0, v1, v5, v3}, Lcom/sec/ims/presence/Constants$PresenceUserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->BLOCKED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    const-string/jumbo v1, "INVITED"

    invoke-direct {v0, v1, v6, v4}, Lcom/sec/ims/presence/Constants$PresenceUserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->INVITED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v7, v5}, Lcom/sec/ims/presence/Constants$PresenceUserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->PENDING:Lcom/sec/ims/presence/Constants$PresenceUserState;

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    const-string/jumbo v1, "SHARED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lcom/sec/ims/presence/Constants$PresenceUserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->SHARED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    const-string/jumbo v1, "EXENDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/ims/presence/Constants$PresenceUserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->EXENDED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/ims/presence/Constants$PresenceUserState;

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceUserState;->INVALID:Lcom/sec/ims/presence/Constants$PresenceUserState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceUserState;->UNSHARED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceUserState;->BLOCKED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceUserState;->INVITED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceUserState;->PENDING:Lcom/sec/ims/presence/Constants$PresenceUserState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceUserState;->SHARED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceUserState;->EXENDED:Lcom/sec/ims/presence/Constants$PresenceUserState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->$VALUES:[Lcom/sec/ims/presence/Constants$PresenceUserState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/ims/presence/Constants$PresenceUserState;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/presence/Constants$PresenceUserState;
    .locals 1

    const-class v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/Constants$PresenceUserState;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/presence/Constants$PresenceUserState;
    .locals 1

    sget-object v0, Lcom/sec/ims/presence/Constants$PresenceUserState;->$VALUES:[Lcom/sec/ims/presence/Constants$PresenceUserState;

    return-object v0
.end method


# virtual methods
.method public toInteger()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/presence/Constants$PresenceUserState;->mValue:I

    return v0
.end method
