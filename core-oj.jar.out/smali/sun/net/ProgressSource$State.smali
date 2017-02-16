.class public final enum Lsun/net/ProgressSource$State;
.super Ljava/lang/Enum;
.source "ProgressSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ProgressSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/ProgressSource$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/ProgressSource$State;

.field public static final enum CONNECTED:Lsun/net/ProgressSource$State;

.field public static final enum DELETE:Lsun/net/ProgressSource$State;

.field public static final enum NEW:Lsun/net/ProgressSource$State;

.field public static final enum UPDATE:Lsun/net/ProgressSource$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lsun/net/ProgressSource$State;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v2}, Lsun/net/ProgressSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ProgressSource$State;->NEW:Lsun/net/ProgressSource$State;

    new-instance v0, Lsun/net/ProgressSource$State;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lsun/net/ProgressSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    new-instance v0, Lsun/net/ProgressSource$State;

    const-string/jumbo v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lsun/net/ProgressSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ProgressSource$State;->UPDATE:Lsun/net/ProgressSource$State;

    new-instance v0, Lsun/net/ProgressSource$State;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lsun/net/ProgressSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ProgressSource$State;->DELETE:Lsun/net/ProgressSource$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lsun/net/ProgressSource$State;

    sget-object v1, Lsun/net/ProgressSource$State;->NEW:Lsun/net/ProgressSource$State;

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ProgressSource$State;->CONNECTED:Lsun/net/ProgressSource$State;

    aput-object v1, v0, v3

    sget-object v1, Lsun/net/ProgressSource$State;->UPDATE:Lsun/net/ProgressSource$State;

    aput-object v1, v0, v4

    sget-object v1, Lsun/net/ProgressSource$State;->DELETE:Lsun/net/ProgressSource$State;

    aput-object v1, v0, v5

    sput-object v0, Lsun/net/ProgressSource$State;->$VALUES:[Lsun/net/ProgressSource$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/ProgressSource$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lsun/net/ProgressSource$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ProgressSource$State;

    return-object v0
.end method

.method public static values()[Lsun/net/ProgressSource$State;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lsun/net/ProgressSource$State;->$VALUES:[Lsun/net/ProgressSource$State;

    return-object v0
.end method
