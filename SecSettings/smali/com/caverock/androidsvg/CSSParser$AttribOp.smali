.class final enum Lcom/caverock/androidsvg/CSSParser$AttribOp;
.super Ljava/lang/Enum;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AttribOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/CSSParser$AttribOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final enum DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final enum EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final enum EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final enum INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string/jumbo v1, "EXISTS"

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string/jumbo v1, "EQUALS"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string/jumbo v1, "INCLUDES"

    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string/jumbo v1, "DASHMATCH"

    invoke-direct {v0, v1, v5}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/caverock/androidsvg/CSSParser$AttribOp;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v1, v0, v5

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$AttribOp;
    .locals 1

    const-class v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/CSSParser$AttribOp;
    .locals 1

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/CSSParser$AttribOp;

    return-object v0
.end method
