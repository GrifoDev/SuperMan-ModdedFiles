.class public final enum Lcom/android/server/SecExternalDisplayService$EDSBlank;
.super Ljava/lang/Enum;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDSBlank"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/SecExternalDisplayService$EDSBlank;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayService$EDSBlank;

.field public static final enum EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

.field public static final enum EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;

    const-string/jumbo v1, "EDS_POWER_MODE_OFF"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/SecExternalDisplayService$EDSBlank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;

    const-string/jumbo v1, "EDS_POWER_MODE_ON"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/SecExternalDisplayService$EDSBlank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    new-array v0, v4, [Lcom/android/server/SecExternalDisplayService$EDSBlank;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSBlank;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->value:I

    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSBlank;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->values()[Lcom/android/server/SecExternalDisplayService$EDSBlank;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_1

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayService$EDSBlank;
    .locals 1

    const-class v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayService$EDSBlank;
    .locals 1

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSBlank;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->value:I

    return v0
.end method
