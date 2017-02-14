.class Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodingInfo"
.end annotation


# static fields
.field public static final EBCDIC:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UCS_4_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UCS_4_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UCS_4_UNUSUAL_BYTE_ORDER:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UTF_16_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UTF_16_BIG_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UTF_16_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UTF_16_LITTLE_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

.field public static final UTF_8_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;


# instance fields
.field public final encoding:Ljava/lang/String;

.field public final hasBOM:Z

.field public final isBigEndian:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, v1, v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, v1, v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "UTF-16"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "UTF-16"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_BIG_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "UTF-16"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "UTF-16"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_LITTLE_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "ISO-10646-UCS-4"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "ISO-10646-UCS-4"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "ISO-10646-UCS-4"

    invoke-direct {v0, v1, v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_UNUSUAL_BYTE_ORDER:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    const-string/jumbo v1, "CP037"

    invoke-direct {v0, v1, v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->EBCDIC:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->encoding:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->isBigEndian:Ljava/lang/Boolean;

    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->hasBOM:Z

    return-void
.end method
