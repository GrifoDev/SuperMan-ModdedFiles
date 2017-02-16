.class public Ljava/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final CURRENCY:Ljava/text/NumberFormat$Field;

.field public static final DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

.field public static final FRACTION:Ljava/text/NumberFormat$Field;

.field public static final GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

.field public static final INTEGER:Ljava/text/NumberFormat$Field;

.field public static final PERCENT:Ljava/text/NumberFormat$Field;

.field public static final PERMILLE:Ljava/text/NumberFormat$Field;

.field public static final SIGN:Ljava/text/NumberFormat$Field;

.field private static final instanceMap:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x6802a038193ff37aL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1028
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    .line 1065
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "integer"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    .line 1070
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "fraction"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    .line 1075
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "exponent"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    .line 1081
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "decimal separator"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    .line 1080
    sput-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    .line 1086
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "sign"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    .line 1092
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "grouping separator"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    .line 1091
    sput-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    .line 1097
    new-instance v0, Ljava/text/NumberFormat$Field;

    .line 1098
    const-string/jumbo v1, "exponent symbol"

    .line 1097
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    .line 1103
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "percent"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    .line 1108
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "per mille"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    .line 1113
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "currency"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    .line 1118
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string/jumbo v1, "exponent sign"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    .line 1022
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_0

    .line 1039
    sget-object v0, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    :cond_0
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 1050
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/text/NumberFormat$Field;

    if-eq v1, v2, :cond_0

    .line 1051
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1054
    :cond_0
    sget-object v1, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1055
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1056
    return-object v0

    .line 1058
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
