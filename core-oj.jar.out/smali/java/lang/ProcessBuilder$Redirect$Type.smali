.class public final enum Ljava/lang/ProcessBuilder$Redirect$Type;
.super Ljava/lang/Enum;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder$Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/lang/ProcessBuilder$Redirect$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum READ:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string/jumbo v1, "PIPE"

    invoke-direct {v0, v1, v2}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string/jumbo v1, "INHERIT"

    invoke-direct {v0, v1, v3}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string/jumbo v1, "READ"

    invoke-direct {v0, v1, v4}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string/jumbo v1, "WRITE"

    invoke-direct {v0, v1, v5}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string/jumbo v1, "APPEND"

    invoke-direct {v0, v1, v6}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/ProcessBuilder$Redirect$Type;

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v1, v0, v6

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->$VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/ProcessBuilder$Redirect$Type;
    .locals 1

    const-class v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    return-object v0
.end method

.method public static values()[Ljava/lang/ProcessBuilder$Redirect$Type;
    .locals 1

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->$VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

    return-object v0
.end method
