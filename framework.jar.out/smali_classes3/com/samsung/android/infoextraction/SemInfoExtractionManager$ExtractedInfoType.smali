.class public final enum Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;
.super Ljava/lang/Enum;
.source "SemInfoExtractionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtractedInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum DATE_TIME:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum EMAIL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum EVENT:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum HOTKEYWORD:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum ORIGINAL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum PLACE:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum TELNUM:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum UNKNOWN:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

.field public static final enum URL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->UNKNOWN:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "DATE_TIME"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->DATE_TIME:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "EMAIL"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->EMAIL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "EVENT"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->EVENT:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "HOTKEYWORD"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->HOTKEYWORD:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "ORIGINAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->ORIGINAL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "PLACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->PLACE:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "TELNUM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->TELNUM:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const-string/jumbo v1, "URL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->URL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->UNKNOWN:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->DATE_TIME:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->EMAIL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->EVENT:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->HOTKEYWORD:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->ORIGINAL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->PLACE:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->TELNUM:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->URL:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->$VALUES:[Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;
    .locals 1

    const-class v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;
    .locals 1

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;->$VALUES:[Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;

    return-object v0
.end method
