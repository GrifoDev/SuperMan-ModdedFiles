.class public final enum Ljava/lang/annotation/ElementType;
.super Ljava/lang/Enum;
.source "ElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/lang/annotation/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/lang/annotation/ElementType;

.field public static final enum ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum CONSTRUCTOR:Ljava/lang/annotation/ElementType;

.field public static final enum FIELD:Ljava/lang/annotation/ElementType;

.field public static final enum LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

.field public static final enum METHOD:Ljava/lang/annotation/ElementType;

.field public static final enum PACKAGE:Ljava/lang/annotation/ElementType;

.field public static final enum PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum TYPE_USE:Ljava/lang/annotation/ElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "TYPE"

    invoke-direct {v0, v1, v3}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "FIELD"

    invoke-direct {v0, v1, v4}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "METHOD"

    invoke-direct {v0, v1, v5}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "PARAMETER"

    invoke-direct {v0, v1, v6}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "CONSTRUCTOR"

    invoke-direct {v0, v1, v7}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "LOCAL_VARIABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "ANNOTATION_TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "PACKAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "TYPE_PARAMETER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string/jumbo v1, "TYPE_USE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/annotation/ElementType;

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    aput-object v1, v0, v7

    sget-object v1, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;
    .locals 1

    const-class v0, Ljava/lang/annotation/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/ElementType;

    return-object v0
.end method

.method public static values()[Ljava/lang/annotation/ElementType;
    .locals 1

    sget-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    return-object v0
.end method
