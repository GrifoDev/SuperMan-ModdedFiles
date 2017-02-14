.class final enum Landroid/net/apf/ApfGenerator$ExtendedOpcodes;
.super Ljava/lang/Enum;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExtendedOpcodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/apf/ApfGenerator$ExtendedOpcodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    const-string/jumbo v1, "LDM"

    invoke-direct {v0, v1, v4, v4}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    const-string/jumbo v1, "STM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    const-string/jumbo v1, "NOT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v6, v2}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    const-string/jumbo v1, "NEG"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v7, v2}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    const-string/jumbo v1, "SWAP"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v8, v2}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    const-string/jumbo v1, "MOVE"

    const/4 v2, 0x5

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    aput-object v1, v0, v7

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    aput-object v1, v0, v8

    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->$VALUES:[Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/apf/ApfGenerator$ExtendedOpcodes;
    .locals 1

    const-class v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    return-object v0
.end method

.method public static values()[Landroid/net/apf/ApfGenerator$ExtendedOpcodes;
    .locals 1

    sget-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->$VALUES:[Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    return-object v0
.end method
