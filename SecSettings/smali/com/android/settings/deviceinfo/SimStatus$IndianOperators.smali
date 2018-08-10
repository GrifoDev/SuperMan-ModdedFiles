.class public final enum Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;
.super Ljava/lang/Enum;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndianOperators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

.field public static final enum AIRTEL:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

.field public static final enum OTHERS:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

.field public static final enum RELIANCE:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    const-string/jumbo v1, "AIRTEL"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;->AIRTEL:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    const-string/jumbo v1, "RELIANCE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;->RELIANCE:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    const-string/jumbo v1, "OTHERS"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;->OTHERS:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    sget-object v1, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;->AIRTEL:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;->RELIANCE:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;->OTHERS:Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;->$VALUES:[Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;
    .locals 1

    const-class v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;
    .locals 1

    sget-object v0, Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;->$VALUES:[Lcom/android/settings/deviceinfo/SimStatus$IndianOperators;

    return-object v0
.end method
