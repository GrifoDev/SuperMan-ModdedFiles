.class public final enum Landroid/util/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/JsonToken;

.field public static final enum BEGIN_ARRAY:Landroid/util/JsonToken;

.field public static final enum BEGIN_OBJECT:Landroid/util/JsonToken;

.field public static final enum BOOLEAN:Landroid/util/JsonToken;

.field public static final enum END_ARRAY:Landroid/util/JsonToken;

.field public static final enum END_DOCUMENT:Landroid/util/JsonToken;

.field public static final enum END_OBJECT:Landroid/util/JsonToken;

.field public static final enum NAME:Landroid/util/JsonToken;

.field public static final enum NULL:Landroid/util/JsonToken;

.field public static final enum NUMBER:Landroid/util/JsonToken;

.field public static final enum STRING:Landroid/util/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "NAME"

    invoke-direct {v0, v1, v7}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    new-instance v0, Landroid/util/JsonToken;

    const-string/jumbo v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    aput-object v1, v0, v4

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/JsonToken;
    .locals 1

    const-class v0, Landroid/util/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/JsonToken;

    return-object v0
.end method

.method public static values()[Landroid/util/JsonToken;
    .locals 1

    sget-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    return-object v0
.end method
