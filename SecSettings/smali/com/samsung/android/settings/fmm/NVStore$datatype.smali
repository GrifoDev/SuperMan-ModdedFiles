.class public final enum Lcom/samsung/android/settings/fmm/NVStore$datatype;
.super Ljava/lang/Enum;
.source "NVStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/fmm/NVStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "datatype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/fmm/NVStore$datatype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/fmm/NVStore$datatype;

.field public static final enum All:Lcom/samsung/android/settings/fmm/NVStore$datatype;

.field public static final enum ENABLE_PHLOCK_FIRST:Lcom/samsung/android/settings/fmm/NVStore$datatype;

.field public static final enum PHLOCK_STATE:Lcom/samsung/android/settings/fmm/NVStore$datatype;

.field public static final enum PHPWD:Lcom/samsung/android/settings/fmm/NVStore$datatype;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;

    const-string/jumbo v1, "All"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/fmm/NVStore$datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;->All:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    new-instance v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;

    const-string/jumbo v1, "PHPWD"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/fmm/NVStore$datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHPWD:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    new-instance v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;

    const-string/jumbo v1, "PHLOCK_STATE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/fmm/NVStore$datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHLOCK_STATE:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    new-instance v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;

    const-string/jumbo v1, "ENABLE_PHLOCK_FIRST"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/fmm/NVStore$datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;->ENABLE_PHLOCK_FIRST:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/settings/fmm/NVStore$datatype;

    sget-object v1, Lcom/samsung/android/settings/fmm/NVStore$datatype;->All:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHPWD:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHLOCK_STATE:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/settings/fmm/NVStore$datatype;->ENABLE_PHLOCK_FIRST:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;->$VALUES:[Lcom/samsung/android/settings/fmm/NVStore$datatype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/fmm/NVStore$datatype;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/fmm/NVStore$datatype;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/fmm/NVStore$datatype;->$VALUES:[Lcom/samsung/android/settings/fmm/NVStore$datatype;

    return-object v0
.end method
